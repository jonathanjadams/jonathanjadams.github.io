% solve_aiyagari_lq.m
%
% Aggregate linear-quadratic transition solver for the Aiyagari
% approximation discussed in discussion-slides.qmd. The exact household
% budget drift is R(t)k + W(t)exp(z) - c with z as log productivity; the
% local LQ map linearizes that term around z = 0, so labor income loads as
% Wbar * z and the aggregate K loading reflects both the rental-rate and
% wage derivatives. The current version varies the state-side coupling entry
% Theta_{Kk} while holding Q_{kk} fixed. The script
% follows the Alvarez et al. recursion:
%   1. solve the algebraic Riccati equation for beta_2
%   2. solve the stable manifold for the joint (beta_1, X) block
%   3. recover beta_0 from its discounted scalar recursion
%
% The current implementation solves the aggregate transition and, because
% the closed-loop household law is linear with constant diffusion,
% recovers the Gaussian KFE through its mean and covariance. It does not
% solve the KFE on a grid.

clearvars;
clc;

params = default_aiyagari_demo_params();
results = run_aiyagari_lq(params);
results.comparison = build_theta_Kk_comparison(results, params);

if params.make_plots
    results.plot_files = plot_aiyagari_results(results);
end

assignin('base', 'aiyagari_results', results);
disp_results_summary(results);


function params = default_aiyagari_demo_params()
script_dir = fileparts(mfilename('fullpath'));
if isempty(script_dir)
    script_dir = pwd;
end

params.rho = 0.04;
params.phi = 0.10;
params.sigma = 0.10;

params.gamma = 2.00;
params.Q_kk = 0.00;
params.Theta_Kk = -0.20;

params.productivity = 1.00;
params.capital_share = 0.36;

% Steady-state objects from the approximation.
params.kbar = 1.00;
params.Kbar = 1.00;
params.cbar = params.capital_share * params.productivity * params.Kbar^(params.capital_share - 1) * params.kbar ...
    + (1 - params.capital_share) * params.productivity * params.Kbar^params.capital_share;

% Shift the stationary distribution to the right by raising every
% household's capital by 10 percent. In log-capital coordinates this is a
% shift by Delta = log(1.10), which must match X(0).
params.initial_capital_shift_fraction = 0.10;
params.initial_logk_shift = log(1 + params.initial_capital_shift_fraction);
params.X0_scalar = params.initial_logk_shift;

params.T = 40.0;
params.num_steps = 800;

% With z as log productivity, exp(z) = 1 + z + o(z) near z = 0, so the
% linearized labor-income term remains Wbar * z. The generic Aiyagari map
% uses Q_kk for own-capital curvature and Theta_Kk for the mixed
% aggregate-household capital term.
params.Q = diag([params.Q_kk, 0]);
params.Theta = [params.Theta_Kk; 0];
params.theta_Kk_comparison_values = [2.0, 0.0, params.Theta_Kk];
params.distribution_theta_values = [];

params.make_plots = true;
params.plot_visible = false;
params.plot_output_dir = script_dir;
params.k_plot_file = 'aiyagari_K_path.png';
params.k_path_animation_file = 'aiyagari_K_path_trace.gif';
params.summary_plot_file = 'aiyagari_transition_summary.png';
params.distribution_animation_file = 'aiyagari_distribution_comparison_levels.gif';
params.distribution_animation_still_file = 'aiyagari_distribution_comparison_levels_start.png';
params.distribution_heatmap_animation_file = 'aiyagari_distribution_heatmap_comparison_logs.gif';
params.plot_resolution = 200;
params.plot_time_max = 15.0;
params.k_path_animation_frame_dt = 0.15;
params.k_path_animation_frame_delay = 0.08;
params.k_path_animation_final_delay = 1.20;
params.distribution_time_max = 20.0;
params.distribution_grid_size = 400;
params.distribution_z_grid_size = 280;
params.distribution_frame_dt = 0.10;
params.distribution_frame_delay = 0.12;
params.distribution_std_band = 4.5;

params.stable_tolerance = 1.0e-8;
params.residual_tolerance = 1.0e-8;
end


function results = run_aiyagari_lq(params)
coeffs = build_aiyagari_lq_coefficients(params);
beta2_block = solve_beta2_block(coeffs, params);
joint_block = build_joint_transition_block(coeffs, beta2_block.beta2, params);
transition = solve_transition_paths(joint_block, coeffs, params);
beta0_block = recover_beta0_path(coeffs, beta2_block.beta2, transition, params);
diagnostics = collect_diagnostics(coeffs, beta2_block, joint_block, transition, beta0_block, params);

results = struct();
results.params = params;
results.coeffs = coeffs;
results.beta2 = beta2_block;
results.joint_block = joint_block;
results.transition = transition;
results.beta0 = beta0_block;
results.diagnostics = diagnostics;
end


function comparison = build_theta_Kk_comparison(base_results, params)
if ~isfield(params, 'theta_Kk_comparison_values') || isempty(params.theta_Kk_comparison_values)
    theta_values = params.Theta_Kk;
else
    theta_values = unique(params.theta_Kk_comparison_values, 'stable');
end

comparison = struct();
comparison.scenarios = repmat(struct(), 1, numel(theta_values));

for idx = 1:numel(theta_values)
    theta_value = theta_values(idx);

    if abs(theta_value - params.Theta_Kk) < 1.0e-12
        scenario_results = base_results;
    else
        scenario_params = params;
        scenario_params.Theta_Kk = theta_value;
        scenario_params.Q = diag([scenario_params.Q_kk, 0]);
        scenario_params.Theta = [theta_value; 0];
        scenario_results = run_aiyagari_lq(scenario_params);
    end

    scenario_params = scenario_results.params;
    distribution = build_linear_gaussian_distribution(scenario_results, scenario_params);

    comparison.scenarios(idx).Theta_Kk = theta_value;
    comparison.scenarios(idx).time = scenario_results.transition.time;
    comparison.scenarios(idx).X_path = scenario_results.transition.X(1, :);
    comparison.scenarios(idx).K_path = scenario_results.params.Kbar * exp(scenario_results.transition.X(1, :));
    comparison.scenarios(idx).beta1_path = scenario_results.transition.beta1;
    comparison.scenarios(idx).beta0_path = scenario_results.beta0.path;
    comparison.scenarios(idx).integrability_margin = scenario_results.diagnostics.integrability_margin;
    comparison.scenarios(idx).aggregate_eigenvalues = scenario_results.transition.aggregate_eigenvalues;
    comparison.scenarios(idx).distribution = distribution;
end

if numel(comparison.scenarios) >= 2
    reference_x_path = comparison.scenarios(1).X_path(:);
    reference_k_path = comparison.scenarios(1).K_path(:);
    max_x_diff = 0;
    max_k_diff = 0;
    for idx = 2:numel(comparison.scenarios)
        current_x_path = comparison.scenarios(idx).X_path(:);
        current_k_path = comparison.scenarios(idx).K_path(:);
        common_x_length = min(numel(reference_x_path), numel(current_x_path));
        common_k_length = min(numel(reference_k_path), numel(current_k_path));
        max_x_diff = max(max_x_diff, max(abs(reference_x_path(1:common_x_length) - current_x_path(1:common_x_length))));
        max_k_diff = max(max_k_diff, max(abs(reference_k_path(1:common_k_length) - current_k_path(1:common_k_length))));
    end
    comparison.max_x_path_diff = max_x_diff;
    comparison.max_k_path_diff = max_k_diff;
else
    comparison.max_x_path_diff = 0;
    comparison.max_k_path_diff = 0;
end
end


function distribution = build_linear_gaussian_distribution(results, params)
state_drift = results.coeffs.R * results.beta2.beta2 - results.coeffs.A;
stationary_mean = zeros(results.coeffs.n, 1);
stationary_covariance = solve_stationary_covariance(state_drift, results.coeffs.Sigma, params.stable_tolerance);

shift_logk = infer_initial_logk_shift(params);
initial_mean = stationary_mean;
initial_mean(1) = shift_logk;

if abs(results.coeffs.X0 - initial_mean(1)) > 1.0e-12
    error('Initial aggregate condition X0 must match the shifted stationary mean in hat{k}.');
end

time = results.transition.time;
mean_path = zeros(results.coeffs.n, numel(time));
mean_path(1, :) = results.transition.X(1, :);

khat_variance = stationary_covariance(1, 1);
if khat_variance <= 0
    error('Stationary variance of hat{k} must be strictly positive.');
end

z_variance = stationary_covariance(2, 2);
if z_variance <= 0
    error('Stationary variance of z must be strictly positive.');
end

khat_std = sqrt(khat_variance);
khat_grid = linspace( ...
    min(mean_path(1, :)) - params.distribution_std_band * khat_std, ...
    max(mean_path(1, :)) + params.distribution_std_band * khat_std, ...
    params.distribution_grid_size);
z_std = sqrt(z_variance);
z_grid = linspace( ...
    stationary_mean(2) - params.distribution_std_band * z_std, ...
    stationary_mean(2) + params.distribution_std_band * z_std, ...
    params.distribution_z_grid_size);

khat_density = zeros(numel(khat_grid), numel(time));
for idx = 1:numel(time)
    khat_density(:, idx) = normal_pdf(khat_grid(:), mean_path(1, idx), khat_variance);
end

k_grid = params.kbar * exp(khat_grid(:));
k_density = zeros(numel(k_grid), numel(time));
for idx = 1:numel(time)
    k_density(:, idx) = scaled_lognormal_pdf(k_grid, params.kbar, mean_path(1, idx), khat_variance);
end

ez_grid = exp(z_grid(:));
stationary_joint_level_density = bivariate_lognormal_pdf( ...
    k_grid, ez_grid, params.kbar, stationary_mean, stationary_covariance);

distribution = struct();
distribution.state_drift = state_drift;
distribution.stationary_mean = stationary_mean;
distribution.stationary_covariance = stationary_covariance;
distribution.stationary_covariance_residual = norm( ...
    state_drift * stationary_covariance + stationary_covariance * state_drift' + results.coeffs.Sigma, 'fro');
distribution.initial_mean = initial_mean;
distribution.initial_capital_shift_fraction = params.initial_capital_shift_fraction;
distribution.initial_logk_shift = shift_logk;
distribution.time = time;
distribution.mean_path = mean_path;
distribution.khat_grid = khat_grid(:);
distribution.khat_variance = khat_variance;
distribution.khat_std = khat_std;
distribution.khat_density = khat_density;
distribution.stationary_khat_density = normal_pdf(khat_grid(:), stationary_mean(1), khat_variance);
distribution.k_scale = params.kbar;
distribution.k_grid = k_grid;
distribution.k_density = k_density;
distribution.stationary_k_density = scaled_lognormal_pdf(k_grid, params.kbar, stationary_mean(1), khat_variance);
distribution.z_grid = z_grid(:);
distribution.z_variance = z_variance;
distribution.z_std = z_std;
distribution.ez_grid = ez_grid;
distribution.stationary_level_point = [params.kbar * exp(stationary_mean(1)); exp(stationary_mean(2))];
distribution.transformed_center_path = [params.kbar * exp(mean_path(1, :)); exp(mean_path(2, :))];
distribution.joint_density_peak = gaussian_density_peak(stationary_covariance);
distribution.joint_level_density_peak = max(stationary_joint_level_density(:));
distribution.mean_consistency_error = max(abs(mean_path(1, :) - results.transition.X(1, :)));
end


function shift_logk = infer_initial_logk_shift(params)
if isfield(params, 'initial_capital_shift_fraction') && ~isempty(params.initial_capital_shift_fraction)
    if params.initial_capital_shift_fraction <= -1
        error('The initial capital shift fraction must be greater than -1.');
    end
    shift_logk = log(1 + params.initial_capital_shift_fraction);
    return;
end

if isfield(params, 'initial_logk_shift') && ~isempty(params.initial_logk_shift)
    shift_logk = params.initial_logk_shift;
    return;
end

if isfield(params, 'X0_scalar') && ~isempty(params.X0_scalar)
    shift_logk = params.X0_scalar;
    return;
end

error('No initial distribution shift was provided.');
end


function stationary_covariance = solve_stationary_covariance(state_drift, sigma_matrix, tolerance)
if max(real(eig(state_drift))) >= -tolerance
    error('Closed-loop state drift is not stable enough to admit a stationary covariance.');
end

if exist('lyap', 'file') == 2
    stationary_covariance = lyap(state_drift, sigma_matrix);
else
    n = size(state_drift, 1);
    kron_system = kron(eye(n), state_drift) + kron(state_drift, eye(n));
    stationary_covariance = reshape(-kron_system \ sigma_matrix(:), n, n);
end

stationary_covariance = symmetrize(real(stationary_covariance));
end


function density = normal_pdf(grid, mean_value, variance_value)
density = exp(-0.5 * (grid - mean_value).^2 / variance_value) / sqrt(2 * pi * variance_value);
end


function density = scaled_lognormal_pdf(level_grid, level_scale, log_mean, log_variance)
density = normal_pdf(log(level_grid / level_scale), log_mean, log_variance) ./ level_grid;
end


function density = bivariate_normal_pdf(x_grid, z_grid, mean_vector, covariance_matrix)
covariance_matrix = symmetrize(covariance_matrix);

try
    chol_factor = chol(covariance_matrix, 'lower');
catch chol_exception
    error('Stationary covariance is not positive definite enough for the heatmap density: %s', chol_exception.message);
end

[x_mesh, z_mesh] = meshgrid(x_grid(:)', z_grid(:)');
centered = [x_mesh(:) - mean_vector(1), z_mesh(:) - mean_vector(2)];
scaled = centered / chol_factor';
quadratic_form = sum(scaled .^ 2, 2);
normalizer = 2 * pi * prod(diag(chol_factor));

density = reshape(exp(-0.5 * quadratic_form) / normalizer, numel(z_grid), numel(x_grid));
end


function density = bivariate_lognormal_pdf(k_grid, ez_grid, k_scale, mean_vector, covariance_matrix)
base_density = bivariate_normal_pdf(log(k_grid(:) / k_scale), log(ez_grid(:)), mean_vector, covariance_matrix);
[k_mesh, ez_mesh] = meshgrid(k_grid(:)', ez_grid(:)');
density = base_density ./ (k_mesh .* ez_mesh);
end


function peak_value = gaussian_density_peak(covariance_matrix)
covariance_matrix = symmetrize(covariance_matrix);

try
    chol_factor = chol(covariance_matrix, 'lower');
catch chol_exception
    error('Stationary covariance is not positive definite enough to evaluate the Gaussian peak: %s', chol_exception.message);
end

peak_value = 1 / (2 * pi * prod(diag(chol_factor)));
end


function coeffs = build_aiyagari_lq_coefficients(params)
n = 2;

if params.kbar <= 0 || params.Kbar <= 0
    error('Steady-state capital levels must be strictly positive.');
end

Rbar = params.capital_share * params.productivity * params.Kbar^(params.capital_share - 1);
Wbar = (1 - params.capital_share) * params.productivity * params.Kbar^params.capital_share;
RKbar = params.capital_share * (params.capital_share - 1) * params.productivity * params.Kbar^(params.capital_share - 2);
WKbar = params.capital_share * (1 - params.capital_share) * params.productivity * params.Kbar^(params.capital_share - 1);

coeffs = struct();
coeffs.n = n;
coeffs.control_dim = 1;

coeffs.Rbar = Rbar;
coeffs.Wbar = Wbar;
coeffs.RKbar = RKbar;
coeffs.WKbar = WKbar;
coeffs.Theta_Kk = params.Theta_Kk;

coeffs.B = [1; 0];
coeffs.A = [-Rbar, -Wbar / params.kbar; 0, params.phi];
coeffs.G = [-(params.Kbar * RKbar + params.Kbar * WKbar / params.kbar); 0];
coeffs.Sigma = diag([0, params.sigma^2]);

coeffs.Q = normalize_q_matrix(params.Q, n);
coeffs.Theta = normalize_theta_matrix(params.Theta, n);

coeffs.Gamma = params.gamma * params.kbar^2 * params.cbar^(-1 - params.gamma);
coeffs.R = coeffs.B * (1 / coeffs.Gamma) * coeffs.B';
coeffs.M_C = zeros(n, n);

coeffs.aggregate_dim = 1;
coeffs.aggregate_loading = [1; 0];
coeffs.X0 = params.X0_scalar;
end


function q_matrix = normalize_q_matrix(raw_q, n)
if isempty(raw_q)
    q_matrix = zeros(n, n);
    return;
end

if isscalar(raw_q)
    q_matrix = raw_q * eye(n);
    return;
end

if isvector(raw_q)
    if numel(raw_q) ~= n
        error('Vector Q input must have length %d.', n);
    end
    q_matrix = diag(raw_q(:));
    return;
end

if ~isequal(size(raw_q), [n, n])
    error('Q must be scalar, length-%d vector, or %dx%d matrix.', n, n, n);
end

q_matrix = 0.5 * (raw_q + raw_q');
end


function theta_matrix = normalize_theta_matrix(raw_theta, n)
if isempty(raw_theta)
    theta_matrix = zeros(n, 1);
    return;
end

if isscalar(raw_theta)
    theta_matrix = [raw_theta; zeros(n - 1, 1)];
    return;
end

if isvector(raw_theta)
    if numel(raw_theta) ~= n
        error('Vector Theta input must have length %d.', n);
    end
    theta_matrix = raw_theta(:);
    return;
end

if ~isequal(size(raw_theta), [n, 1]) && ~isequal(size(raw_theta), [1, n])
    error('Theta must be scalar or length-%d vector.', n);
end

theta_matrix = raw_theta(:);
end


function beta2_block = solve_beta2_block(coeffs, params)
shifted_A = -coeffs.A - 0.5 * params.rho * eye(coeffs.n);
positive_part = solve_stabilizing_are(shifted_A, coeffs.B, coeffs.Q, coeffs.Gamma, params.stable_tolerance);

beta2 = -symmetrize(positive_part.matrix);
residual = coeffs.Q - beta2 * coeffs.R * beta2 + beta2 * coeffs.A + coeffs.A' * beta2 + params.rho * beta2;

beta2_block = struct();
beta2_block.beta2 = beta2;
beta2_block.residual = residual;
beta2_block.residual_norm = norm(residual, 'fro');
beta2_block.solver = positive_part.solver;
beta2_block.hamiltonian_eigenvalues = positive_part.eigenvalues;
end


function are_solution = solve_stabilizing_are(A, B, Q, gamma_scalar, tolerance)
are_solution = struct();

if exist('care', 'file') == 2
    try
        [matrix, ~, ~] = care(A, B, Q, gamma_scalar);
        are_solution.matrix = matrix;
        are_solution.solver = 'care';
        are_solution.eigenvalues = eig(matrix);
        return;
    catch care_exception
        warning('solve_aiyagari_lq:careFallback', ...
            'Falling back from care to Hamiltonian eigensystem: %s', ...
            care_exception.message);
    end
end

hamiltonian = [A, -(B * (1 / gamma_scalar) * B'); -Q, -A'];

try
    [eig_vectors, eig_matrix] = eig(hamiltonian);
    eig_values = diag(eig_matrix);
catch eig_exception
    error('Hamiltonian eigensystem failed while solving the ARE: %s', eig_exception.message);
end

stable_indices = find(real(eig_values) < -tolerance);
if numel(stable_indices) ~= size(A, 1)
    [~, order] = sort(real(eig_values), 'ascend');
    stable_indices = order(1:size(A, 1));
end

stable_vectors = eig_vectors(:, stable_indices);
top_block = stable_vectors(1:size(A, 1), :);
bottom_block = stable_vectors(size(A, 1) + 1:end, :);

if rcond(top_block) < tolerance
    error('Stable invariant subspace for the beta_2 Riccati equation is ill conditioned.');
end

are_solution.matrix = real(bottom_block / top_block);
are_solution.matrix = symmetrize(are_solution.matrix);
are_solution.solver = 'hamiltonian-eig';
are_solution.eigenvalues = eig_values;
end


function joint_block = build_joint_transition_block(coeffs, beta2, params)
n = coeffs.n;
aggregate_loading = coeffs.aggregate_loading;

H11 = params.rho * eye(n) + coeffs.A' - beta2 * coeffs.R;
H12 = coeffs.Theta + beta2 * coeffs.G;
H21 = aggregate_loading' * coeffs.R;
H22 = aggregate_loading' * (coeffs.R * beta2 * aggregate_loading - coeffs.A * aggregate_loading - coeffs.G);

joint_block = struct();
joint_block.H11 = H11;
joint_block.H12 = H12;
joint_block.H21 = H21;
joint_block.H22 = H22;
joint_block.H = [H11, H12; H21, H22];
joint_block.threshold = params.rho / 2;
end


function transition = solve_transition_paths(joint_block, coeffs, params)
n = coeffs.n;
m = coeffs.aggregate_dim;
[eig_vectors, eig_matrix] = eig(joint_block.H);
eig_values = diag(eig_matrix);

stable_indices = find(real(eig_values) < joint_block.threshold - params.stable_tolerance);
if numel(stable_indices) ~= m
    [~, order] = sort(real(eig_values), 'ascend');
    stable_indices = order(1:m);
end

stable_vectors = eig_vectors(:, stable_indices);
beta_block = stable_vectors(1:n, :);
state_block = stable_vectors(n + 1:n + m, :);

if rcond(state_block) < params.stable_tolerance
    error('Stable invariant subspace for the (beta_1, X) system is ill conditioned.');
end

S = real(beta_block / state_block);
M = real(joint_block.H21 * S + joint_block.H22);

time = linspace(0, params.T, params.num_steps + 1);
dt = time(2) - time(1);

state_path = zeros(m, numel(time));
beta1_path = zeros(n, numel(time));
full_path = zeros(n + m, numel(time));

state_path(1, 1) = coeffs.X0;
beta1_path(:, 1) = S * state_path(:, 1);
full_path(:, 1) = [beta1_path(:, 1); state_path(:, 1)];

reduced_step = expm(M * dt);
full_step = expm(joint_block.H * dt);

for idx = 2:numel(time)
    state_path(:, idx) = reduced_step * state_path(:, idx - 1);
    beta1_path(:, idx) = S * state_path(:, idx);
    full_path(:, idx) = full_step * full_path(:, idx - 1);
end

transition = struct();
transition.time = time;
transition.S = S;
transition.M = M;
transition.X = real(state_path);
transition.beta1 = real(beta1_path);
transition.full_path = real(full_path);
transition.selected_eigenvalues = eig_values(stable_indices);
transition.all_joint_eigenvalues = eig_values;
transition.aggregate_eigenvalues = eig(M);
end


function beta0_block = recover_beta0_path(coeffs, beta2, transition, params)
n_points = numel(transition.time);
running_cost = zeros(1, n_points);

for idx = 1:n_points
    beta1_now = transition.beta1(:, idx);
    running_cost(idx) = 0.5 * beta1_now' * coeffs.R * beta1_now;
end

tail_constant = 0.5 / params.rho * trace(coeffs.Sigma * beta2);
discounted_tail = zeros(1, n_points);

for idx = n_points - 1:-1:1
    dt = transition.time(idx + 1) - transition.time(idx);
    local_piece = 0.5 * dt * (running_cost(idx) + exp(-params.rho * dt) * running_cost(idx + 1));
    discounted_tail(idx) = local_piece + exp(-params.rho * dt) * discounted_tail(idx + 1);
end

beta0_block = struct();
beta0_block.tail_constant = tail_constant;
beta0_block.running_cost = running_cost;
beta0_block.path = tail_constant + discounted_tail;
end


function diagnostics = collect_diagnostics(coeffs, beta2_block, joint_block, transition, beta0_block, params)
n = coeffs.n;
m = coeffs.aggregate_dim;

full_beta1 = transition.full_path(1:n, :);
full_X = transition.full_path(n + 1:n + m, :);

diagnostics = struct();
diagnostics.beta2_residual_norm = beta2_block.residual_norm;
diagnostics.beta2_symmetry_error = norm(beta2_block.beta2 - beta2_block.beta2', 'fro');
diagnostics.joint_block_residual = max(vecnorm(full_X - transition.X, 2, 1));
diagnostics.co_state_residual = max(vecnorm(full_beta1 - transition.beta1, 2, 1));
diagnostics.integrability_margin = joint_block.threshold - max(real(transition.aggregate_eigenvalues));
diagnostics.aggregate_initial_condition_error = norm(transition.beta1(:, 1) - transition.S * coeffs.X0);
diagnostics.tail_constant = beta0_block.tail_constant;

if beta2_block.residual_norm > params.residual_tolerance
    warning('beta_2 Riccati residual is larger than the requested tolerance.');
end

if diagnostics.integrability_margin <= 0
    warning('Aggregate transition has an eigenvalue with real part at or above rho / 2.');
end
end


function disp_results_summary(results)
fprintf('\nAiyagari LQ aggregate solver\n');
fprintf('----------------------------\n');
fprintf('beta_2 solver: %s\n', results.beta2.solver);
fprintf('||Riccati residual||_F: %.3e\n', results.beta2.residual_norm);
fprintf('Initial capital shift: %.1f%%%%, so Delta = %.6f and X(0) = %.6f\n', ...
    100 * results.params.initial_capital_shift_fraction, ...
    infer_initial_logk_shift(results.params), results.coeffs.X0);
fprintf('beta_1(0) implied by saddle path:\n');
disp(results.transition.beta1(:, 1));
fprintf('Aggregate law eigenvalues:\n');
disp(results.transition.aggregate_eigenvalues.');
fprintf('rho / 2 - max Re(lambda(M)): %.3e\n', results.diagnostics.integrability_margin);
fprintf('beta_0(0): %.6f\n', results.beta0.path(1));
if isfield(results, 'comparison')
    fprintf('state-coupling comparison cases (Theta_{Kk}): ');
    fprintf('%.3f ', [results.comparison.scenarios.Theta_Kk]);
    fprintf('\n');
    fprintf('distribution animation cases (Theta_{Kk}): ');
    fprintf('%.3f ', resolve_distribution_theta_values(results.params));
    fprintf('\n');
    fprintf('max K-path difference across Theta_{Kk} cases: %.3e\n', results.comparison.max_k_path_diff);
    if results.comparison.max_k_path_diff > 1.0e-12
        fprintf('Changing Theta_{Kk} changes the transition path K(t).\n');
    else
        fprintf('Changing Theta_{Kk} leaves K(t) unchanged in this calibration.\n');
    end

    stationary_distribution = results.comparison.scenarios(1).distribution;
    fprintf('Stationary std(hat{k}): %.6f\n', stationary_distribution.khat_std);
    fprintf('||MP + PM'' + Sigma||_F: %.3e\n', stationary_distribution.stationary_covariance_residual);
end
if isfield(results, 'plot_files')
    fprintf('Saved K(t) plot: %s\n', results.plot_files.k_path);
    if isfield(results.plot_files, 'k_path_animation')
        fprintf('Saved K(t) animation: %s\n', results.plot_files.k_path_animation);
    end
    fprintf('Saved summary plot: %s\n', results.plot_files.summary_path);
    if isfield(results.plot_files, 'distribution_animation')
        fprintf('Saved distribution animation: %s\n', results.plot_files.distribution_animation);
    end
    if isfield(results.plot_files, 'distribution_animation_still')
        fprintf('Saved distribution still frame: %s\n', results.plot_files.distribution_animation_still);
    end
    if isfield(results.plot_files, 'distribution_heatmap_animation')
        fprintf('Saved joint density heatmap animation: %s\n', results.plot_files.distribution_heatmap_animation);
    end
end
fprintf('Results stored in workspace variable aiyagari_results.\n\n');
end


function plot_files = plot_aiyagari_results(results)
output_dir = results.params.plot_output_dir;
if ~exist(output_dir, 'dir')
    mkdir(output_dir);
end

if results.params.plot_visible
    visible_state = 'on';
else
    visible_state = 'off';
end

k_plot_path = fullfile(output_dir, results.params.k_plot_file);
k_path_animation_path = fullfile(output_dir, results.params.k_path_animation_file);
summary_plot_path = fullfile(output_dir, results.params.summary_plot_file);

fig_k = figure('Visible', visible_state, 'Color', 'w', 'Name', 'Aiyagari K Path');
hold on;
comparison_lines = {};
line_handles = gobjects(0);
for idx = 1:numel(results.comparison.scenarios)
    scenario = results.comparison.scenarios(idx);
    line_handle = plot(scenario.time(:), scenario.K_path(:), 'LineWidth', 1.8);
    if ~isempty(line_handle)
        line_handles(end + 1) = line_handle(1);
        comparison_lines{end + 1} = format_theta_Kk_label(scenario.Theta_Kk);
    end
end
grid on;
xlabel('t');
ylabel('K(t)');
xlim([results.transition.time(1), min(results.params.plot_time_max, results.transition.time(end))]);
legend(line_handles, comparison_lines, 'Location', 'best');
exportgraphics(fig_k, k_plot_path, 'Resolution', results.params.plot_resolution);

k_path_animation_path = plot_k_path_animation(results, visible_state, k_path_animation_path, comparison_lines);

fig_summary = figure('Visible', visible_state, 'Color', 'w', 'Name', 'Aiyagari LQ Transition');

subplot(3, 1, 1);
hold on;
summary_handles = gobjects(0);
for idx = 1:numel(results.comparison.scenarios)
    scenario = results.comparison.scenarios(idx);
    line_handle = plot(scenario.time(:), scenario.K_path(:), 'LineWidth', 1.5);
    if ~isempty(line_handle)
        summary_handles(end + 1) = line_handle(1);
    end
end
grid on;
ylabel('K(t)');
xlim([results.transition.time(1), min(results.params.plot_time_max, results.transition.time(end))]);
legend(summary_handles, comparison_lines, 'Location', 'best');

subplot(3, 1, 2);
plot(results.transition.time, results.transition.beta1(1, :), 'LineWidth', 1.5);
hold on;
plot(results.transition.time, results.transition.beta1(2, :), '--', 'LineWidth', 1.2);
grid on;
title('Co-state path');
ylabel('\beta_1(t)');
xlim([results.transition.time(1), min(results.params.plot_time_max, results.transition.time(end))]);
legend({'beta_{1,1}', 'beta_{1,2}'}, 'Location', 'best');

subplot(3, 1, 3);
plot(results.transition.time, results.beta0.path, 'LineWidth', 1.5);
grid on;
title('\beta_0 path');
ylabel('\beta_0(t)');
xlabel('t');
xlim([results.transition.time(1), min(results.params.plot_time_max, results.transition.time(end))]);
exportgraphics(fig_summary, summary_plot_path, 'Resolution', results.params.plot_resolution);

[distribution_animation_path, distribution_animation_still_path] = plot_distribution_comparison_animation(results, visible_state);
distribution_heatmap_animation_path = plot_distribution_heatmap_animation(results, visible_state);

if strcmp(visible_state, 'off')
    close(fig_k);
    close(fig_summary);
end

plot_files = struct();
plot_files.k_path = k_plot_path;
plot_files.k_path_animation = k_path_animation_path;
plot_files.summary_path = summary_plot_path;
plot_files.distribution_animation = distribution_animation_path;
plot_files.distribution_animation_still = distribution_animation_still_path;
plot_files.distribution_heatmap_animation = distribution_heatmap_animation_path;
end


function animation_path = plot_k_path_animation(results, visible_state, animation_path, comparison_lines)
if exist(animation_path, 'file') == 2
    delete(animation_path);
end

scenarios = results.comparison.scenarios;
time_max = min(results.params.plot_time_max, min(arrayfun(@(s) s.time(end), scenarios)));
frame_count = max(2, round(time_max / results.params.k_path_animation_frame_dt) + 1);
frame_times = linspace(0, time_max, frame_count);

x_limits = [results.transition.time(1), time_max];
y_min = inf;
y_max = -inf;
for idx = 1:numel(scenarios)
    mask = scenarios(idx).time <= time_max;
    y_min = min(y_min, min(scenarios(idx).K_path(mask)));
    y_max = max(y_max, max(scenarios(idx).K_path(mask)));
end
y_pad = 0.05 * max(1.0e-6, y_max - y_min);
panel_colors = lines(numel(scenarios));

fig = figure('Visible', visible_state, 'Color', 'w', 'Name', 'Aiyagari K Path Animation', ...
    'Position', [100, 100, 1100, 620]);
temp_frame_path = [tempname, '.png'];

for frame_idx = 1:numel(frame_times)
    t_now = frame_times(frame_idx);
    clf(fig);
    hold on;
    line_handles = gobjects(numel(scenarios), 1);

    for scenario_idx = 1:numel(scenarios)
        scenario = scenarios(scenario_idx);
        mask = scenario.time <= t_now;
        if ~any(mask)
            mask(1) = true;
        end

        time_path = scenario.time(mask);
        k_path = scenario.K_path(mask);
    line_handles(scenario_idx) = plot(time_path, k_path, 'LineWidth', 2.0, 'Color', panel_colors(scenario_idx, :));
        plot(time_path(end), k_path(end), 'o', ...
            'MarkerSize', 6.5, ...
            'MarkerFaceColor', panel_colors(scenario_idx, :), ...
            'MarkerEdgeColor', panel_colors(scenario_idx, :));
    end

    grid on;
    box on;
    xlabel('t');
    ylabel('K(t)');
    xlim(x_limits);
    ylim([y_min - y_pad, y_max + y_pad]);
    legend(line_handles, comparison_lines, 'Location', 'best');
    exportgraphics(fig, temp_frame_path, 'Resolution', results.params.plot_resolution);

    rgb_frame = imread(temp_frame_path);
    [indexed_frame, color_map] = rgb2ind(rgb_frame, 256);
    frame_delay = results.params.k_path_animation_frame_delay;
    if frame_idx == numel(frame_times)
        frame_delay = results.params.k_path_animation_final_delay;
    end

    if frame_idx == 1
        imwrite(indexed_frame, color_map, animation_path, 'gif', ...
            'LoopCount', 0, ...
            'DelayTime', frame_delay);
    else
        imwrite(indexed_frame, color_map, animation_path, 'gif', 'WriteMode', 'append', ...
            'DelayTime', frame_delay);
    end
end

if exist(temp_frame_path, 'file') == 2
    delete(temp_frame_path);
end

if strcmp(visible_state, 'off')
    close(fig);
end
end


function [animation_path, still_path] = plot_distribution_comparison_animation(results, visible_state)
target_values = resolve_distribution_theta_values(results.params);
scenarios = build_distribution_animation_scenarios(results, target_values);

animation_path = fullfile(results.params.plot_output_dir, results.params.distribution_animation_file);
still_path = fullfile(results.params.plot_output_dir, results.params.distribution_animation_still_file);
if exist(animation_path, 'file') == 2
    delete(animation_path);
end
if exist(still_path, 'file') == 2
    delete(still_path);
end

time_max = min(results.params.distribution_time_max, min(arrayfun(@(s) s.time(end), scenarios)));
frame_count = max(2, round(time_max / results.params.distribution_frame_dt) + 1);
frame_times = linspace(0, time_max, frame_count);

x_limits = [inf, -inf];
y_max = 0;
for idx = 1:numel(scenarios)
    x_limits(1) = min(x_limits(1), min(scenarios(idx).distribution.k_grid));
    x_limits(2) = max(x_limits(2), max(scenarios(idx).distribution.k_grid));
    y_max = max(y_max, max(scenarios(idx).distribution.k_density(:)));
    y_max = max(y_max, max(scenarios(idx).distribution.stationary_k_density));
end

panel_colors = lines(numel(scenarios));
figure_position = [100, 100, max(1400, 460 * numel(scenarios)), 560];
fig = figure('Visible', visible_state, 'Color', 'w', 'Name', 'Aiyagari Distribution Comparison', ...
    'Position', figure_position);
temp_frame_path = [tempname, '.png'];

% Create a reference frame to establish consistent GIF dimensions and color map
reference_color_map = [];
reference_frame_size = [];

for frame_idx = 1:numel(frame_times)
    t_now = frame_times(frame_idx);
    clf(fig);
    tiledlayout(fig, 1, numel(scenarios), 'Padding', 'compact', 'TileSpacing', 'compact');

    for panel_idx = 1:numel(scenarios)
        scenario = scenarios(panel_idx);
        mu_now = interp1(scenario.distribution.time, scenario.distribution.mean_path(1, :), t_now, 'linear');
        density_now = scaled_lognormal_pdf( ...
            scenario.distribution.k_grid, scenario.distribution.k_scale, mu_now, scenario.distribution.khat_variance);

        nexttile;
        plot(scenario.distribution.k_grid, scenario.distribution.stationary_k_density, '--', ...
            'Color', [0.55, 0.55, 0.55], 'LineWidth', 1.3);
        hold on;
        plot(scenario.distribution.k_grid, density_now, 'Color', panel_colors(panel_idx, :), 'LineWidth', 2.2);
        xline(scenario.distribution.stationary_level_point(1), ':', 'Color', [0.35, 0.35, 0.35], 'LineWidth', 1.0);
        grid on;
        box on;
        title(format_theta_Kk_label(scenario.Theta_Kk));
        xlabel('k');
        if panel_idx == 1
            ylabel('density');
        end
        xlim(x_limits);
        ylim([0, 1.05 * y_max]);
    end

        sgtitle(sprintf('Marginal density of k: 10%% initial shift, t = %.2f', t_now));
    exportgraphics(fig, temp_frame_path, 'Resolution', results.params.plot_resolution);

    rgb_frame = imread(temp_frame_path);
    
    if frame_idx == 1
        % First frame: create the reference color map and store frame size
        [indexed_frame, reference_color_map] = rgb2ind(rgb_frame, 256, 'nodither');
        reference_frame_size = size(indexed_frame);
        % Save PNG from the same indexed image
        imwrite(indexed_frame, reference_color_map, still_path, 'png');
        % Start the GIF
        imwrite(indexed_frame, reference_color_map, animation_path, 'gif', 'LoopCount', 0, ...
            'DelayTime', results.params.distribution_frame_delay);
    else
        % Subsequent frames: use the reference color map for consistency
        indexed_frame = rgb2ind(rgb_frame, reference_color_map, 'nodither');
        % Ensure frame size matches
        if ~isequal(size(indexed_frame), reference_frame_size)
            warning('Frame %d has different dimensions than frame 1. Resizing.', frame_idx);
            indexed_frame = imresize(indexed_frame, reference_frame_size, 'nearest');
        end
        imwrite(indexed_frame, reference_color_map, animation_path, 'gif', 'WriteMode', 'append', ...
            'DelayTime', results.params.distribution_frame_delay);
    end
end

if exist(temp_frame_path, 'file') == 2
    delete(temp_frame_path);
end

if strcmp(visible_state, 'off')
    close(fig);
end
end


function animation_path = plot_distribution_heatmap_animation(results, visible_state)
target_values = resolve_distribution_theta_values(results.params);
scenarios = build_distribution_animation_scenarios(results, target_values);

animation_path = fullfile(results.params.plot_output_dir, results.params.distribution_heatmap_animation_file);
if exist(animation_path, 'file') == 2
    delete(animation_path);
end

time_max = min(results.params.distribution_time_max, min(arrayfun(@(s) s.time(end), scenarios)));
frame_count = max(2, round(time_max / results.params.distribution_frame_dt) + 1);
frame_times = linspace(0, time_max, frame_count);

x_limits = [inf, -inf];
z_limits = [inf, -inf];
peak_density = 0;
for idx = 1:numel(scenarios)
    x_limits(1) = min(x_limits(1), min(scenarios(idx).distribution.khat_grid));
    x_limits(2) = max(x_limits(2), max(scenarios(idx).distribution.khat_grid));
    z_limits(1) = min(z_limits(1), min(scenarios(idx).distribution.z_grid));
    z_limits(2) = max(z_limits(2), max(scenarios(idx).distribution.z_grid));
    peak_density = max(peak_density, scenarios(idx).distribution.joint_density_peak);
end






figure_position = [100, 100, max(1400, 460 * numel(scenarios)), 560];
fig = figure('Visible', visible_state, 'Color', 'w', 'Name', 'Aiyagari Joint Density Heatmap', ...
    'Position', figure_position);
temp_frame_path = [tempname, '.png'];

% Create a reference frame to establish consistent GIF dimensions and color map
reference_color_map = [];
reference_frame_size = [];

for frame_idx = 1:numel(frame_times)
    t_now = frame_times(frame_idx);
    clf(fig);
    tiledlayout(fig, 1, numel(scenarios), 'Padding', 'compact', 'TileSpacing', 'compact');
    colormap(fig, turbo(256));

    for panel_idx = 1:numel(scenarios)
        scenario = scenarios(panel_idx);
        mean_vector = zeros(2, 1);
        for state_idx = 1:2
            mean_vector(state_idx) = interp1( ...
                scenario.distribution.time, scenario.distribution.mean_path(state_idx, :), t_now, 'linear');
        end

        density_now = bivariate_normal_pdf( ...
            scenario.distribution.khat_grid, scenario.distribution.z_grid, mean_vector, ...
            scenario.distribution.stationary_covariance);

        nexttile;
        imagesc(scenario.distribution.khat_grid, scenario.distribution.z_grid, density_now);
        axis xy;
        hold on;
        plot(scenario.distribution.stationary_mean(1), scenario.distribution.stationary_mean(2), ...
            'wx', 'LineWidth', 1.5, 'MarkerSize', 9);
        plot(mean_vector(1), mean_vector(2), 'wo', 'LineWidth', 1.2, 'MarkerSize', 5);
        grid on;
        box on;
        title(format_theta_Kk_label(scenario.Theta_Kk));
        xlabel('khat');
        if panel_idx == 1
            ylabel('z');
        end
        xlim(x_limits);
        ylim(z_limits);
        clim([0, 1.02 * peak_density]);
    end












        sgtitle(sprintf('Joint density of (khat, z): 10%% initial shift, t = %.2f', t_now));
    exportgraphics(fig, temp_frame_path, 'Resolution', results.params.plot_resolution);

    rgb_frame = imread(temp_frame_path);
    
    if frame_idx == 1
        % First frame: create the reference color map and store frame size
        [indexed_frame, reference_color_map] = rgb2ind(rgb_frame, 256, 'nodither');
        reference_frame_size = size(indexed_frame);
        % Start the GIF
        imwrite(indexed_frame, reference_color_map, animation_path, 'gif', 'LoopCount', 0, ...
            'DelayTime', results.params.distribution_frame_delay);
    else
        % Subsequent frames: use the reference color map for consistency
        indexed_frame = rgb2ind(rgb_frame, reference_color_map, 'nodither');
        % Ensure frame size matches
        if ~isequal(size(indexed_frame), reference_frame_size)
            warning('Frame %d has different dimensions than frame 1. Resizing.', frame_idx);
            indexed_frame = imresize(indexed_frame, reference_frame_size, 'nearest');
        end
        imwrite(indexed_frame, reference_color_map, animation_path, 'gif', 'WriteMode', 'append', ...
            'DelayTime', results.params.distribution_frame_delay);
    end
end

if exist(temp_frame_path, 'file') == 2
    delete(temp_frame_path);
end

if strcmp(visible_state, 'off')
    close(fig);
end
end


function scenarios = build_distribution_animation_scenarios(base_results, theta_values)
scenarios = repmat(struct(), 1, numel(theta_values));

for idx = 1:numel(theta_values)
    theta_value = theta_values(idx);

    if abs(theta_value - base_results.params.Theta_Kk) < 1.0e-12
        scenario_results = base_results;
    else
        scenario_params = base_results.params;
        scenario_params.make_plots = false;
        scenario_params.theta_Kk_comparison_values = theta_value;
        scenario_params.Theta_Kk = theta_value;
        scenario_params.Q = diag([scenario_params.Q_kk, 0]);
        scenario_params.Theta = [theta_value; 0];
        scenario_results = run_aiyagari_lq(scenario_params);
    end

    scenarios(idx).Theta_Kk = theta_value;
    scenarios(idx).time = scenario_results.transition.time;
    scenarios(idx).distribution = build_linear_gaussian_distribution(scenario_results, scenario_results.params);
end
end


function theta_values = resolve_distribution_theta_values(params)
if isfield(params, 'distribution_theta_values') && ~isempty(params.distribution_theta_values)
    theta_values = unique(params.distribution_theta_values, 'stable');
elseif isfield(params, 'theta_Kk_comparison_values') && ~isempty(params.theta_Kk_comparison_values)
    theta_values = unique(params.theta_Kk_comparison_values, 'stable');
else
    theta_values = params.Theta_Kk;
end
end


function label = format_theta_Kk_label(theta_value)
label = sprintf('\\Theta_{Kk} = %s', format_theta_Kk_value(theta_value));
end


function value_text = format_theta_Kk_value(theta_value)
value_text = strtrim(num2str(theta_value, '%.6g'));
end


function matrix = symmetrize(matrix)
matrix = 0.5 * (matrix + matrix');
end