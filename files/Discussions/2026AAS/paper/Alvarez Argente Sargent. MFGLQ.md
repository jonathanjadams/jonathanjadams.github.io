# Strategic Complementarity = Persistence in Linear-Quadratic Mean Field Games<sup>∗</sup>

Fernando Alvarez†

David Argente‡

Thomas J. Sargent§

University of Chicago

Yale University

New York University

March 2026

#### Abstract

We analyze linear-quadratic mean field games (LQ MFGs), where a continuum of agents solves non-stationary, infinite-horizon linear-quadratic regulator problems. Each agent's payoff depends on her own state, her action, and the aggregate state, and agents face both idiosyncratic and common shocks. Strategic complementarities arise when the cross derivative of the period return with respect to own and aggregate states is positive, and substitutability when it is negative. The paper makes three contributions. First, we characterize equilibrium existence, uniqueness, and dynamics, and show that the strength of strategic complementarities maps directly into persistence: stronger complementarities slow the convergence of the aggregate state, while substitutability speeds it up. Second, we study the planner's allocation and show that it amplifies these dynamics, leading to more persistence under complementarities and faster convergence under substitutability. Third, we study identification. With aggregate shocks, panel data on deviations from cross-sectional averages do not identify strategic interactions, as demeaning removes the equilibrium intercept. In contrast, aggregate dynamics identify the strength of complementarities, and, more generally, allow recovery of the interaction matrix and key structural parameters. Finally, we extend the analysis to allow for coupling through higher moments of the distribution.

JEL Classification Numbers: E3, C6

Keywords: Linear Quadratic Regulator, Strategic Complementarities, Persistence

<sup>∗</sup>We thank Manuel Amador, Saki Bigio, Chris Phelan, Guido Lorenzoni, Francesco Lippi, Guido Menzio, Simon Mongey, Ben Mol, Rob Shimer, and Iv´an Werning for helpful comments and suggestions. First draft: October 2024.

<sup>†</sup>Email: [f-alvarez1@uchicago.edu.](mailto:f-alvarez1@uchicago.edu) Address: 1126 E. 59th St., Chicago, IL 60637, USA.

<sup>‡</sup>Email: [david.argente@yale.edu.](mailto:david.argente@yale.edu) Address: Evans Hall, 165 Whitney Ave, New Haven, CT 06511, USA.

<sup>§</sup>Email: [thomas.sargent@nyu.edu.](mailto:thomas.sargent@nyu.edu) Address: 44 West Fourth Street, 7-75, New York, NY 10012, USA.

# 1 Introduction

Strategic complementarities are often invoked as a source of amplification and persistence in macroeconomics. But in dynamic environments with a continuum of interacting agents, it is not clear how the strength of those complementarities maps into aggregate adjustment, how it affects welfare, or whether it can be identified from panel data. When individual states both respond to and help determine an aggregate state, equilibrium dynamics reflect two forces: the propagation inherent in each agent's problem and the feedback that operates through aggregates. This paper isolates these forces in a tractable class of linear-quadratic mean field games (LQ MFGs). We show that the strength of strategic complementarities governs the persistence of the aggregate state, shapes the gap between equilibrium and planner dynamics, and determines what can be learned about interaction effects from panel data.

We study a continuum of infinitesimal agents who choose controls that affect the drift of an individual state. Agents face idiosyncratic shocks, and we later allow for aggregate shocks. Payoffs depend on the agent's own state, her action, and the cross-sectional average of states. As in standard heterogeneous-agent macro models, equilibrium has two parts. Given a path for the aggregate state, each agent solves a linear-quadratic control problem in which that path enters as a cross term with her own state. An equilibrium then requires both optimality at the individual level and consistency between the conjectured path of the aggregate state and the law of motion implied by the cross-sectional distribution of agents. The cross derivative between the own and aggregate states captures whether states are strategic substitutes or complements. The linear-quadratic structure is not only tractable; it also lets the equilibrium be characterized with tools very close to those used in the single-agent linear-quadratic regulator problem, and it arises as a second-order approximation to standard economic environments. We illustrate this with a model of monopolistically competitive firms with convex capital adjustment costs. Around the steady state, the industry equilibrium reduces to our LQ MFG. Through equilibrium pricing, a firm's marginal payoff depends not only on its own capital, but also on average capital in the industry, which generates the strategic complementarity term.

Our first set of results characterizes equilibrium and its dynamics. We recast the coupled Hamilton-Jacobi-Bellman and Kolmogorov forward system as a finite-dimensional Hamiltonian system together with an algebraic Riccati equation. Intuitively, the equilibrium amounts to a saddle-path configuration for the aggregate state and the slope of the value function such that individual optimality and aggregate consistency hold simultaneously. This representation yields transparent conditions for existence, uniqueness, and stability, and links the equilibrium of the mean field game to the algebraic Riccati equation of the corresponding single-agent problem. Whenever an equilibrium exists, it is unique, and existence requires that strategic complementarities remain below a threshold. This threshold reflects a balance between the amplification induced by complementarities and the stabilizing forces in the individual problem. Greater concavity in own states or controls, as well as stronger discounting, dampen the response of individual decisions to the aggregate state and therefore allow for a larger degree of complementarity while preserving equilibrium. Within this region, the strength of complementarities maps directly into persistence: stronger complementarities move the stable root of the aggregate law of motion toward zero and slow convergence to steady state, while stronger substitutability speeds it up. In this sense, the paper provides comparative statics of the equilibrium eigenvalue with respect to the interaction matrix that captures strategic complementarities.

We next study the allocation chosen by a utilitarian planner who decides the controls of the continuum of agents, subject to the law of motion of the cross-sectional distribution. The planner maximizes the aggregate objective, taking into account how each agent's decisions affect the rest of the population. Relative to equilibrium, this means that the planner internalizes the effect of each agent's state on the aggregate state and, in turn, on other agents' payoffs. Under symmetric interactions, this effectively doubles the interaction term. This has a clear implication for dynamics. When complementarities are present, the planner chooses a more persistent transition than the decentralized equilibrium; under substitutability, convergence is faster. In this sense, internalization amplifies the dynamic effects of strategic interaction.

The third contribution concerns identification. We extend the model to allow for aggregate shocks, under which the cross-sectional average becomes stochastic while its drift matrix remains the same as in the deterministic case. Owing to the linear-quadratic structure, the resulting "master equation" is particularly tractable, and the same equilibrium drift matrix continues to govern aggregate adjustment. This makes the framework directly applicable to empirical settings and yields a negative result: panel data on individual deviations from crosssectional averages do not identify the strength of strategic interaction, because demeaning removes the intercept through which aggregate interactions operate. In fact, the result is sharper than that statement suggests. By linearity, the law of motion for deviations from the mean, as well as for actions relative to their averages, is independent of the interaction matrix. That is, these deviations are identical for any degree of strategic complementarity or substitutability.

At the same time, the model delivers positive identification results. Aggregate dynamics do identify strategic complementarities. Once the private component of individual dynamics is known, the equilibrium drift matrix of the aggregate state identifies the strength of complementarities. More generally, with data on aggregate states, aggregate actions, and individual deviations, one can recover both the interaction matrix and the key structural parameters. The intuition is simple. Stronger complementarities make the aggregate state more persistent, while the dynamics of deviations are pinned down by the private problem and, by linearity, do not depend on the degree of interaction. In this sense, we show how complementarities can be identified in practice: not from within-group variation, but from the joint behavior of aggregates and individual outcomes. In the one-dimensional case, this is particularly transparent, as identification amounts to comparing the autocorrelation of the aggregate state with that of deviations. Although the results rely on matrix algebra, the underlying mechanism is straightforward: complementarities affect persistence at the aggregate level, but leave the dynamics of deviations unchanged. The analytical nature of the model makes these relationships clear and yields a sharp characterization of both equilibrium and identification, without relying on numerical computation.

We consider two extensions. First, we allow for forcing processes that affect agents' states but are not directly controlled. In that case, the system can be solved recursively, block by block, and the main results continue to apply to the endogenous block. Second, and more substantially, we allow payoffs to depend on higher moments of the cross-sectional distribution, not only on the mean. For example, the agent's payoff can depend on her own state interacted with skewness or other moments of the distribution. Around a symmetric steady state, local dynamics remain tractable. The dominant stable root takes the same form as in the benchmark model once strategic complementarity is replaced by an effective term built from the coefficients on the odd moments. The remaining local roots are independent of those interaction coefficients. Thus, as in the benchmark case, stronger effective complementarities slow convergence, while substitutability speeds it up. Second, and more substantially, we allow payoffs to depend on higher moments of the cross-sectional distribution, not only on the mean. For example, the agent's payoff can depend on her own state interacted with skewness or other moments of the distribution. Around a symmetric zero-mean invariant distribution, local dynamics remain tractable. A key result is that the structure of the equilibrium is preserved: once strategic complementarity is redefined to incorporate the contribution of higher moments, the dominant stable root takes the same form as in the benchmark model. The remaining local roots are independent of these interaction coefficients. Thus, as in the benchmark case, stronger effective complementarities slow convergence, while substitutability speeds it up.

Literature Review The literature on dynamic games with a continuum of agents has been significantly advanced by the mean field games (MFG) framework introduced by [Lasry](#page-44-0) [and Lions](#page-44-0) [\(2007\)](#page-44-0). In their seminal work, the problem is formulated as a coupled system of two partial differential equations: a Hamilton–Jacobi–Bellman equation for individual optimization and a Kolmogorov forward equation for the evolution of the state distribution. This dual-PDE approach has proven particularly effective in handling high-dimensional crosssectional dynamics, a strength that has been further leveraged in economic applications by [Achdou et al.](#page-44-1) [\(2017\)](#page-44-1).

There have been several recent contributions in mathematics on linear-quadratic mean field games. [Caines](#page-44-2) [\(2009\)](#page-44-2) provides an early overview of this literature. [Bardi](#page-44-3) [\(2012\)](#page-44-3) studies linear-quadratic N-person games and their mean field limit with ergodic costs (i.e., similar to the case ρ → 0) in a one-dimensional setting. That paper establishes conditions for the existence of equilibrium by analyzing an associated algebraic Riccati equation, and considers both strategic substitutability and complementarity. [Bardi and Priuli](#page-44-4) [\(2014\)](#page-44-4) extends several of these results to the n-dimensional case. [Tchuendom](#page-44-5) [\(2018\)](#page-44-5) studies mean field games with common noise in a related linear-quadratic framework.[1](#page-4-0) [Bensoussan et al.](#page-44-6) [\(2016\)](#page-44-6) provides a comprehensive treatment of linear-quadratic problems, and [Huang and Yang](#page-44-7) [\(2021\)](#page-44-7) studies the planner's problem in a linear-quadratic mean field game. While our formulation differs from some of these setups, part of our characterization builds on this literature, in particular the reduction of the equilibrium to an algebraic Riccati equation.

Relative to the applied mathematics literature, our contribution is fourfold. First, we establish a tight relationship between strategic complementarities and the persistence of equilibrium dynamics. Second, we characterize the difference between the decentralized equilibrium and the planner's allocation. Our analysis of equilibrium as the solution to an algebraic Riccati equation allows us to adapt classical results from linear-quadratic regulator theory in the undiscounted setting—most notably those of [Kucera](#page-44-8) [\(1973\)](#page-44-8) and [Wimmer](#page-44-9) [\(1985\)](#page-44-9)—to derive necessary and sufficient conditions for the existence and uniqueness of stable solutions. This approach also delivers clear comparative statics: as the degree of strategic complementarity increases, aggregate dynamics become more persistent, slowing convergence to the steady state, with even stronger effects under the planner. Third, we introduce common noise and use this extension to study the identification of strategic complementarities and substitutabilities. Fourth, we extend the model to allow for coupling through higher moments of the distribution. In this case, multiple moments of the cross-sectional distribution, rather than only the mean, enter the agent's payoff. We show that our results on strategic complementarities and persistence extend, locally, to this more general setting.

<span id="page-4-0"></span>Finally, our work complements studies on the role of strategic complementarities in

<sup>1</sup>Compared to our setup, the coupling in [Tchuendom](#page-44-5) [\(2018\)](#page-44-5) enters through the drift of the law of motion of the state, rather than through interactions between the individual state and moments of the distribution.

macroeconomics, including those on pecuniary externalities (e.g., [Acemoglu,](#page-44-10) [1996\)](#page-44-10) and technological externalities not internalized by prices (e.g., [Baxter and King,](#page-44-11) [1991;](#page-44-11) [Romer,](#page-44-12) [1986;](#page-44-12) [Cooper and John,](#page-44-13) [1988\)](#page-44-13). To illustrate the flexibility of our framework, we present an application based on a simple industry equilibrium model. In this economy, firms own capital and adjust it by buying or selling the aggregate good, incurring convex adjustment costs. Each firm produces a differentiated product under monopolistic competition, and these goods are aggregated using a CES production function. Although the firm's profit function is not inherently quadratic, a second-order approximation around the deterministic steady state yields a quadratic formulation. In this representation, the state variable is the deviation of a firm's capital from its steady state, while the aggregate state is the deviation of average capital. This example highlights the broad applicability of the linear-quadratic framework [\(Ljungqvist and Sargent,](#page-44-14) [2018\)](#page-44-14) and illustrates how persistence in macroeconomic models is shaped by the strength of strategic complementarities.

# <span id="page-5-0"></span>2 Mean Field Game Set Up, without aggregate shock

We assume that the period return function is quadratic in the following triplet: the idiosyncratic state x ∈ R n , the cross sectional average of the state X ∈ R n , or "aggregate state" and the action α ∈ R k . We write the period return function as follows:

$$F(x,m) + R(\alpha) \equiv -\frac{1}{2}x'Qx - X'\Theta x - \frac{1}{2}\alpha'\Gamma\alpha$$
where  $X \equiv \int x m(x) dx$ 

where Q and Θ are n × n matrices, where Γ is an k × k matrix, and where m is a density over the states x. The state x evolves as a the following diffusion:

$$dx = \mu(\alpha, x) dt + \Sigma^{1/2} dW \equiv (B\alpha - Ax) dt + \Sigma^{1/2} dW$$

where W is an n dimensional standard Brownian Motion vector, where A is n × n matrix, B is an n × k matrix, and where Σ is the variance per unit of time of the idiosyncratic state. Thus, the drift of the idiosyncratic state is (Bα − Ax), so that it can be controlled by the action α ∈ R k .

The agent uses a discount factor ρ > 0. The value function of the agent is denoted by u : R <sup>n</sup> × R<sup>+</sup> → R, where the state is (x, t). So the problem of the agent, taken as given the path of {m(t)} –and in particular the path of {X(t)}– is:

$$u(x,t) = \max_{\{\alpha(s): s \ge t\}} \int_t^\infty e^{-\rho(s-t)} \mathbb{E}\left[ \left( F(x(s), m(s)) + R(\alpha(s)) \right) \mid x(t) = x \right] ds$$
 subject to  $dx(s) = \left( B\alpha(s) - Ax(s) \right) dt + \Sigma^{1/2} dW(s)$  for all  $s \ge t$ 

for all t ≥ 0 and all x ∈ R n , and where the expectation is with respect to {W}. We maintain the following assumptions:

#### Assumptions AM:

- 1. positive discount factor ρ ≥ 0,
- 2. the matrix Γ is positive definite, and Σ is positive semi-definite,
- 3. the matrix B has full rank, so that BΓ <sup>−</sup><sup>1</sup>B′ is invertible, and
- 4. the matrix Q is positive definite.

where I<sup>n</sup> is the n dimensional identity. Note that the last condition is immediately satisfied if either instead of assuming that Q is positive semi-definite, one assumes that Q is positive definite, or if A + I<sup>n</sup> ρ 2 has full rank.

These conditions are sufficient to show detectability and stabilizability. Recall that detectability of Q and (−A − ρ 2 ) :there exists a matrix F for which Re λ F C − A − ρ 2 < 0 where Q = C ′C. [2](#page-6-0) Stabilizability of B and (−A − ρ 2 ): there exists a matrix L for which Re λ BΓ <sup>−</sup>1/<sup>2</sup>L − A − ρ 2 In < 0, where Re λ(·) means the real part of the eigenvalues of the matrix. These assumptions imply that for Θ = 0, the single agent decision problem has a unique finite solution. We state this as a proposition, whose prof is almost immediate.

<span id="page-6-1"></span>Proposition 1. The AM assumptions on Q, A, B, Γ and ρ imply that the pair (Q, −A− ρ 2 In) is detectable, and the pair (BΓ −1/2 , −A − ρ 2 In) is stabilizable. Hence, the single agent LQ problem for Θ = 0, i.e.the case where agents problem are independent of each other, has a unique finite time invariant value function.

Example. An example of interest is the one where F(x, m) = F˜(x, X) and where F˜ is given by:

$$\tilde{F}(x,X) = -\frac{1}{2}x'Q_0x - \frac{1}{2}g'Tg \equiv -\frac{1}{2}x'Q_0x - \frac{1}{2}(x - DX)'T(x - DX)$$

<span id="page-6-0"></span><sup>2</sup>Alternatively, detectability means that for any vector v and scalar λ with (A+ ρ 2 In)v = λv and Re(λ) ≤ 0, then Cv ̸= 0.

for three n × n matrices Q0, B and D, with Q<sup>0</sup> and T being two positive definite matrices. The vector of gaps, g ≡ x− DX, is given by the excess of x over a linear function of the X′ s, using the n×n matrix D. For instance, we can take D = Diag(di), a matrix with scalar d<sup>i</sup> in each element of the diagonal, and hence g<sup>i</sup> = x<sup>i</sup> − diX<sup>i</sup> . In this case the sign (and size) of d<sup>i</sup> controls whether the game as strategic complementarity (d<sup>i</sup> > 0) or strategic substitutability (d<sup>i</sup> < 0). In this simple case if d<sup>i</sup> > 0, then F˜(x, X) is maximized when x<sup>i</sup> = diX<sup>i</sup> for all i. In this case we can write:

$$\tilde{F}(x,X) = -\frac{1}{2}x'(Q_0 + T)x - \frac{1}{2}X'D'TDX + \frac{1}{2}x'TDX + \frac{1}{2}X'D'Tx$$

Mapping this back to our notation we can take

$$Q = Q_0 + T$$
 and  $\Theta = -DT$ 

where we are suppressing the term − 1 <sup>2</sup>X′D′T DX since, it is an additive term not under control of the agent, and hence it does not change the decisions of the agent.

Strategic Complementarity/Substitutability and Potential Games. The previous example, as well as standard notion for a static game where x is taken to be the strategy of a player, and X the summary of the strategy of the others player motivates the following definition:

Definition 1. We say that the MFG features strategic complementarity or substitutability

if 
$$\frac{\partial^2}{\partial x \partial X} F(x, m) = -\Theta$$
 is Negative Definite the MFG has Strategic Substitutability if  $\frac{\partial^2}{\partial x \partial X} F(x, m) = -\Theta$  is Positive Definite the MFG has Strategic Complementarity

In the scalar case a game has either strategic substitutability or complementarity. In the vector case, this does not cover the case where either Θ is not symmetric, or when it is neither positive definite or negative definite.

To interpret the assumptions of Θ such as being symmetric, or being Positive/Negative definite we introduce a static game defined by F. In this game, there is a continuum of agents, each agent has payoff F(x, m) of choosing x ∈ R n if the rest of the agents chose actions whose distribution is m. Such a game is referred to as a non-atomic game, and since x ∈ R n it corresponds to the continuum case. A sub-class of this games are the potential non-atomic games, where the payoff function is given by the derivative with respect to m of another function, called the potential, which we denote by F(m). In our case, if the matrix Θ is symmetric, F defines a potential game with the following potential:

$$\mathcal{F}(m) = -\frac{1}{2} \int x' Q x m(x) dx - \frac{1}{2} \left( \int z m(z) dz \right)' \Theta \left( \int x m(x) dx \right)$$
$$= -\frac{1}{2} \int x' Q x m(x) dx - \frac{1}{2} X' \Theta X$$
(1)

Using the following notation for the functional derivative of F:

<span id="page-8-0"></span>
$$\mathcal{F}(m+\zeta) = \mathcal{F}(m) + \int \frac{\partial \mathcal{F}(m,x)}{\partial m} \zeta(x) dx + o(||\zeta||) \text{ for all } \zeta$$

then we define

$$F(x,m) = \frac{\partial \mathcal{F}(m,x)}{\partial m} = -\frac{1}{2}x'Qx - x'\Theta\left(\int z\,m(z)dz\right) \equiv -\frac{1}{2}x'Qx - x'\Theta X$$

where we use that Θ is a symmetric matrix. The symmetry of Θ, ensures that the externalities are themselves symmetric, i.e that <sup>∂</sup> <sup>2</sup>F(x,m) ∂xi∂X<sup>j</sup> = ∂ <sup>2</sup>F(x,m) ∂xj∂X<sup>i</sup> .

For a non-atomic game with a potential, every local maximum of the potential is a Nash equilbrium. Furthermore, for a non-atomic game with a potential F that is concave in m, the set of Nash equilibrium is a convex set given by its maximizers, and if the concavity is strict it has a unique Nash equilibrium, see [Cheung and Lahkar](#page-44-15) [\(2018\)](#page-44-15). Note that in our context concavity of F in m is equivalent to −Θ being negative definite. Or, in term of the previous definition, concavity of the potential is equivalent to the MFG displaying strategic substitutability. We return to the implication of substitutability below when we refer to LL monotonicity.

Next we define the MFG using the p.d.e.'s for the value function and density.

MFG as coupled p.d.e.'s. We can write this problem recursively, so the HJB is the following non-linear p.d.e.:

$$\rho u(x,t) = F(x,m(t)) + H(u_x(x,t),x) + \frac{1}{2} \sum_{i} \sum_{j} \sigma_{ij} u_{x_i x_j}(x,t) + u_t(x,t)$$

$$= -\frac{1}{2} x' Q x - X(t)' \Theta x + H(u_x(x,t),x) + \frac{1}{2} \sum_{i} \sum_{j} \sigma_{ij} u_{x_i x_j}(x,t) + u_t(x,t)$$

$$= -\frac{1}{2} x' Q x - X(t)' \Theta x + H(u_x(x,t),x) + \frac{1}{2} tr(\Sigma u_{xx}(x,t)) + u_t(x,t)$$

where the Hamiltonian  $H: \mathbb{R}^n \times \mathbb{R}^n \to \mathbb{R}$  is defined as:

$$H(p,x) = \max_{\alpha \in \mathbb{R}^n} R(\alpha) + p' (B\alpha - Ax)$$

for any  $p \in \mathbb{R}^n$ . Note that, by the envelope, the drift is given by the derivative of the Hamiltonian evaluated at the optimal action:

$$\mu\left(\alpha^*(p,x),x\right) = H_p(p,x).$$

The law of motion of the cross sectional density  $m: \mathbb{R}^n \times \mathbb{R}_+ \to \mathbb{R}_+$  satisfies the following Kolmogorov Forward equation:

$$m_t(x,t) = -\sum_{i=1}^n \left(\mu_i(\alpha^*(x,t), x) \, m(x,t)\right)_{x_i} + \frac{1}{2} \sum_i \sum_j m_{x_i x_j}(x,t) \sigma_{ij}$$

Replacing that the optimal action is given by the derivative of the Hamiltonian:

$$m_t(x,t) = -\sum_{i=1}^n (H_{p_i}(u_x(x,t),x) m(x,t))_{x_i} + \frac{1}{2} \sum_i \sum_j m_{x_i x_j}(x,t) \sigma_{ij}$$

for all  $t \geq 0$  and all  $x \in \mathbb{R}^n$ . This can also be written with the more compact notation using the divergence and trace operator. In particular, for a fixed t we regard f(x) to be the product  $f(x) \equiv H_p(u_x(x,t),x)m(x,t)$  as a vector field over  $x \in \mathbb{R}^n$ , and use div for its divergence, so that  $div(f)(x) = \sum_{i=1}^n \frac{\partial}{\partial x_i} f(x)$ . Furthermore, we use tr for the trace of a matrix, which we applied below to the product of the matrices  $\Sigma$  and  $\frac{\partial^2}{\partial x \partial x} m(x,t)$  for a fixed t. Thus we can write:

$$m_t(x,t) = -div (H_p(u_x(x,t), x) m(x,t)) + \frac{1}{2} tr (\sum m_{xx}(x,t))$$

The initial condition is

$$m(x,0) = m_0(x)$$
 for all  $x \in \mathbb{R}^n$ 

for some  $m_0(x)$ . Thus we can define:

$$X(t) = \int x m(x,t) dx$$
 for all  $t \ge 0$  or 
$$X_i(t) = \int \cdots \int x_i m(x,t) dx_1 \dots dx_n$$
 for all  $t \ge 0$  and  $i = 1, \dots, n$ 

Boundary conditions. We will seek solutions for u that satisfies:

$$\lim_{t \to \infty} e^{-\rho t} \mathbb{E} \left[ u(x(t), t) \mid x(0) = x \right] = 0$$

for all x ∈ R n . For m we seek solutions that satisfy: R ||x||<sup>r</sup> m(x, t) dx < ∞ for all t for some r > 2. We assume this condition is satisfied by m0.

This restriction implies that:

$$1 = \int m(x,t) dx \text{ for all } t \ge 0$$

$$0 = \lim_{x_i \to +\infty} m(x,t) = \lim_{x_i \to -\infty} m(x,t) = \lim_{x_i \to +\infty} m_{x_j}(x,t) = \lim_{x_i \to -\infty} m_{x_j}(x,t)$$

$$= \lim_{x_i \to +\infty} x_i m(x,t) = \lim_{x_i \to -\infty} x_i m(x,t)$$

Furthermore, we will restrict attention to equilibrium where the path of the discounted square of X′ s are integrable. This is to ensure that the utility of the representative agent it finite. In particular we define the set L 2 ρ as:

$$L_{\rho}^{2} \equiv \left\{ X : \mathbb{R}_{+} \to \mathbb{R}^{n} \text{ with } \int_{0}^{\infty} e^{-\rho t} ||X(t)||^{2} dt < \infty \right\}$$

We will return later to clarify the sense in which condition is necessary u(x, t) to be finite.

Definition 2. An equilibrium for the MFG given m<sup>0</sup> is a value function u : R <sup>n</sup> × R<sup>+</sup> → R, a density m : R <sup>n</sup> × R<sup>+</sup> → R+, and the first moments X ∈ L 2 ρ satisfying:

$$\rho u(x,t) = -\frac{1}{2}x'Qx - X'\Theta x + H(u_x(x,t),x) + \frac{1}{2}tr(\Sigma u_{xx}(x,t)) + u_t(x,t)$$

$$m_t(x,t) = -div(H_p(u_x(x,t),x)m(x,t)) + \frac{1}{2}tr(\Sigma m_{xx}(x,t))$$

for all x ∈ R <sup>n</sup> and t ≥ 0 where

$$H(p,x) = \max_{\alpha \in \mathbb{R}^k} -\frac{1}{2} \alpha' \Gamma \alpha + p' (B\alpha - Ax) \text{ for all } (p,x) \in \mathbb{R}^{2n}$$
$$X(t) = \int x \, m(x,t) \, dx \text{ for all } t \ge 0$$

with m(x, 0) = m0(x) and the boundary conditions for m and u specified above.

We can specialize the definition of an equilibrium for a steady state as follows:

Definition 3. An steady state is given by a vector X¯ ∈ R <sup>n</sup> and two functions ¯u : R <sup>n</sup> → R and ¯m : R <sup>n</sup> → R<sup>+</sup> satisfying :

$$\rho \bar{u}(x) = -\frac{1}{2}x'Qx - \bar{X}'\Theta x + H(\bar{u}_x, x) + \frac{1}{2}tr\left(\Sigma \bar{u}_{xx}(x)\right)$$
$$0 = -div\left(H_p(\bar{u}_x(x), x)\bar{m}(x)\right) + \frac{1}{2}tr\left(\Sigma \bar{m}_{xx}(x)\right)$$

for all x and the vector X¯ satisfies

$$\bar{X} = \int x \, \bar{m}(x) \, dx$$

Lasry-Lions Monotonicity. Finally, here we verify that −Θ Negative definite is equivalent to the Lasry-Lions monotonicity condition. For drift control MFG, the LL Monotonicity condition has been shown to ensure that the equilibrium is unique –not just the uniqueness of the static game defined by F. For completeness we recall that the Lasry-Lions monotonicity condition states that for any two densities m<sup>1</sup> ̸= m<sup>2</sup> the following inequality holds

$$0 \ge \int (F(x, m^1) - F(x, m^1)) (m^1(x) - m^2(x)) dx$$
  
= 
$$\int (-x' \Theta(X^1 - X^2)) (m^1(x) - m^2(x)) dx$$
  
= 
$$(X^1 - X^2) (-\Theta) (X^1 - X^2).$$

Thus, LL monotonicity in this context is equivalent to −Θ being Negative definite, or that the game features strategic substitutability. Recall that under LL Monotonicity the equilibrium of a mean field game is unique.

# 3 Example: Industry equilibrium

In this section we present an example based on an industry equilibrium where monopolistic competitive firms produce differentiated goods using a decreasing returns technology, and face capital adjustment cost. In this setting the source of strategic complementarity for a given firm comes from the effect of the capital in the hand of the rest of the firms in the industry on the relative price of the firm. As the industry capital is higher, the price of a firm with a given output increases, as its goods is more scare. This effect increases the marginal value of an extra unit of capital on this firm.

A firm with capital k produces a quantity k ν , where 0 < ν < 1, of a differentiated good. These differentiated goods are demanded by a constant-returns-to-scale sector which combines them in a CES with elasticity of substitution η. This gives rises to a price for the firm with k when total output of this industry is Y (t) equal to (k <sup>ν</sup>/Y (t))<sup>−</sup>1/η, in units of the aggregate output. Thus, the revenue of this firms is (k <sup>ν</sup>/Y (t))<sup>−</sup>1/η k ν . This firms can change its capital k buying a quantity of aggregate good i, and its capital evolves as dk = i − δk + kσdW¯ , where W is a standard BM, and dW it is interpreted as a "shock" on capital quality. The firm also pays ψ(i−δk) in adjustment cost, in units of aggregate output. The adjustment cost function ψ(·) is assumed to be positive and convex in its argument, and to satisfy ψ(0) = 0. Consumers have linear inter-temporal utility in the aggregate good, and discount future consumption at the rate ρ. Thus, in this economy aggregate output Y (t) satisfies Y (t) = C(t) + I(t) + Ψ(t) where C(t) is aggregate consumption, I(t) is investment, and Ψ(t) is the total amount of goods used in capital adjustment cost.

The firm faces a path for industry output {Y (t)}. Each firm problem can be summarized by the following HJB equation:

$$\rho \tilde{v}(k,t) = \left(\frac{k^{\nu}}{Y(t)}\right)^{-1/\eta} k^{\nu} + \tilde{H}\left(\tilde{v}_{k}(k,t), k\right) + \frac{k^{2}\bar{\sigma}^{2}}{2} \tilde{v}_{kk}(k,t) + \tilde{v}_{t}(k,t) \text{ for all } k \geq 0, t \geq 0$$
 (2)

$$\tilde{H}(p,k) \equiv \max_{i} p(i-\delta k) - i - \psi(i-\delta k) \text{ for all } p,k$$
(3)

where ˜v(k, t) is the value function, the function H˜ is the Hamiltonian, and the optimal policy is given by i ∗ (k, t) = H<sup>p</sup> (˜vk(k, t), k). Industry total output is given by:

<span id="page-12-4"></span><span id="page-12-3"></span><span id="page-12-2"></span><span id="page-12-1"></span><span id="page-12-0"></span>
$$Y(t) = \left[ \int (k^{\nu})^{1-1/\eta} \, \tilde{m}(k,t) \, dk \right]^{1/(1-\eta)} \text{ for all } t \ge 0$$
 (4)

where ˜m(k, t) is the density at time t of the firm with capital k. It evolves with time as:

$$\tilde{m}_t(k,t) = -\left(H_p\left(\tilde{v}_x(k,t), k\right) \tilde{m}(k,t)\right)_k + \left(\frac{1}{2}k^2 \bar{\sigma}^2 \tilde{m}(k,t)\right)_{kk} \text{ for all } k, t \ge 0$$
 (5)

$$1 = \int \tilde{m}(k, t)dk \text{ for all } t \ge 0$$
 (6)

with ˜m(k, 0) = ˜m0(k) for a given m0(k). An MFG equilibrium is a couple of functions v˜(k, t), m˜ (k, t) and a path Y (t) satisfying [equation](#page-12-0) [\(2\)](#page-12-0), [equation](#page-12-1) [\(3\)](#page-12-1), [equation](#page-12-2) [\(4\)](#page-12-2), [equa](#page-12-3)[tion](#page-12-3) [\(5\)](#page-12-3), and [equation](#page-12-4) [\(6\)](#page-12-4).

The preceding MFG does not fit into our Linear Quadratic MFG. The nature of the approximation is to consider small uncertainty and small deviations from the steady state with no uncertainty.

We describe the steps to obtain a LQ approximation to it.

- 1. Eliminates the uncertainty, setting ¯σ = 0. In this case the MFG has a degenerate stationary distribution concentrated around a value k = ¯k.
- 2. Replace Y (t) by an approximation in terms of moments of ˜m, and keep the first non-zero term, which is the mean of k, which at steady state is K = ¯k..

3.

For this we set (i) set ¯σ = 0 so the problems become deterministic, (ii) solve for the steady state around k = K = ¯k, (ii) take a second order approximation the period revenue function (k <sup>ν</sup>/Y (t))<sup>−</sup>1/η k <sup>ν</sup> around k = ¯k, (iii) take second order approximation to the adjustment cost function ψ(·) around k = ¯k, (iv) approximate the right hand side of Y (t) with its approximation around k(t) = K. This gives rise to a Linear Quadratic Mean Field Game. In this case x ≡ (k − ¯k)/ ¯k and X ≡ (K − ¯k)/ ¯k where K ≡ R k m˜ (k, t)dk.

Now we give more details on the approximation. The value of output is approximated by Y (t) ≈ K<sup>ν</sup> . This approximation is more accurate as ¯σ get smaller. Defining the profit of a firm with capital k when the rest has capital K as:

$$\tilde{\Pi}(k,K) = K^{\nu/\eta} k^{\nu(1-1/\eta)}$$

In this model the steady state is given by k = K = ¯k satisfying:

$$\rho + \delta = \tilde{\Pi}_k(\bar{k}, \bar{k}) = \nu(1 - 1/\eta) \left(\bar{k}\right)^{\nu - 1}$$

The derivatives of Π( ˜ k, K) evaluated at k = K = ¯k are:

$$-Q \equiv \tilde{\Pi}_{kk}(\bar{k}, \bar{k}) = \frac{\rho + \delta}{\bar{k}} \left( \nu \left( 1 - \frac{1}{\eta} \right) - 1 \right) \text{ and } -\Theta \equiv \tilde{\Pi}_{kK} \left( \bar{k}, \bar{k} \right) = \frac{\rho + \delta}{\bar{k}} \frac{\nu}{\eta} > 0$$
thus  $Q + \Theta \equiv \frac{\rho + \delta}{\bar{k}} \left( 1 - \nu \right)$ 

Now we can write a second order approximation to Π( ˜ k, K), which we label Π(x, X), as

$$\Pi(x,X) \equiv (\rho + \delta)\bar{k} x - \frac{1}{2}xQx - X\Theta x$$

where Π(x, X), relative to Π( ˜ k, K), we ignore constants, higher order terms on x, and terms that depends purely on X. The second order approximation to the adjustment cost function gives:

$$\psi(i - \delta k) \equiv \psi(\bar{k}\alpha) \approx \psi(0) + \psi'(0)\bar{k}\alpha + \frac{1}{2}\bar{k}^2\psi''(0)\alpha^2$$

given the assumed properties for ψ(·). Note that we have re-written the control in x units, i.e. α = (i−δk)/ ¯k. We map this example into the LQ MFG by setting F(x, X) = − 1 2 xQx−XΘx, the matrices B, A and Γ are scalars given by B = 1, A = 0, and Γ = ¯k 2ψ ′′(0) > 0 and Σ <sup>1</sup>/<sup>2</sup> ≡ σ = ¯σ/¯k. Replacing these definitions we obtain the following HJB

$$\rho u(x,t) = -\frac{1}{2}xQx - X(t)\Theta x + H\left(u_x(x,t)\right) + \frac{\sigma^2}{2}u_{xx}(x,t) + u_t(x,t)$$
$$H\left(p\right) = \max_{\alpha} p\alpha - \frac{1}{2}\Gamma\alpha^2$$

which is exactly the one we use in the definition of an LQ MFG. We include a step-by-step calculations in the appendix [Section B](#page-48-0) which show that the HJB becomes:

Note that in this example, Q and Γ are positive definite, since they are both positive scalars. It is also an example with strategic complementarity, since −Θ > 0.

# 4 Analysis of the MFG, without aggregate shocks

We want to understand the equilibrium for this model as a function of Θ. We will first study the maximization problem for the agents given the path of X. Then we will study the dynamics of X using the aggregation and the nature of optimal controls. Finally we will put them together to characterize the equilibrium as a dynamical system in 2n variables.

# 4.1 HJB for u given X¯

In this section we analyze the value function u(x, t) for a given arbitrary path of X(t). The next very simple lemma gives the characterization of the Hamiltonian:

Lemma 1. Hamiltonian. We use the functional form for R(a, x) and µ(a, x) solve for H(p, x) and Hp(x, a) and write down the expression for the optimal α ∗ (p, x).

$$H(p,x) = \max_{\alpha \in \mathbb{R}^k} R(\alpha) + p'(B\alpha - Ax) = \max_{\alpha \in \mathbb{R}^k} -\frac{1}{2}\alpha'\Gamma\alpha + p'(B\alpha - Ax)$$

for p ∈ R n . In this case the f.o.c. of the Hamiltonian gives:

$$\alpha^{*}(p, x) = \Gamma^{-1}B'p$$

$$H(p, x) = \frac{1}{2}p'B\Gamma^{-1}B'p - \frac{1}{2}(p'Ax + x'A'p)$$

$$H_{p}(p, x) = p'B\Gamma^{-1}B' - x'A'$$

Next we argue that the value function is quadratic in x, with coefficients that are functions of time.

Quadratic Value Function at each t. Given a path for {X(t)}t≥<sup>0</sup> the agent problem is a time-varying linear quadratic regulator problem. As such, its u(·, t) is quadratic is quadratic in x for each t. In particular, it must be of the form:

<span id="page-15-0"></span>
$$u(x,t) = \beta_0(t) + \beta_1'(t)x + \frac{1}{2}x'\beta_2(t)x \text{ for all } t \ge 0$$
 (7)

for three differentiable functions β<sup>0</sup> : [0,∞) → R, β<sup>1</sup> : [0,∞) → R <sup>n</sup> and β<sup>2</sup> : [0,∞) → R n×n , so for each t, where the matrix β2(t) is real and symmetric.

For future reference we write the expression collecting the terms for each power of x:

$$u_x(x,t) = \beta_1'(t) + x'\beta_2(t)$$

$$H(u_x(x,t),x) = \frac{1}{2}\beta_1'(t)B\Gamma^{-1}B'\beta_1(t) + \frac{1}{2}x'\beta_2(t)B\Gamma^{-1}B'\beta_2(t)x$$

$$+\beta_1'(t)\Gamma^{-1}\beta_2(t)x - (\beta_1'(t) + x'\beta_2(t))Ax$$

$$H_p(u_x(x,t),x) = (\beta_1'(t) + x'\beta_2(t))B\Gamma^{-1}B' - x'A'$$

The next step is to replace the form of the value function into the HJB.

HBJ given guess of value function, given a X path. We now write the HJB using the guess in [equation](#page-15-0) [\(7\)](#page-15-0), the functional forms for F and R, and the expression for H(ux(x, t)). We use the assumed guess to compute uxx(x, t) and ut(x, t). We use dots to denote the time derivatives of β0, β<sup>1</sup> and β2.

$$\rho \left(\beta_{0}(t) + \beta'_{1}(t)x + \frac{1}{2}x'\beta_{2}(t)x\right)$$

$$= -\frac{1}{2}x'Qx - X'(t)\Theta x$$

$$+ \frac{1}{2}\beta'_{1}(t)B\Gamma^{-1}B'\beta_{1}(t) + \frac{1}{2}x'\beta_{2}(t)B\Gamma^{-1}B'\beta_{2}(t)x + \beta'_{1}(t)B\Gamma^{-1}B'\beta_{2}(t)x$$

$$- \frac{1}{2}\left(\beta'_{1}(t) + x'\beta_{2}(t)\right)Ax - \frac{1}{2}x'A'\left(\beta_{1}(t) + \beta_{2}(t)x\right)$$

$$+ \frac{1}{2}\sum_{i}\sum_{j}\sigma_{ij}\beta_{2,ij}(t) + \dot{\beta}_{0}(t) + \dot{\beta}'_{1}(t)x + \frac{1}{2}x'\dot{\beta}_{2}(t)x$$

Recall we can also use the trace operator to write: P i P j σijβ2,ij (t) = tr (Σ β2(t)).

Using the expressions derived above, and matching the terms which do not involve x', the ones linear in the vector x, and the ones quadratic in the vector x we obtain a system of ordinary differential equations (o.d.e.'s) for β0, β<sup>1</sup> and β2. The o.d.e. have a "forcing" variable which is indexed by time by the presence of  $\{X(t)\}$  for  $t \geq 0$ . In particular we get three first order o.d.e.'s: one for the scalar  $\beta_0$ , one for vector  $\beta_1$ , and one for the matrix  $\beta_2$ . We summarize this in the following lemma

LEMMA 2. Given the quadratic guess for u the HBJ implies the following system of o.d.e. given the path for X

$$\rho\beta_0(t) = \frac{1}{2}\beta_1'(t)B\Gamma^{-1}B'\beta_1(t) + \frac{1}{2}tr\left(\Sigma\beta_2(t)\right) + \dot{\beta}_0(t)$$

$$\rho\beta_1'(t) = -X'(t)\Theta + \beta_1'(t)B\Gamma^{-1}B'\beta_2(t) - \beta_1'(t)A + \dot{\beta}_1'(t)$$

$$\frac{1}{2}\rho\beta_2(t) = -\frac{1}{2}Q + \frac{1}{2}\beta_2(t)B\Gamma^{-1}B'\beta_2(t) - \frac{1}{2}\beta_2(t)A - \frac{1}{2}A'\beta_2(t) + \frac{1}{2}\dot{\beta}_2(t)$$

We can rearrange the system of o.d.e.s omitting the t index as:

$$\dot{\beta}_0 = \rho \beta_0 - \frac{1}{2} \beta_1' B \Gamma^{-1} B' \beta_1 - \frac{1}{2} tr \left( \Sigma \bar{\beta}_2 \right)$$
 (8)

$$\dot{\beta}_1' = \beta_1' \left( \rho I_n + A \right) + X'\Theta - \beta_1' B \Gamma^{-1} B' \beta_2 \tag{9}$$

$$\dot{\beta}_2 = Q - \beta_2 B \Gamma^{-1} B' \beta_2 + \beta_2 A + A' \beta_2 + \rho \beta_2 \tag{10}$$

The next lemma is useful to characterize  $\beta_2$ .

LEMMA 3. Concavity of  $u(\cdot,t)$  for each t. Fix an arbitrary path X(t). The function u(x,t) is concave in x for each t. This implies that each  $\beta_2(t)$  is negative semi-definite.

To show that  $u(\cdot,t)$  is concave, use the sequence problem, as well as the integrated version for the path of x as a function of the path of a. Then, for two initial values, there are associated paths  $a_1$  and  $a_2$ . The weighed average path is feasible, given the linearity of the integrated versions. The objective function is concave, given the assumptions on Q and  $\Gamma$ .

Steady state HBJ for  $\bar{u}$ . In this case  $\dot{\beta}_i = 0$  for i = 0, 1, 2. We solve the steady state values, denoting them by  $\bar{\beta}_i$ , assuming that the steady state value for X is denoted by  $\bar{X}$ . We use that u(x,t) is concave in x to chose the correct solution for  $\bar{\beta}_2$ . We solve, recursively, first for  $\bar{\beta}_2$ , then  $\bar{\beta}_1$  as function of  $\bar{\beta}_2$ , and  $\bar{X}$ , and then  $\bar{\beta}_0$  as a function  $\bar{\beta}_1$ ,  $\bar{\beta}_2$  and  $\bar{X}$ .

<span id="page-17-2"></span>from 
$$\dot{\beta}_0 = 0 : \rho \bar{\beta}_0 = \frac{1}{2} \bar{\beta}_1' B \Gamma^{-1} B' \bar{\beta}_1 + tr \left( \Sigma \bar{\beta}_2 \right)$$
 (11)

from 
$$\dot{\beta}_1 = 0 : \Theta' \bar{X} = \left(\rho I_n + A' - \bar{\beta}_2 B \Gamma^{-1} B'\right) \bar{\beta}_1$$
 (12)

<span id="page-17-0"></span>from 
$$\dot{\beta}_2 = 0 : \bar{\beta}_2 B \Gamma^{-1} B' \bar{\beta}_2 = Q + \bar{\beta}_2 A + A' \bar{\beta}_2 + \rho \bar{\beta}_2$$
 (13)

Next we turn to the interpretation and implications of the steady state HBJ, and the Riccati equation for  $\beta_2$ . Note that the problem for an agent in steady state, and its corresponding value function  $\bar{u}$ , are identical to one for which there is a linear term in the value function in a single agent Linear Quadratic problem. As such, for given value of  $\bar{X}$ , it is a simple infinite horizon, linear quadratic problem, and then  $\beta_i$  are constant for i = 0, 1, 2, i.e. they are equal to  $\bar{\beta}_i$ . In this case the value of  $\bar{\beta}_2$  is independent of  $\bar{X}$ , since this has become a parameter on the LQ problem. The solution of  $\bar{\beta}_2$  is the standard (stable) solution of the algebraic Riccati equation in equation (13). This is a well known property of the linear-quadratic regulator problem.

#### 4.2 System of o.d.e.'s describing MFG equilibrium

In this section we derive a pair of differential equations with a state and co-state structure. The first result is to derive an o.d.e. for X, given the parameterization of the value function. We obtain the following proposition

<span id="page-17-1"></span>PROPOSITION 2. In the equilibrium of a MFG the vector X(t) solves the following o.d.e. given a path of  $\beta_1(t)$  and  $\beta_2(t)$ :

$$\dot{X}(t) = B\Gamma^{-1}B'\beta_1(t) + \left(B\Gamma^{-1}B'\beta_2(t) - A\right)X(t) \text{ for all } t \ge 0$$
(14)

The proof of Proposition 2 uses the Kolmogorov forward equation and the time derivative in the defintion of X to obtain  $\dot{X} = \int x m_t(x,t) dx$ . Furthermore it uses the form of  $H_p(u_x(x,t),x)$ , and the shape of  $u_x$ .

In the remaining of this section we derive a dynamical system that describe the equilibrium for the MFG. We argue that it is given by the constant solution to the algebraic Riccati equation for  $\beta_2$ , and the saddle path solution for a 2n first order linear system for  $(X, \beta_1)$ , given  $\beta_2$ . Finally, we can obtain  $\beta_0$  as the solution of a one dimensional o.d.e., given  $\beta_1, \beta_2$ .

We can now write the dynamical system for  $\{X, \beta_0, \beta_1, \beta_2\}$ :

<span id="page-18-0"></span>
$$\dot{\beta}_2 = Q - \beta_2 B \Gamma^{-1} B' \beta_2 + \beta_2 A + A' \beta_2 + \rho \beta_2 \tag{15}$$

<span id="page-18-1"></span>
$$\dot{\beta}_1 = \left(\rho I_n + A' - \beta_2 B \Gamma^{-1} B'\right) \beta_1 + \Theta' X \tag{16}$$

<span id="page-18-2"></span>
$$\dot{X} = B\Gamma^{-1}B'\beta_1 + \left(B\Gamma^{-1}B'\beta_2 - A\right)X\tag{17}$$

<span id="page-18-4"></span><span id="page-18-3"></span>
$$\dot{\beta}_0 = \rho \beta_0 - \frac{1}{2} \beta_1' B \Gamma^{-1} B' \beta_1 - \frac{1}{2} tr \left( \Sigma \beta_2 \right)$$

$$\tag{18}$$

where the only initial condition is for X(0), and  $\beta_2$  must be negative definite for all t. Note that the system is recursive, in that first one solve for the path of  $\beta_2$  solving the Riccati equation, then given  $\beta_2$  one solves for the 2n linear dimensional system, with initial condition X(0), and finally with the path of  $\beta_1$  given one can solve for the scalar  $\beta_0$ .

<span id="page-18-5"></span>PROPOSITION 3. In any equilibrium of the MFG we have  $\beta_2(t) = \bar{\beta}_2$ , where  $\bar{\beta}_2$  is the unique negative definite solution of the Riccati equation (13). The system equation (15), equation (16), equation (17) and equation (18) has the following recursive block of 2n first order linear o.d.e. for  $(X, \beta_1)$ :

$$\begin{bmatrix} \dot{\beta}_1 \\ \dot{X} \end{bmatrix} = \begin{bmatrix} \rho I_n + A' - \bar{\beta}_2 B \Gamma^{-1} B' & \Theta' \\ B \Gamma^{-1} B' & -A + B \Gamma^{-1} B' \bar{\beta}_2 \end{bmatrix} \begin{bmatrix} \beta_1 \\ X \end{bmatrix} \equiv \mathcal{H} \begin{bmatrix} \beta_1 \\ X \end{bmatrix}$$
(19)

Three comments are in order. First, if  $\Theta$  is symmetric, the matrix  $\mathcal{H}$  is a Hamiltonian matrix, i.e. the sum of the diagonal blocks and its transpose is  $\rho I_n$ . We refer to it as MFG Hamiltonian matrix to distinguish it from the Hamiltonian matrix from a single agent decision Linear Quadratic problem. Second, note that the matrix  $\mathcal{H}$ , depends on  $\bar{\beta}_2$ , which, as explained above, is independent of the steady state  $\bar{X}$ . We turn next on what are the possible values for the steady state  $\bar{X}$ . It is clear that  $(\beta_1, \bar{X}) = (0,0)$  is a steady state of the system, i.e.  $\bar{X} = \bar{\beta}_1 = 0$  is a constant solution for equation (15) and equation (17) with X(0) = X. Later on we will show that, generically in Q, the value  $\bar{X} = 0$ , is the only steady state. Third, recall that while there is an initial condition for X, there is no initial condition

for β1.

### 4.3 MFG Equilibrium as a Saddle Path for (β1, X)

In this section we study the saddle path solution of the 2n linear dimensional system in [equation](#page-18-4) [\(19\)](#page-18-4) for the pair (β1, X). They have the interpretation of a co-state, and state pair, with an initial condition fo X and a boundary condition for β1.

<span id="page-19-3"></span>Proposition 4. Fix an arbitrary X(0). We look for a solution for the constant coefficient linear differential [equation](#page-18-4) [\(19\)](#page-18-4) where β1(t) = SX(t) for all t ≥ 0 for a fixed matrix S. This matrix has to satisfy the Riccati like equation:

$$SB\Gamma^{-1}B'S = S\left(A - B\Gamma^{-1}B'\bar{\beta}_2\right) + \left(A' - \bar{\beta}_2B\Gamma^{-1}B'\right)S + \rho S + \Theta'$$
(20)

The solutions for (β1, X) where β<sup>1</sup> = SX imply the following first order linear system for X:

<span id="page-19-1"></span>
$$\dot{X} = \left[ B\Gamma^{-1}B'S - A + B\Gamma^{-1}B'\bar{\beta}_2 \right] X \equiv \left[ J + G \right] X \text{ where}$$
 (21)

$$J \equiv B\Gamma^{-1}B'S \text{ and } G \equiv B\Gamma^{-1}B'\bar{\beta}_2 - A$$
 (22)

The expression for the o.d.e. in [equation](#page-19-0) [\(21\)](#page-19-0) for X has two different matrices: J that depends on the coupling of the decisions for the agents, i.e. on Θ, and G which does not, i.e. G gives the dynamics of the model if Θ = 0, or putting it differently G gives the (average) dynamics of a single agent linear quadratic regulator. This suggest to write the MFG Hamiltonian matrix H as:

<span id="page-19-2"></span><span id="page-19-0"></span>
$$\mathcal{H} = \begin{bmatrix} \rho I_n - G' & \Theta' \\ B\Gamma^{-1}B' & G \end{bmatrix}$$
 (23)

This decomposition of the law of motion of X implies the following decomposition of x:

$$x(t) = z(t) + X(t)$$
,  $dX(t) = [J + G]X(t) dt$  and  $dz(t) = Gz(t) dt + \Sigma^{1/2} dW(t)$ ,

where the process for {z} is the solution of the Linear Quadratic regulator with Θ = 0, which under our assumptions AM has all the eigenvalues of G with its real part strictly smaller than ρ/2, and so {E[z(t)|z(0)]}t≥<sup>0</sup> ∈ L 2 ρ .

We analyze the law of motion of {X(t)} with two related type of related results. Eeach solution S of [equation](#page-19-1) [\(20\)](#page-19-1) implies a matrix M ≡ J + G whose n eigenvalues are a subset of the 2n eigenvalues of the matrix H. This is a consequence from the fact that the linear system (β˙ <sup>1</sup>, X˙ ) ′ = H (β˙ <sup>1</sup>, X˙ ) has no initial condition for β<sup>1</sup> at t = 0. Hence, the first type of result analyzes the eigenvalues of the 2n × 2n matrix H, in [Proposition 5.](#page-20-0) The second type of result, in the next section, analyzes the eigenvalues of the n × n matrix M ≡ J + G directly, by examining a related Riccati equation. The following proposition is a standard result, given the structure of the matrix H.

<span id="page-20-0"></span>Proposition 5. If Θ is symmetric the eigenvalues of H occur in quadruples: if λ is an eigenvalue of H, then the following are also eigenvalues of the same matrix: −λ + ρ, λ ∗ , and −λ <sup>∗</sup> + ρ, where <sup>∗</sup> denotes complex conjugation.

[Proposition 5](#page-20-0) is a consequence that H, for the case of symmetric Θ, has the structure of Hamiltonian matrix. [Proposition 5](#page-20-0) has an important implication for uniqueness of equilibrium.

<span id="page-20-3"></span>Proposition 6. There is at most one equilibrium to the MFG for which X˙ (t) = [J + G]X(t), with {X(t)}t≥<sup>0</sup> ∈ L 2 ρ for all initial conditions X(0) ∈ R n .

In our definition of equilibrium we have imposed the requirement that the path {X(t)}t≥<sup>0</sup> ∈ L 2 ρ . The next lemma shows that, when <sup>1</sup> <sup>2</sup>Q + Θ is positive definite, if {X(t)}t≥<sup>0</sup> ∈/ L 2 ρ , i.e. if the real part of a root of the matrix J + G is higher or equal than ρ/2, then the value function of the representative agent diverges towards minus infinity. In other words, the next lemma explains why we require for an equilibrium that {X(t)}t≥<sup>0</sup> ∈ L 2 ρ .

<span id="page-20-1"></span>Lemma 4. If M = J + G has an eigenvalue with the real part larger or equal to ρ/2, and if <sup>1</sup> <sup>2</sup>Q + Θ is positive definite, there is no finite solution for the value function of the representative agent, i.e. the value function of an agent with x(0) = X(0) diverges towards minus infinity for some values of X(0). Conversely, a sufficient condition for the value function u(x, t) to be finite at all t ≥ 0 for all initial conditions X(0), is that the real part of all the eigenvalues of M ≡ J + G be smaller than ρ/2.

#### <span id="page-20-2"></span>4.4 Riccati equation for the MFG dynamics

We start the section describing an auxiliar Riccati equation for S, which gives an alternative characterization of J + G.

<span id="page-21-3"></span>Proposition 7. Let P an n × n matrix that solves the following Riccati equation:

$$PB\Gamma^{-1}B'P = (Q + \Theta') + \rho P + PA + A'P$$
(24)

Then S can be obtained as:

<span id="page-21-1"></span><span id="page-21-0"></span>
$$P = S + \bar{\beta}_2 \tag{25}$$

which implies that the matrix J + G given the dynamics is:

$$J + G = B\Gamma^{-1}B'P - A \tag{26}$$

The advantage of the auxiliar Riccati equation in [equation](#page-21-0) [\(24\)](#page-21-0) is that we can give necessary and sufficient conditions for existence and uniqueness of the equilibrium of the MFG by using known results for the solutions of the Riccati equations for the linear-quadratic regulator problem. Moreover, we can analyze the effect of Θ on the dynamics of X by using known results about the monotonicity of maximal solutions of Riccati [equation](#page-21-0) [\(24\)](#page-21-0), as a function of matrix Q + Θ′ . As a preliminary result, note that BΓ <sup>−</sup><sup>1</sup>B′P is a real symmetric matrix, so all its eigenvalues are real. Thus, if J + G has complex eigenvalues, it must be due to A.

In the appendix [Appendix A.1](#page-45-0) we map the elements (matrices, vectors and scalars) which are used in [equation](#page-21-0) [\(24\)](#page-21-0) and [equation](#page-21-1) [\(26\)](#page-21-1) describing the equilibrium of a MFG into the elements typically used to describe the algebraic Riccati equation for the single agent undiscounted linear-quadratic regulator problem. That literature has extensively studied the relationship between solutions of the algebraic Riccati equation and stable close loop solutions of the undiscounted linear-quadratic regulator problem. We also relate our maintained assumptions with the concepts of stabilizability and detectability used in the linear-quadratic regulator problem. We start with a necessary condition for the existence of an equilibrium is that there is a limit to the strategic complementarity.

<span id="page-21-2"></span>Proposition 8. Let E ≡ Θ + Q + A′ + ρ 2 In (BΓ <sup>−</sup><sup>1</sup>B′ ) −1 A + ρ 2 In . Then: (i) if there is a MFG equilibrium, then E must be positive semi-definite, and (ii) if Q + Θ is positive definite, then there exists a unique MFG equilibrium.

Several comments are in order.

(I) The necessary and sufficient conditions for the existence and uniqueness of an MFG equilibrium are different, in particular the sufficiency includes that Q+ Θ is positive definite. Indeed, one can construct a unique MFG equilibrium where E is positive definite but Q + Θ is not positive definite. A simple example is the case of one dimension, i.e. n = 1 in which the positive definite condition for E is necessary and sufficient. In [Section 4.6,](#page-24-0) it is shown that the necessary and sufficient condition for the existence and uniqueness of an equilibrium coincide for the n = 1 case. In this case we can write

$$E = \Theta + Q + \left(A' + \frac{\rho}{2}I_n\right) \left(B\Gamma^{-1}B'\right)^{-1} \left(A + \frac{\rho}{2}I_n\right) = \theta + q + (a + \rho/2)^2 \gamma_B$$

where θ = Θ, q = Q, a = A and γ<sup>B</sup> = (B<sup>−</sup><sup>1</sup>Γ <sup>−</sup><sup>1</sup>B′ ) <sup>−</sup><sup>1</sup> = 1/ (BΓ <sup>−</sup><sup>1</sup>B′ ) are all scalars. Thus if the scalar E > 0, then an unique equilibrium exists, and otherwise if E ≤ 0, no equilibrium exists.

(II) Furthermore, for n > 1 we can construct examples where the necessary condition that E is positive definite holds, but the sufficient conditions Q + Θ is violated, and where no MFG equilibrium exists. Take n = 2 and let B = Γ = I2. Let Q + Θ = − 1 2 I2, and thus E = Q + Θ + (A′ + ρ 2 I2)(A + ρ 2 I2) where

$$A + \frac{\rho}{2}I_2 = \begin{bmatrix} 0.0 & 1.0 \\ -1.0 & 0.1 \end{bmatrix}$$

A computation shows that the eigenvalues of E are both strictly positive, i.e. they are approximately than 0.40 and 0.61. The four eigenvalues of H˜ = H− <sup>ρ</sup> 2 I<sup>2</sup> are purely imaginary, so the real part of the four eigenvalues of H are equal to ρ/2. Thus, no MFG equilibrium exists for this example.

(III) The necessary conditions in [Proposition 8](#page-21-2) have a clear economic interpretation. Recall that concavity of the LQ problem in the own agent state x requires that that Q and Γ be positive definite. The expression for E takes into account the strength of strategic complementarity. Thus Q+ Θ can be negative definite, as long as A′ + ρ 2 In (BΓ <sup>−</sup><sup>1</sup>B′ ) −1 A + ρ 2 In be large enough.

The sufficient condition from [Proposition 8](#page-21-2) requires that the most strategic complementarity that it can be considered is Θ = −Q + ϵI<sup>n</sup> for some ϵ > 0. Yet we have seen that there are examples, such as the one dimensional case, where this condition is not required. The next two propositions considers the case of large discount rate ρ, or the case where A has a large diagonal element, or the case of large curvature on the cost of actions, where it is sufficient to assume that E is positive definite, regardless of Q + Θ.

First we consider the case of large ρ or large diagonal for A. Intuitively, in the case of large discount rate, the agent is much less concerned with the future, which makes strategic complementarity on the state not an issue. Also, if A has large eigenvalues, the state itself has a strong pull toward the steady state, which can counterbalance the de-stabilizing effect of strategic complementarity.

<span id="page-23-1"></span>Proposition 9. Fix Q, Θ, B, Γ and A(k) = A + a0kI<sup>n</sup> and ρ(k) = ρ0k, where a<sup>0</sup> ≥ 0, ρ<sup>0</sup> ≥ 0 and a<sup>0</sup> + ρ<sup>0</sup> > 0 and where k is a non-negative scalar. For large enough k, there is a unique MFG equilibrium. Moreover, the eigenvalues of the law of motion of {X} are λi(k) = −a0k + O(1/k<sup>2</sup> ) for i = 1, 2 . . . , n.

We note that the expression for the eigenvalues, up to the term O(1/k) are the same as in the one dimensional case.

The next proposition analyzes the case where Γ is very large. In this case, it is inconvenient for the decision maker to change its action, so even of Q + Θ were negative definite, there will be a unique stable MFG equilibrium.

<span id="page-23-2"></span>Proposition 10. Fix Q, Θ, B, and ρ > 0. Assume that (A′ + ρ/2)(B′ ) <sup>−</sup><sup>1</sup>Γ0B<sup>−</sup><sup>1</sup> (A′ + ρ/2) be positive definite. Let Γ(k) = k <sup>2</sup>Γ0. For large enough k, there is a unique MFG equilibrium. Moreover, if ρ is small relative to A so that det(A′ (B′ ) <sup>−</sup><sup>1</sup>Γ0B<sup>−</sup><sup>1</sup> (A−ρIn)) > 0, then eigenvalues of the law of motion of {X} are negative, i.e. limk→∞ λi(k) < 0 for i = 1, 2 . . . , n.

Next we adapt the results for the undiscounted case in [Wimmer](#page-44-9) [\(1985\)](#page-44-9) to study the comparative static of the equilibrium with respect to the degree of strategic complementarity, as measured by the (partial) order Θ in terms of positive definite matrices. In particular, we use uses the partial order for matrices where M<sup>1</sup> ≥ M<sup>2</sup> is defined by requiring that M<sup>1</sup> − M<sup>2</sup> is positive definite.

<span id="page-23-0"></span>Proposition 11. Assume that Θ + Q is positive semi-definite and E is positive definite. Take two matrices Θ0, Θ1. Assume that Θ<sup>0</sup> − Θ<sup>1</sup> is positive definite. Let P0, P<sup>1</sup> be the maximal solutions for each the Riccati [equation](#page-21-0) [\(24\)](#page-21-0) for each Θ<sup>i</sup> , where the real part of the eigenvalues of BΓ <sup>−</sup><sup>1</sup>B′P<sup>i</sup> − A are smaller than <sup>ρ</sup> 2 . Then P<sup>1</sup> − P<sup>0</sup> is positive definite.

[Proposition 11](#page-23-0) can be used to study how the dynamics of X depends on the degree of strategic complementarity. This is because J + G = BΓ <sup>−</sup><sup>1</sup>B′P − A, where P depends on Θ. In particular, as explained in [Section 2](#page-5-0) and illustrated in the example, a matrix Θ that is more positive definite indicates less strategic complementarity, sot that Θ<sup>0</sup> represents a MFG with more strategic complementarity than Θ1. In this case P<sup>1</sup> is "more" positive definite than P0. Using the Courant min max principle, a matrix that is more positive definite, has higher eigenvalues. Thus BΓ <sup>−</sup><sup>1</sup>B′P<sup>1</sup> has larger eigenvalues than BΓ <sup>−</sup><sup>1</sup>B′P0, and thus converges faster. To summarize, higher strategic complementarity reduces the speed of convergence.

#### 4.5 Uniqueness and Stability of the Steady State

Now we are ready to discuss the uniqueness steady states of the model, and its stability. We conclude that, at least for small discount rate, the steady state is unique, and given by X¯ = 0, and that the corresponding MFG equilibrium exist, it is unique, and converges to the zero steady state.

The first proposition states that generically

Proposition 12. For any parameters, X¯ = β¯ <sup>1</sup> = 0 is a constant solution for [equation](#page-18-0) [\(15\)](#page-18-0) and [equation](#page-18-2) [\(17\)](#page-18-2) with X(0) = X. Then there is a non-zero steady state X¯ ̸= 0 if and only if 0 = det Θ + Q + A′ (BΓ <sup>−</sup><sup>1</sup>B′ ) <sup>−</sup><sup>1</sup> A + ρ (BΓ <sup>−</sup><sup>1</sup>B′ ) <sup>−</sup><sup>1</sup> A . Thus, for generic positive definite matrices Q, or for generic symmetric matrices Θ , only the X¯ = 0 steady state exists.

The next proposition assume that below some level of strategic complementarity, for small discount rates, the MFG equilibrium is unique, the steady state is unique, and the equilibrium X(t) converges to the steady state.

<span id="page-24-1"></span>Proposition 13. Assume Θ + Q is positive definite. There exist ¯ρ ∈ R<sup>+</sup> such that for all ρ ∈ [0, ρ¯), then: (i) the MFG equilibrium exists and it unique, (ii) the steady state X¯ = 0 is unique, and (iii) for any X(0), the equilibrium path X(t) → 0 as t → ∞.

#### <span id="page-24-0"></span>4.6 Analysis of the Scalar Case

In this section we fully characterize the case where the state is a scalar i.e. n = 1. In particular we study the speed of convergence, existence, and uniqueness of equilibrium as function of the strength of strategic complementarity. While x is a scalar, α is a k ≥ 1 dimensional vector.

We use the following notation for each of the the following three scalars Q = q ≥ 0, A = a, Θ = θ. In general Γ is a k × k matrix and B a 1 × k vector. We define the scalar γ<sup>B</sup> ≡ 1/ (BΓ <sup>−</sup><sup>1</sup>B′ ).

In the scalar case, the dynamical system X˙ = (J + G)X, where J + G is a scalar, and given [Proposition 5](#page-20-0) will have to be the eigenvalue of H where the real part is smaller, which we denote by λ1, so that X˙ = λ1X. Note that for the value function u to be finite [Lemma 4](#page-20-1) shows it is sufficient that λ<sup>1</sup> − ρ/2 < 0 and necessary if q + θ/1 < 0. Computation of the eigenvalues gives:

$$\lambda_{2,1} = \frac{\rho}{2} \pm \sqrt{\left(\frac{\rho}{2}\right)^2 - \det\left(\mathcal{H}\right)} \text{ where } \left(\frac{\rho}{2}\right)^2 - \det\left(\mathcal{H}\right) = \left(\frac{\rho}{2} + a\right)^2 + \frac{q + \theta}{\gamma_B}$$

We summarize the results in the following proposition.

<span id="page-25-0"></span>PROPOSITION 14. Define the thresholds  $\theta^*$  and  $\theta^{**}$  for the value of the strategic complementarity  $\theta$  as:

$$0 < -\theta^* \equiv a(a+\rho)\gamma_B + q < -\theta^{**} \equiv \gamma_B \left(\frac{\rho}{2} + a\right)^2 + q$$

The value of  $-\theta^*$  is larger than one and increasing in  $\rho$ , a and q. The two thresholds are related by  $-\theta^{**} = -\theta^* + \gamma_B(\frac{\rho}{2})^2$ . The equilibrium has  $X(t) = e^{\lambda_1 t} X(0)$  with:

$$\frac{\partial \lambda_1}{\partial k} < 0$$
, and  $\frac{\partial \lambda_1}{\partial (q+\theta)/\gamma_B} < 0$ 

for  $-\theta < -\theta^{**}$ . Whenever the equilibrium exists, it is unique. Furthermore

- 1. If  $-\infty < -\theta < -\theta^*$  there is a unique saddle path stable solution of the o.d.e. where X(t) converges to  $\bar{X} = 0$  at the rate  $\lambda_1 < 0$ . This is an equilibrium of the MFG.
- 2. If  $-\theta = -\theta^*$  there is a unique solution of the o.d.e. with  $\lambda_1 = 0$ , where X(t) = X(0) all t. This is an equilibrium of the MFG.
- 3. If  $-\theta^* < -\theta < -\theta^{**}$  there is a unique solution of the o.d.e where X(t) diverges to  $\pm \infty$  at the rate  $0 < \lambda_1 < \rho/2$ , depending on the sign of X(0). This is an equilibrium of the MFG.
- 4. If  $-\theta \ge -\theta^{**}$  there is no equilibrium of the MFG.

The comparative static of  $-\theta^*$  are quite intuitive: increases in  $a, \rho, \gamma_B$  or q makes the agent to disregard the effect of matching each other decision, i.e. increase the desire to make  $x^2$  small and then increase the critical value for the threshold  $-\theta^*$ .

It is useful to analyze the equilibrium as the solution of the quadratic equation (24) since Proposition 7 shows that  $J + G = B\Gamma^{-1}B'P - A = P/\gamma_B - a$ . The quadratic equation  $0 = \frac{P^2}{\gamma_B} - (q + \theta) - (2a + \rho)P$  has a solution

$$P = \frac{(2a+\rho) - \sqrt{(2a+\rho)^2 + 4(q+\theta)/\gamma_B}}{2/\gamma_B} \implies \frac{P}{\gamma_B} - (a + \frac{\rho}{2}) = -\sqrt{(a + \frac{\rho}{2})^2 + \frac{q+\theta}{\gamma_B}}$$

which is real if and only if

$$0 \ge \frac{P}{\gamma_B} - \left(a + \frac{\rho}{2}\right) \iff -\theta < -\theta^{**} \text{ or equivalently}$$
$$0 \le q + \theta + \left(a + \frac{\rho}{2}\right)^2 \gamma_B \equiv q + \theta + \left(a + \frac{\rho}{2}\right) \left(B\Gamma^{-1}B'\right)^{-1} \left(a + \frac{\rho}{2}\right)$$

The last condition is the scalar version of the necessary and sufficient condition for a real solution in of the Riccati equation [Proposition 8,](#page-21-2) namely that the matrix

$$E = Q + \Theta + \left(A + \frac{\rho}{2}I_n\right)' B^{-1}\Gamma(B')^{-1} \left(A + \frac{\rho}{2}I_n\right)$$

be positive definite. Thus in the scalar case, whenever the necessary condition for the existence of an equilibrium is satisfied, then there is a unique real solution.

As in the general case, (β1, X¯) = (0, 0) is a steady state. We know analyze the conditions under which it is the only steady state. As in the general case, this is equivalent to

$$\begin{bmatrix} 0 \\ 0 \end{bmatrix} = \mathcal{H} \begin{bmatrix} \bar{\beta}_1 \\ \bar{X} \end{bmatrix}$$

so a non-zero steady state requires that H be singular. Using the computation above, this occurs if and only if θ = θ ∗ . Thus, fixing q, θ, γ<sup>B</sup> and a > 0, having a non-zero steady state is non-generic in ρ. Moreover, if a <sup>2</sup>γ<sup>B</sup> + θ + q > 0, then λ<sup>1</sup> < 0 for any ρ.

# 5 Planner's problem

In this section we study two planner problems: a utilitarian planner problem and a planner problem whose solution coincide with the equilibrium.

The utilitarian planner period return function is given by the cross sectional integral of the period return of each player. The planner controls the action of the agents at each time and state a(x, t). The planner takes as given the law of motion given by the Aolmogorov Forward equation. We write the Lagrangian for this problem, appending a Lagrange multiplier to the law of motion for m for each x, t. We obtain a representation of the Lagrangian which has the same structure as the equilibrium for the mean field game. Using this representation we relate the properties of the equilibrium to the one of the utilitarian planner. The utilitarian planner period return function is thus:

$$\mathcal{U}(m) \equiv \int F(x,m)m(x)dx = -\frac{1}{2} \int x'Qx \, m(x)dx - \left(\int z \, m(z) \, dz\right)' \Theta\left(\int z \, m(z) \, dz\right)$$
$$= -\frac{1}{2} \int x'Qx \, m(x)dx - X'\Theta X \tag{27}$$

This function is different from the Potential of the static game  $\mathcal{F}$  introduced above in equation (1). To see this this differentiating with respect to m we obtain

$$\frac{\partial \mathcal{U}(m,x)}{\partial m} = -\frac{1}{2}x'Qx - x'\Theta X - X'\Theta X = -\frac{1}{2}x'Qx - X'\left(\Theta' + \Theta\right)x \neq F(x,m)$$

There are two differences between  $\mathcal{U}$  and  $\mathcal{F}$ . For the potential  $\mathcal{F}$  defined in equation (1) we require  $\Theta$  to be symmetric. Second, in the potential  $\mathcal{F}$  there is a factor 1/2 multiplying  $X'\Theta X$ , which is absent from the utilitarian planners problem. This factor is responsible for the difference in the equilibrium path vs the solution of the utilitarian planner.

We let  $e^{-\rho t}\lambda(x,t)$  be the Lagrange multiplier for the Kolmogorov equation at time t and state x. The Lagrangian for the utilitarian planner problem is:

$$L = \max_{\{m,a\}} \min_{\{\lambda\}} \lim_{T \to \infty} \int_0^T e^{-\rho t} \left[ \mathcal{U}(m(t)) - \frac{1}{2} \int \alpha'(x,t) \Gamma \alpha(x,t) m(x,t) dx \right] dt$$

$$+ \int_0^T \int e^{-\rho t} \lambda(x,t) \operatorname{div} \left( \left( B\alpha(x,t) - Ax \right) m(x,t) \right) dx dt$$

$$+ \int_0^T \int e^{-\rho t} \lambda(x,t) \left( \frac{1}{2} tr \left( \Sigma m_{xx}(x,t) \right) - m_t(x,t) \right) dx dt$$
(28)

where  $m_0(x)$  is given. We assume that  $\lambda(x,t)$  and  $\lambda_x(x,t)$  satisfy:

<span id="page-27-0"></span>
$$\lim_{||x||\to\infty}\frac{\lambda(x,t)}{||x||^2}<\infty \text{ and } \lim_{||x||\to\infty}\frac{||\lambda_x(x,t)||}{||x||}<\infty \text{ for all } t$$

As before, we restrict m so that there is a r > 2 so that  $\int ||x||^r m(x,t) dx < \infty$  for all t > 0.

<span id="page-27-1"></span>PROPOSITION 15. The solution of the utilitarian planner problem is characterized by the following set of coupled partial differential equations for all  $t \geq 0$  and  $x \in \mathbb{R}^n$ :

$$\rho\lambda(x,t) = -\frac{1}{2}x'Qx - X(t)'(\Theta' + \Theta)x + H(\lambda_x(x,t),x) + \frac{1}{2}tr\left(\Sigma\lambda_{xx}(x,t)\right) + \lambda_t(x,t)$$
  
$$m_t(x,t) = -div\left(H_p(\lambda_x(x,t),x)m(x,t)\right) + \frac{1}{2}tr\left(\Sigma m_{xx}(x,t)\right),$$

and  $X(t) = \int x m(x,t) dx$  for all  $t \geq 0$  and where  $m(x,0) = m_0(x)$  all  $x \in \mathbb{R}^n$ .

Few comments are in order. Note that the Lagrange multiplier λ(x, t) in the utilitarian planner's problem plays the same role than the value function u(x, t) in the equilibrium of the MFG, they both solve an almost identical HBJ equation. There are two differences between the two p.d.e.'s in the flow return of the HBJ equation. The first difference is that even if we allowed Θ to be non-symmetric, the cross terms in the p.d.e. for λ is symmetric. The second, and most important difference, is that when Θ is symmetric, the term with the coupling in the utilitarian planners is multiplied by two, which has an important implication, which we write in the next corollary. This factor is quite intuitive, since the planner takes into account the effect of an agent in the rest of the population.

Corollary 1. If −Θ is negative definite, so the period return features strategic substitutability, the planner's problem has faster convergence than the equilibrium. If −Θ is positive definite, so the period return features strategic complementarities, then planner's solution has slower convergence to the steady state. This follows from [Proposition 7](#page-21-3) to [Proposition 11](#page-23-0) in [Section 4.4](#page-20-2) where Θ is replaced by 2 Θ.

Another immediate corollary comes from substituting the period return U in the utilitarian planner problem by the potential F. We refer to the latter planner as the Potential planner.

Corollary 2. The equilibrium coincides with the solution of the Potential Planner's problem, which is obtained by replacing the period return of the utilitarian planner U by the potential F given by [equation](#page-8-0) [\(1\)](#page-8-0) into the Lagrangian defined in [equation](#page-27-0) [\(28\)](#page-27-0).

Finally we note that our analysis of the equilibrium shows that even if the static potential F(m) is not concave in m, the equilibrium of the game is unique.

# 6 MFG with Aggregate Shocks / Common Noise

We consider now the case where all agents are exposed, besides their idiosyncratic (i.e. independent) Brownian shocks, to a common aggregate shock. This shock, for simplicity, is assumed to be given by common jump of size Υ ∈ R n <sup>+</sup> and let N <sup>+</sup>(t) and N <sup>−</sup>(t) two independent Poisson counting processes, each of them with intensity κ/2 > 0. Thus, each agent state evolves as

$$dx(t) = (B\alpha(t) - Ax(t)) dt + \Sigma^{1/2} dW(t) + \Upsilon d\mathcal{J}(t) \text{ where } \mathcal{J}(t) = N^+(t) - N^-(t)$$

The period return function is the same as in the benchmark case. We will write the value

function for the agent under the assumption, later to be verified, that the description for the stochastic process for the cross sectional average X(t) is given by:

<span id="page-29-2"></span>
$$dX(t) = MX(t)dt + \Upsilon d\mathcal{J}(t) \tag{29}$$

where we need to solve for the n × n matrix M. Heuristically, in a short time period, of length dt, we can consider that dJ (t) takes the value +1 with probability <sup>κ</sup> 2 dt, the value −1 with probability <sup>κ</sup> 2 dt, and 0 with probability 1 − κdt + o(dt).

We now denote the value function v, which has as arguments the couple (x, X), so v : R <sup>2</sup><sup>n</sup> → R. This value function satisfies the HJB equation:

$$\rho v(x,X) = -\frac{1}{2}x'Qx - X'\Theta x + H(v_x(x,X),x) + \frac{1}{2}tr(\Sigma v_{xx}(x,X))$$

$$+ v_X(x,X)'MX + \kappa \left[ \frac{1}{2}v(x+\Upsilon,X+\Upsilon) + \frac{1}{2}v(x-\Upsilon,X-\Upsilon) - v(x,X) \right]$$
(30)

where the Hamiltonian H : R <sup>n</sup> × R <sup>n</sup> → R is defined exactly as before :

$$H(p,x) = \max_{\alpha \in \mathbb{R}^k} -\frac{1}{2}\alpha'\Gamma\alpha + p'\left(B\alpha - Ax\right)$$

We note that if Υ = 0, then this reduces to our benchmark case. In this case M = J + G as described above. There are few differences in this HJB with the case where Υ = 0. First, the arguments are different, instead of (x, t) we have (x, X). This means that the instead of a time derivative in the right hand side of the HJB, we have two terms: the effect of dX times vX, and the effect of a jump +Υ or −Υ appears on both x and X.

We will guess that the value function takes the form:

<span id="page-29-1"></span><span id="page-29-0"></span>
$$v(x,X) = S_0 + X'S_1x + \frac{1}{2}x'S_2x + \frac{1}{2}X'S_3X$$
(31)

where S<sup>0</sup> is a scalar and S1, S2, S<sup>3</sup> are n×n matrices. We assume that S<sup>2</sup> and S<sup>3</sup> are symmetric matrices.

In this case, the cross sectional distribution m(x, t) follows a stochastic process. In particular, we have:

$$dm(x,t) = \left[ -div \left( H_p(v_x(x, X(t)), x) \, m(x, t) \right) + \frac{1}{2} tr \left( \sum m_{xx}(x, t) \right) \right] dt + \left( m(x - \Upsilon, t) - m(x, t) \right) dN^+(t) + \left( m(x + \Upsilon, t) - m(x, t) \right) dN^-(t)$$
(32)

Thus, the drift of m is, essentially, the same as the time derivative given by the Kolmorogov forward equation in the deterministic case. The two extra terms display the effect of the jumps. As before, we define X(t) as:

<span id="page-30-3"></span>
$$X(t) = \int x \, m(x, t) dx$$

<span id="page-30-4"></span>Proposition 16. Using the process for m in [equation](#page-29-0) [\(32\)](#page-29-0), the expression for the Hamiltonian and its derivative, and the form of the value function in [equation](#page-29-1) [\(31\)](#page-29-1) we obtain:

$$dX(t) = MX(t)dt + \Upsilon d\mathcal{J}(t) \text{ where } M = B\Gamma^{-1}B'[S_1 + S_2] - A$$
(33)

Next we use the assumed form of the value function in [equation](#page-29-1) [\(31\)](#page-29-1) and the expressions for the Hamiltonian into the HBJ in [equation](#page-29-2) [\(30\)](#page-29-2) to obtain a system of equations for S0, S1, S<sup>2</sup> and S<sup>3</sup> as a function of M.

<span id="page-30-5"></span>Proposition 17. Assume that v is as given in [equation](#page-29-1) [\(31\)](#page-29-1). The HBJ in [equation](#page-29-2) [\(30\)](#page-29-2) and the properties of the Hamiltonian give the following system of equations:

<span id="page-30-2"></span><span id="page-30-1"></span>
$$\rho S_0 = \frac{1}{2} tr \left( \Sigma S_2 \right) + \kappa \Upsilon' \left( S_1 + S_2 + S_3 \right) \Upsilon$$
(34)

$$\rho S_1 = -\Theta + S_1' B \Gamma^{-1} B' S_2 - S_1' A + M' S_1' \tag{35}$$

<span id="page-30-0"></span>
$$\rho S_2 = -Q + S_2 B \Gamma^{-1} B' S_2 - (S_2 A + A' S_2)$$
(36)

$$\frac{\rho}{2}S_3 = \frac{1}{2}S_1'B\Gamma^{-1}B'S_1 + S_3M \tag{37}$$

We sketch how, given M we can solve this system of equations for the scalar S<sup>0</sup> and matrices S1, S<sup>2</sup> and S3.. We note that from [equation](#page-30-0) [\(36\)](#page-30-0) the matrix S<sup>2</sup> can be solved given ρ, Q, A, B and Γ. It is a standard Riccati equation. Given S<sup>2</sup> and M we can use [equation](#page-30-1) [\(35\)](#page-30-1) and solve for S1. Given S<sup>1</sup> using [equation](#page-30-1) [\(35\)](#page-30-1) one can solve S3. Finally, given S1, S<sup>2</sup> and S<sup>3</sup> we can use [equation](#page-30-2) [\(34\)](#page-30-2) to solve for S0. The solution of this system is unique, since given M this is the solution of a well behaved convex maximization problem. Nevertheless the equilibrium requires we replace the value of M from [equation](#page-30-3) [\(33\)](#page-30-3). Adding this information we find out that, provided that Θ is symmetric, let P ≡ S<sup>1</sup> + S<sup>2</sup> satisfies [equation](#page-21-0) [\(24\)](#page-21-0), just as in the case without aggregate shocks, as stated in the next proposition.

<span id="page-30-6"></span>Proposition 18. The symmetric solution for [equation](#page-30-0) [\(36\)](#page-30-0) is S<sup>2</sup> = β¯, where β¯ <sup>2</sup> is the unique negative definite matrix obtained in case of Υ = 0. Let Θ be symmetric, then S<sup>1</sup> has a symmetric solution, where P = S<sup>1</sup> + S2, and where P is the the symmetric matrix that satisfies [equation](#page-21-0) [\(24\)](#page-21-0) as in [Proposition 7](#page-21-3) for the case where Υ = 0.

Note that whether S<sup>0</sup> has a finite solution depends on the values of P + S3. Instead, the solution for S<sup>3</sup> can be written as, substituting the solution for M as:

$$(I_n - D) S_3 = E$$
 where  $D \equiv \frac{2}{\rho} M$  and  $E \equiv \rho S_1' B \Gamma^{-1} B' S_1$ 

Thus, a sufficient conditions for a solution to S<sup>3</sup> is that all the real part of the eigenvalues of M are smaller than ρ/2. In this case, we can write:

$$S_3 = (I_n - D)^{-1}E = (I_n + D + D^2 + D^3 + \dots) E$$

Finally, using [equation](#page-30-3) [\(33\)](#page-30-3) we have that the coefficient for the drift of X satisfies:

$$J + G = M = B\Gamma^{-1}B'P - A$$

Hence, the analysis and conclusion of Proposition ?? and [Proposition 11](#page-23-0) for the deterministic case with Υ = 0, apply to the case with aggregate shock with Υ > 0.

# 7 Recursive Equilibrium & Identification

In this section we map the equilibrium of the linear quadratic mean field game into the recursive equilibrium where we use the "Big K-little k", notation, which here are literally X and x. This representation naturally leads to an identification result.

<span id="page-31-0"></span>Proposition 19. Consider the case with both idiosyncratic and aggregate shocks. The recursive solution is given by the following stochastic differential equations for X and x:

$$dX = [J + G] X dt + \Upsilon d\mathcal{J} = M X dt + \Upsilon d\mathcal{J}$$
$$dx = \mu^* (x, X) dt + \Sigma^{1/2} dW + \Upsilon d\mathcal{J} \text{ where}$$
$$\mu^* (x, X) = [J + G] X + G (x - X)$$
$$\alpha^* (x, X) = \Gamma^{-1} B' \left( SX + \bar{\beta}_2 x \right)$$

where recall that G does not depend on Θ, and that J + G depends on Q + Θ′ , as seen in [equation](#page-19-1) [\(20\)](#page-19-1) and [equation](#page-19-2) [\(22\)](#page-19-2).

Big K - little k representation. Note that if x = X the drift of that representative agent is the same as the equilibrium one. i.e an agent whose state equal the average. By linearity it is also the average value of the corresponding quantity, using the value of the density m(x, t) to compute the average. [Proposition 19](#page-31-0) suggest to define the deviations of x from the cross sectional mean as z(t) = x(t) − X(t), so we have the system:

$$dX(t) = [B\Gamma^{-1}B'P - A] X(t) dt + \Upsilon d\mathcal{J}(t)$$
(38)

$$dz(t) = \left[B\Gamma^{-1}B'\bar{\beta}_2 - A\right] z(t) dt + \Sigma^{1/2}dW(t)$$
(39)

<span id="page-32-3"></span><span id="page-32-2"></span><span id="page-32-1"></span>
$$\alpha(t) \equiv \alpha^*(x(t), X(t)) = \Gamma^{-1} B' P X(t) + \Gamma^{-1} B' \bar{\beta}_2 z(t)$$
(40)

<span id="page-32-4"></span>
$$\mathcal{A}(t) \equiv \alpha^*(X(t), X(t)) = \Gamma^{-1} B' P X(t) \tag{41}$$

We use this system of equations for two purposes: a result on sufficient conditions for uniqueness of equilibrium and a result on identification.

A non-identification result. We start with a simple, but nevertheless important result in lack of identification.

<span id="page-32-0"></span>Proposition 20. Suppose a data set contains a time series of agent's actions relative to the average, i.e. {z(t)}, and a time series for actions relative to averages {α(t) − A(t)} for a period t ∈ [0, T], whose values are generated by a LQ MFG with aggregate shocks. Then, this system has no information on the matrix Θ.

The proof of this result is immediate. In other words, strategic complementarity is only reveal by comparing the behavior of agents actions and states with aggregate actions states. We can also state the same result by saying that adding time effects in a panel data population regression differences out of the information on the strategic complementarity. This result is conceptually related to the so called "missing intercept" problem developed in [Wolf](#page-44-16) [\(2023\)](#page-44-16). In our case this is particularly severe problem, as [Proposition 20](#page-32-0) sates. Now we turn to an identification result.

Identification. We use the system of linear equations [38,](#page-32-1) [39,](#page-32-2) [40](#page-32-3) and [41](#page-32-4) to establish a partial identification result. We identify the strength of the strategic complementarity, as well as several of the remaining parameters. This is done, essentially, by comparing the rate at which aggregates X(t) converge to steady states, which depend on Θ with the rate at which an agent deviation from average z(t) = x(t) − X(t) converges. We give three results, in which we add more data and relax what is known.

The first result assumes that in some way all the parameters of the individual problem

with no coupling are known, or equivalently for the deviation to aggregate z(t). The we add aggregate data, and show that this identifies the matrix Θ.

<span id="page-33-1"></span>Proposition 21. Assume that the matrices Q, A, B, Γ and the scalar ρ are known. A data set with {X(t)} for a period t ∈ [0, T], is available whose values have been generated by the solution to a LQ MFG with aggregate shocks. Then there is a unique matrix Θ consistent with this MFG.

The proof is almost the contraposition of the no-identification result in [Proposition 20.](#page-32-0) The proof is constructive, so that it produces an expression for Θ. The next result relax the assumption of which parameters are known, and adds more observations.

<span id="page-33-0"></span>Proposition 22. Suppose a data set contains a time series of the cross sectional averages of two vectors {A(t), X(t)}, and a time series for the vector for an agent deviations {z(t)} for a period t ∈ [0, T], whose values are generated by a LQ MFG with aggregate shocks. Assume that the matrices Γ and B, and the scalar ρ are all known. Then there is a unique set of matrices Q, Θ′ , A consistent with the equilibrium.

Some comments on the assumptions and result are in order. First, the proof is constructive, so it gives a set of steps to compute Q, Θ′ , A as function of population moments of the time series {A(t), X(t), z(t)}. Second, we can trade off the availability of data on actions, i.e. we can avoid observing time series of {A(t)}, if we also take as known the matrix A. Third, in the scalar case, we can dispense with the assumption that B is known, if we add the assumption of observing the time series for the actions {α(t)} for a period t ∈ [0, T]. Indeed, by making the matrix Θ definite, as it will be in the scalar case, we can also identify B, as stated in the next proposition.

<span id="page-33-2"></span>Proposition 23. In addition to the assumption on [Proposition 22](#page-33-0) assume that i) Q+ Θ is positive definite, (ii) that either Θ is positive definite or negative definite, and (iii) that the data set also contains a time series of the actions {α(t)} for a period t ∈ [0, T]. Assume that the matrix Γ and the scalar ρ are all known. Then there is a unique set of matrices Q, Θ′ , A and B consistent with the equilibrium.

# 8 Extension I: Forcing Processes

In this section we specialize the problem so that the state vector x = [x (1), x(2)] ′ ∈ R n is broken into two components. One component, x (1) has n<sup>1</sup> elements and its is under the control of the agent by choice of α. The other component is x (2), which has n<sup>2</sup> elements, and it is outside the control of the agent. Thus we require that  $n = n_1 + n_2$ . The vector  $x^{(2)}$  can affect  $x^{(1)}$ , but neither  $x^{(1)}$ , nor the actions  $\alpha$  can affect the process  $x^{(2)}$ . The vector  $x^{(2)}$  are sometimes called forcing processes, or exogenous process to the agent's decision problem. To make the notation simpler, we consider the case without aggregate shocks. To be concrete this split is implemented by partitioning the matrices A and B and having some blocks with all zeros. In particular we assume:

$$A = \begin{bmatrix} A_{11} & A_{12} \\ 0_{n_1 \times n_2} & A_{22} \end{bmatrix} \text{ and } B = \begin{bmatrix} B_1 \\ 0_{n_2 \times k} \end{bmatrix}$$

where  $A_{11}$  is an  $n_1 \times n_1$  matrix,  $A_{22}$  is an  $n_2 \times n_2$  matrix,  $A_{12}$  is an  $n_1 \times n_2$  matrix, and  $B_{11}$  is an  $n_1 \times k$  matrix. The symmetric matrices Q and  $\Theta$  have the same structure i.e.:

$$Q = \begin{bmatrix} Q_{11} & Q_{12} \\ Q_{21} & \tilde{q}I_{n_2} \end{bmatrix} \text{ and } \Theta = \begin{bmatrix} \Theta_{11} & \Theta_{12} \\ \Theta_{21} & \tilde{\theta}I_{n_2} \end{bmatrix}$$

where  $I_{n_2}$  is a  $n_2 \times n_2$  identity matrix and  $\tilde{q}$  and  $\tilde{\theta}$  are arbitrary scalars. We note that, due to the exogeneity of the forcing process  $x^{(2)}$ , the scalars  $\tilde{q}$  and  $\tilde{\theta}$  have no effect on the choices of  $\alpha$ , and thus in the equilibrium. We will use  $\tilde{q}$  to ensure that Q is positive definite, provided that  $Q_{11}$  is positive definite by choosing  $\tilde{q}$  large enough. Likewise, we will use  $\tilde{\theta}$  so that  $Q + \Theta$  is positive definite, provided that  $Q_{11} + \Theta'_{11}$  is positive definite by choosing  $\tilde{\theta}$  large enough.

We note that the two Riccati-like equations which describe the equilibrium, the one for  $\bar{\beta}_2$ , S and P have a block recursive nature.

$$\bar{\beta}_2 B \Gamma^{-1} B' \bar{\beta}_2 = \bar{\beta}_2 A + A' \bar{\beta}_2 + \rho \bar{\beta}_2 + Q \tag{42}$$

<span id="page-34-2"></span><span id="page-34-1"></span>
$$PB\Gamma^{-1}B'P = PA + A'P + \rho P + Q + \Theta' \tag{43}$$

We show below that each of these equations can be solved recursively in blocks, first solving a proper Riccati equation for the upper right block of  $n_1 \times n_1$  matrices, and then solving the rest as linear equations.

<span id="page-34-3"></span>PROPOSITION 24. Assume that (i)  $B_1\Gamma B_1'$  is invertible, (ii)  $Q_{11}$  is positive definite, and (iii) that the real part of roots of  $-A_{22}$  are all smaller than  $\rho/2$ . Then,  $\bar{\beta}_2$  is the negative definite solution of the Riccati equation equation (42). Then P is the negative definite solution of the Riccati equation equation (43). The  $n_1 \times n_1$  matrices  $P_{11}$  and  $\bar{\beta}_{2,11}$  solve the Riccati

<span id="page-34-0"></span><sup>&</sup>lt;sup>3</sup>It is enough to set q larger that the largest eigenvalue of  $Q_{21}Q_{11}^{-1}Q_{12}$ .

equations:

$$P_{11}B_{1}\Gamma^{-1}B'_{1}P_{11} = P_{11}A_{11} + A'_{11}P_{11} + \rho P_{11} + Q_{11} + \Theta_{11}$$
$$\bar{\beta}_{2,11}B_{1}\Gamma^{-1}B'_{1}\bar{\beta}_{2,11} = \bar{\beta}_{2,11}A_{11} + A'_{11}\bar{\beta}_{2,11} + \rho\bar{\beta}_{2,11} + Q_{11}$$

Moreover, the eigenvalues of the equilibrium law of motion described by the  $(n_1 + n_2) \times (n_1 + n_2)$  matrix J + G is given by the  $n_1$  eigenvalues of the  $n_1 \times n_1$  matrix  $B_1\Gamma^{-1}B_1'P_{11} - A_{11}$  and  $n_2$  eigenvalues of  $n_2 \times n_2$  matrix  $-A_{22}$ .

Under the assumptions of exogenous shocks or forcing variables we can recast essentially all the previous results applying to the vector of endogenous variables  $x^{(1)}$  and  $X^{(1)}$ , and applying to the  $n_1 \times n_1$  upper left block of  $P, \bar{\beta}_2$  and S. In particular, the assumption of full rank of  $B\Gamma^{-1}B'$  corresponds to full rank of  $B_1\Gamma^{-1}B'_1$  has rank  $n_1$ , the assumption of  $Q + \Theta$  being positive definite can be replaced by the assumption that  $Q_{11} + \Theta_{11}$  is positive definite, etc..

#### 9 Extension II: Coupling with higher moments

In this section we explore an extension to the MFG where the coupling of the agent's period return uses the first  $\bar{r}$  moments of the cross sectional distribution, as opposed to just using the first moment X as in the benchmark case. To simplify the analysis of this case we assume that state is one-dimensional, so that  $x \in \mathbb{R}$  or n = 1. We denote each of the moments of x using distribution  $m(\cdot, t)$  at time t by  $M_r(t)$ , or

$$M_r(t) \equiv \int x^r m(x,t) dx$$
 for all  $t \geq 0$  and  $r = 1, 2, \dots, \bar{r}$ 

In this case the period return function is given by

$$F(x,m) + R(\alpha) \equiv -\frac{1}{2}x q x - \left(\theta_0 + \sum_{r=1}^{\bar{r}} M_r(t)\theta_r\right) x - \frac{1}{2}a' \Gamma a$$
where  $M_r \equiv \int x^r m(x) dx$ 

Three comments are in order. First, we have also added one linear terms to the value function, i.e. the product of x with the scalar  $\theta_0$ . We have done so we can set the value of  $\theta_0$  so that the cross sectional average of x is zero, as in the benchmark case. Second, since  $X(t) = M_1(t)$ , the benchmark case is obtained setting  $\bar{r} = 1$  and  $\theta_0 = 0$ . Third, in this case

we use lower-case letters for the coefficients q, γ and k are scalars. In this case:

$$\frac{\partial^2 F(x,m)}{\partial x \partial M_r(t)} = -\theta_r \text{ for } r = 1, 2, \dots, \bar{r}$$

A possible definition of strategic complementarity (substitutability) is that if the measure associated with the density m<sup>a</sup> is stochastically higher than the one associated with the density mb, then F(x, ma) − F(x, mb) is weakly increasing (decreasing) in x. This definition, together with the specification of F, means that strategic complementarity (substitutability) implies that θ<sup>r</sup> ≤ 0 (≥ 0) for r = 1, 3.5, . . . . Note that this definition of strategic complementarity/substitutability does not have implications for θ<sup>r</sup> when r = 2, 4, 6, . . . .

An equilibrium form the mean field game is now defined as:

Definition 4. An equilibrium for the MFG given m<sup>0</sup> is a value function u : R × R<sup>+</sup> → R, a density m : R × R<sup>+</sup> → R<sup>+</sup> and ¯r moments M<sup>r</sup> : R<sup>+</sup> → R for r = 1, . . . , r¯ satisfying:

$$\rho u(x,t) = -\frac{1}{2}x q x - \left(\sum_{r=1}^{\bar{r}} M_r(t)\theta_r + \theta_0\right) x + H(u_x(x,t),x) + \frac{1}{2}\sigma^2 u_{xx}(x,t) + u_t(x,t)$$

$$m_t(x,t) = -\left(H_p(u_x(x,t),x) m(x,t)\right)_x + \frac{1}{2}\sigma^2 m_{xx}(x,t)$$

for all x ∈ R <sup>n</sup> and t ≥ 0 where

$$H(p,x) = \max_{\alpha \in \mathbb{R}^k} \frac{1}{2} \alpha' \Gamma \alpha + p \ (B\alpha - ax) \text{ for all } (p,x) \in \mathbb{R}^2$$
 $M_r(t) = \int x^r m(x,t) \, dx \text{ for all } t \ge 0 \text{ and } r = 1, \dots, \bar{r}$ 

with m(x, 0) = m0(x) and appropriate boundary conditions for m and u.

We can specialize the definition of an equilibrium for a steady state as follows:

Definition 5. An steady state is given by moments M¯ <sup>r</sup> ∈ R for r = 1, . . . , r¯ and two functions ¯u : R → R and ¯m : R → R<sup>+</sup> satisfying:

$$\rho \bar{u}(x) = -\frac{1}{2}x \, q \, x - \left(\sum_{r=1}^{\bar{r}} \bar{M}_r \theta_r + \theta_0\right) x + H(\bar{u}_x, x) + \frac{1}{2}\sigma^2 \bar{u}_{xx}(x)$$
$$0 = -\left(H_p(\bar{u}_x(x), x)\bar{m}(x)\right)_x + \frac{1}{2}\sigma^2 \bar{m}_{xx}(x)$$

for all x and the vector of moments M¯ satisfies

$$\bar{M}_r = \int x^r \, \bar{m}(x) \, dx \text{ for } r = 1, \dots, \bar{r}$$

We now turn to the analysis of the equilibrium. The value function still must be of the same form, namely:

$$u(x,t) = \beta_0(t) + \beta_1(t)x + \frac{1}{2}\beta_2(t)x^2$$

We follow the same steps as before. We emphasize the parts of the analysis that differ from the benchmark case of ¯r = 1.

Hamiltonian. In this case the first order condition for a for the Hamiltonian is α <sup>∗</sup> = Γ<sup>−</sup><sup>1</sup>B′p and replacing α <sup>∗</sup> back into the Hamiltonian and its derivative we obtain:

$$H(p,x) = \frac{\gamma_B^{-1}}{2} p^2 - pax$$
 and  $H_p(p,x) = \gamma_B^{-1} p - ax$  where  $\gamma_B \equiv 1/(B\Gamma^{-1}B')$ 

Following the same steps as in the benchmark case we get that the Hamiltonian and its derivative evaluated at the derivative of the value function are:

$$H(u_x(x,t),x) = \frac{\gamma_B^{-1}}{2}(\beta_1(t) + \beta_2(t)x)^2 - pax = \left[\frac{\gamma_B^{-1}}{2}(\beta_1(t) + \beta_2(t)x)^2\right]$$
  

$$H_p(u_x(x,t),x) = \gamma_B^{-1}(\beta_1(t) + \beta_2(t)x) - ax$$

Dynamical system for the coefficients of the value function. We can now proceed as before and obtain, by matching the coefficient of the different powers of x in the HJB equation, the following set of o.d.e.'s:

$$\dot{\beta}_0 = \rho \beta_0 - \frac{1}{2} \beta_1' \gamma_B^{-1} \beta_1 - \frac{1}{2} \sigma^2 \beta_2 \tag{44}$$

$$\dot{\beta}_1 = (\rho + a) \beta_1 + \theta_0 + \sum_{r=1}^{\bar{r}} \theta_r M_r - \beta_2 \gamma_B^{-1} \beta_1$$
 (45)

$$\dot{\beta}_2 = q - \beta_2 \gamma_B^{-1} \beta_2 + \beta_2 a + a \beta_2 + \rho \beta_2 \tag{46}$$

As before, these o.d.e.'s take as given the path for M1, . . . , Mr¯. Again we must have β2(t) = β¯ <sup>2</sup> < 0, i.e. the same negative constant for all t ≥ 0, and the same we have found in the benchmark case. In this scalar case the solution of the Riccati equation  $\bar{\beta}_2$  is simply the negative root of a scalar quadratic equation:

<span id="page-38-1"></span>
$$\gamma_B^{-1}\bar{\beta}_2 - a = \frac{\rho}{2} - \sqrt{(a + \rho/2)^2 + \gamma_B^{-1}q}$$

**Dynamics of Moments.** We can extend the steps we have followed before to get an o.d.e for the time variation of each of the  $\bar{r}$  moments. The interesting result is that we can write a relatively simple system of  $\bar{r}$  o.d.e.'s for the moments of the distribution, as opposed to have to solve the partial differential equation for the density m.

<span id="page-38-2"></span>PROPOSITION 25. Given the expression for the Hamiltonian, and the definition of the moments  $M_r(t)$ , the solution of the Kolmogorov forward equation implies the following  $\bar{r}$  dimensional system of linear o.d.e.s

$$\dot{M}_r(t) = r \left( \gamma_B^{-1} \bar{\beta}_2 - a \right) M_r(t) + r \gamma_B^{-1} \beta_1(t) M_{r-1}(t) + \frac{r(r-1)\sigma^2}{2} M_{r-2}(t)$$
 (47)

for  $r=1,\ldots,\bar{r}$  and  $t\geq 0$ , for a given path  $\beta_1$  and given initial conditions  $M_r(0)$  for  $r=1,\ldots,\bar{r}$ .

Next we put together the o.d.e. for  $\beta_1$  with the ones for the  $\bar{r}$  moments. Once we replace  $\beta_2(t)$  by the solution of the Riccati equation  $\bar{\beta}_2$ , we obtain a set of o.d.es. for the scalar  $\beta_1$  and the vector  $M_1, \ldots, M_{\bar{r}}$ .

States and Co-state system. We can put together a system of (non-linear)  $\bar{r}+1$  ordinary differential equations for the co-state type variable  $\beta_1$  together with the  $\bar{r}$  o.d.e's for the aggregate states  $M_1, \ldots, M_{\bar{r}}$  so that an equilibrium is a solution for:

<span id="page-38-0"></span>
$$\dot{\beta}_1(t) = \left(\rho + a - \bar{\beta}_2 \gamma_B^{-1}\right) \beta_1(t) + \theta_0 + \sum_{r=1}^{\bar{r}} \theta_r M_r \tag{48}$$

$$\dot{M}_r(t) = r \left( \gamma_B^{-1} \bar{\beta}_2 - a \right) M_r(t) + r \gamma_B^{-1} \beta_1(t) M_{r-1}(t) + \frac{r(r-1)\sigma^2}{2} M_{r-2}(t)$$
 (49)

The equation for  $\dot{\beta}_1$  is linear in  $(\beta_1, M_1, \ldots, M_{\bar{r}})$ . The equation for  $\dot{M}_1$  is also linear in  $(\beta_1, M_1, \ldots, M_{\bar{r}})$ . The equations for  $\dot{M}_r$  in the case of  $r = 2, \ldots, \bar{r}$  contains a cross product between  $\beta_1$  and  $M_{r-1}$ , and hence they are not linear.

**Steady States.** The steady state of the system for  $(\beta_1, M_1, \ldots, M_{\bar{r}})$  is, in general, different from zero. There are two reasons for this. One is the presence of the even moments  $M_r$ ,

which are non-zero. The second, is the presence of the constant  $\theta_0$  in F. The steady state  $(\bar{\beta}_1, \bar{M}_1, \dots, \bar{M}_{\bar{r}})$ , given  $\bar{\beta}_2$  solves:

$$0 = (\rho + a - \bar{\beta}_2 \gamma_B^{-1}) \bar{\beta}_1 + \theta_0 + \sum_{r=1}^{\bar{r}} \theta_r \bar{M}_r$$
$$0 = r (\gamma_B^{-1} \bar{\beta}_2 - a) \bar{M}_r + r \gamma_B^{-1} \bar{\beta}_1 \bar{M}_{r-1} + \frac{r(r-1)\sigma^2}{2} \bar{M}_{r-2}$$

Again, this system is non-linear, so the existence and uniqueness of steady state should be analyzed. Also not any solutions to this set of equations gives a steady state, since the  $\bar{M}_r$  are moments, and thus they have to satisfy the Hamburger inequality restrictions. To ensure they are satisfied we can write this system in two steps. In the first step we solve for  $\bar{M} = (\bar{M}_1, \dots, \bar{M}_{\bar{r}})$  as function of  $\bar{\beta}_1$ . Given  $\bar{\beta}_1$  this is a linear system with recursive structure given by:

$$\bar{M}_r = \frac{1}{a - \gamma_B^{-1} \bar{\beta}_2} \left[ \gamma_B^{-1} \bar{\beta}_1 \bar{M}_{r-1} + \frac{(r-1)\sigma^2}{2} \bar{M}_{r-2} \right] \text{ for } r = 1, 2 \dots, \bar{r}$$

with  $\bar{M}_0 = 1$ . We let  $\{\mathcal{M}_r(\bar{\beta}_1)\}_{r=1}^{\bar{r}}$  the unique solution of this linear equations. For the second step we replace this solution into the equation for  $\bar{\beta}_1$ , defining

$$\mathcal{B}(\bar{\beta}_1) \equiv \frac{1}{\bar{\beta}_2 \gamma_B^{-1} - a - \rho} \left[ \theta_0 + \sum_{r=1}^{\bar{r}} \theta_r \mathcal{M}_r(\bar{\beta}_1) \right]$$

So, a steady state is a fixed point  $\bar{\beta}_1 = \mathcal{B}(\bar{\beta}_1)$ .

This operator, in general, can have several fixed points. To see this, consider the example of  $\bar{r}=2$ . In this case the function  $\mathcal{B}$  is quadratic in  $\bar{\beta}_1$ . To see this, first solve:

$$\bar{M}_1 = \frac{\gamma_B^{-1} \bar{\beta}_1}{a - \gamma_B^{-1} \bar{\beta}_2} \text{ and } \bar{M}_2 = \frac{\left(\gamma_B^{-1} \bar{\beta}_1\right)^2}{(a - \gamma_B^{-1} \bar{\beta}_2)^2} + \frac{\sigma^2/2}{a - \gamma_B^{-1} \bar{\beta}_2}$$

Replacing them back we get:

$$\mathcal{B}(\bar{\beta}_1) = \frac{1}{\bar{\beta}_2 \gamma_B^{-1} - a - \rho} \left[ \theta_0 + \theta_1 \frac{\gamma_B^{-1} \bar{\beta}_1}{a - \gamma_B^{-1} \bar{\beta}_2} + \theta_2 \frac{\left(\gamma_B^{-1} \bar{\beta}_1\right)^2}{(a - \gamma_B^{-1} \bar{\beta}_2)^2} + \theta_2 \frac{\sigma^2 / 2}{a - \gamma_B^{-1} \bar{\beta}_2} \right]$$

This is a quadratic equation, so in general, it has either two real solutions or none.

We are interested in steady states with  $\bar{M}_1 = 0$ , since we are interpreting x to be a deviation of steady state, so it should have mean zero. The steady state expression for  $\bar{M}_1$  implies that this  $\bar{M}_1 = 0$  if and only if  $\bar{\beta}_1 = 0$ . This requirement has several implications, summarized in the next proposition.

<span id="page-40-0"></span>PROPOSITION 26. Consider the model with coupling up to  $\bar{r}$  moments. There is a steady state with  $\bar{M}_1 = 0$  if and only if  $\bar{\beta}_1 = 0$ . This instead implies  $\bar{M}_r = 0$  for  $r = 1, 3, ..., \bar{r}$ , and the  $\theta_0$  be a linear combination of  $\{\theta_r\}_{r=2,4,6,...}^{\bar{r}}$  as follows:

$$\theta_0 = -\sum_{r=2,4,6...}^{\bar{r}} \theta_r \,\bar{M}_r$$
 where the even moments are given by (50)

$$\bar{M}_r = \frac{(r-1)\sigma^2}{2\left(a - \gamma_B^{-1}\bar{\beta}_2\right)}\bar{M}_{r-2} = (r-1)!! \left(\frac{\sigma^2}{2\left(a - \gamma_B^{-1}\bar{\beta}_2\right)}\right)^{\frac{r}{2}} \text{ for } r = 2, 4, 6, \dots, \bar{r}$$
 (51)

#### where !! is the double factorial.

Fourth comments are in order. First, note that in the invariant distribution  $\bar{m}$  of x is normal and independent of the vector  $\theta$ . Second, as an example, if  $\bar{r} = 2$  we have

$$\theta_0 = -\theta_2 \frac{\sigma^2/2}{a - \gamma_B^{-1} \bar{\beta}_2}$$

and then there is steady state with  $\bar{\beta}_1 = \bar{M}_1 = 0$ . Third, note that even with these parameters there may be other steady states. Forth, the MFG we consider here with coupling with higher moments does not satisfy certainty equivalence, and hence the invariant distribution  $\bar{m}$  depends on the variance of the idiosyncratic shock  $\sigma^2$ . To maximize comparability, our approach is to reset one parameter, namely  $\theta_0$ , so that the invariant distribution  $\bar{m}$  is the same as in the MFG with only coupling in the first moment.

Local analysis around the "zero mean" invariant distribution Now we use Proposition 26 and focus on the invariant distribution with  $\bar{\beta}_1 = \bar{M}_r = 0$  for odd r. The dynamical system equation (48)-equation (47) for  $(\beta_1, M_1, \dots, M_{\bar{r}})$  is not linear. To study its behaviour around around the steady state of interest, we define the deviations:

$$\hat{\beta}_1(t) = \beta_1(t) - \bar{\beta}_1$$
 and  $\hat{M}_r(t) = M_r(t) - \bar{M}_r$ , for all  $t \ge 0$  and  $r = 1, \dots, \bar{r}$ 

The linearized system of o.d.e's around the "zero steady state" becomes:

$$\frac{d}{dt}\hat{\beta}_{1}(t) = \left(\rho + a - \bar{\beta}_{2}\gamma_{B}^{-1}\right)\hat{\beta}_{1}(t) + \sum_{r=1}^{\bar{r}} \theta_{r}\hat{M}_{r}(t)$$
(52)

$$\frac{d}{dt}\hat{M}_r(t) = r\gamma_B^{-1}\bar{M}_{r-1}\hat{\beta}_1(t) + r\left(\gamma_B^{-1}\bar{\beta}_2 - a\right)\hat{M}_r(t) + \frac{r(r-1)\sigma^2}{2}\hat{M}_{r-2}(t)$$
 (53)

For the main result of this section, we re-write the co-state and state system in equation (52) and equation (53) as

<span id="page-41-2"></span><span id="page-41-1"></span><span id="page-41-0"></span>
$$\dot{Y}(t) = \widetilde{\mathcal{H}} Y(t) \text{ where } Y \equiv \left(\hat{\beta}_1, \hat{M}_1, \hat{M}_2, \dots, \hat{M}_{\bar{r}}\right)'$$
 (54)

so that Y is an  $\bar{r}+1$  column vector and  $\widetilde{\mathcal{H}}$  is an  $(\bar{r}+1)\times(\bar{r}+1)$  real matrix, whose coefficients are described by equation (52) and equation (53). Without loss of generality we consider  $\bar{r}$  to be the an even integer.

The uniqueness and existence of a equilibrium near the zero mean stationary distribution depends on the eigenvalues of the matrix  $\widetilde{\mathcal{H}}$ . We use  $\widetilde{\lambda}_j$  for the eigenvalues of this matrix. If this matrix has one unstable (i.e. positive) eigenvalue, and  $\overline{r}$  stable (i.e. negative) eigenvalues, we say the zero mean stationary distribution is locally determinate. In this case the speed of convergence to the zero-mean stationary distribution is determined by the  $\overline{r}$  stable eigenvalues. The next proposition show that they have a very simple structure.

<span id="page-41-3"></span>PROPOSITION 27. Fix  $\bar{r}$  as an arbitrary even integer. Let  $\{\tilde{\lambda}_r\}_{r=1}^{\bar{r}+1}$  be the eigenvalues of the matrix  $\widetilde{\mathcal{H}}$  with the linearization of the co-state and state vector Y of deviations around the zero-mean invariant distribution defined in equation (54). Then:

$$\tilde{\lambda}_{1} = \frac{\rho}{2} - \sqrt{\left(\frac{\rho}{2} + a\right)^{2} + \gamma_{B}^{-1}(q + \bar{\theta})}, \quad \tilde{\lambda}_{\bar{r}+1} = \frac{\rho}{2} + \sqrt{\left(\frac{\rho}{2} + a\right)^{2} + \gamma_{B}^{-1}(q + \bar{\theta})}, \text{ and}$$

$$\tilde{\lambda}_{r} = r \left(\frac{\rho}{2} - \sqrt{\left(\frac{\rho}{2} + a\right)^{2} + \gamma_{B}^{-1}q}\right) < 0 \text{ for } r = 2, 3, \dots, \bar{r} \text{ where } \bar{\theta} \equiv \sum_{r=1, 3, 5, \dots}^{\bar{r}-1} r \, \bar{M}_{r-1} \, \theta_{r}$$

Moreover, the path of the even moment deviations  $\hat{M}_r(t)$  for  $r=2,4,\ldots,\bar{r}$  is independent of the vector  $\{\theta_r\}_{r=1}^{\bar{r}}$  and of the initial conditions for the odd moments  $\hat{M}_r(0)$  for  $r=1,3,\ldots,\bar{r}-1$ .

Several comments are in order.

- 1. The coefficients  $\{\theta\}_{r=1}^{\bar{r}}$  only enter in two eigenvalues:  $\tilde{\lambda}_1$  and  $\tilde{\lambda}_{\bar{r}+1}$ .
- 2. Moreover, only the coefficients  $\{\theta_1, 3, \dots, \theta_{\bar{r}}\}$  on the odd moments enter into the eigen-

values  $\tilde{\lambda}_1$  and  $\tilde{\lambda}_{\bar{r}+1}$ .

- 3. The formula for  $\tilde{\lambda}_1$  is identical to the one for  $\lambda_1$  in the bechmark case, where constant  $\bar{\theta}$  takes the place of the scalar  $\theta$  in the benchmark case with n=1.
- 4. The interpretation of  $\bar{\theta}$  is the same as in the benchmark scalar case: as any  $\theta_r$  increases (for odd r), then the convergence to the steady state is faster.
- 5. There is a critical value  $-\bar{\theta}^* \equiv q + a(a+\rho)\gamma_B$  such that if  $-\bar{\theta} > -\bar{\theta}^*$ , then there is no local determinant equilibrium, i.e. for those values of  $\theta$ , then  $\tilde{\lambda}_1 > 0$ .
- 6. If  $\bar{\theta} = 0$  then all the stable eigenvalues satisfy  $\tilde{\lambda}_r = r\tilde{\lambda}_1 < 0$  for  $r = 1, 2, ..., \bar{r}$ . If there is strategic complementarity, i.e. if  $\bar{\theta} < 0$ , then  $\tilde{\lambda}_1 > \tilde{\lambda}_r$  for all  $r = 2, 3, ..., \bar{r}$ . That is, with strategic complementarity  $\tilde{\lambda}_1$  it is the dominant eigenvalue.
- 7. If  $\sigma^2 = 0$ , then  $\bar{\theta} = \theta_1$ . If all  $\theta_r < 0$  (> 0) for r odd, then  $\bar{\theta}$  is decreasing (increasing) in  $\sigma^2$ . In words, if there is strategic complementarity (substitutability), then the convergence to equilibrium is slower (faster) for higher idiosyncratic variance  $\sigma^2$ .
- 8. While only the coefficient for the odd moments  $\{\theta_1, 3, \dots, \theta_{\bar{r}}\}$  enter into the eigenvalues, the coefficients for the even moments enter in the equilibrium, as the example for  $\bar{r} = 2$  below illustrates.

We turn to the complete solution for the case of  $\bar{r} = 2$ . Assume  $\hat{\beta}_1(t) = s_1 \hat{M}_1(t) + s_2 \hat{M}_2(t)$ . We can replace this expression for  $\hat{\beta}_1$  into equations equation (52) and equation (53) for r = 1 and r = 2, and match the coefficients for  $\hat{M}_1(t)$  and  $\hat{M}_2(t)$  obtaining the following two equations:

$$\gamma_B^{-1}\theta_1 = \gamma_B^{-1}s_1 \left( -\rho + 2 \left( \gamma_B^{-1}\bar{\beta}_2 - a \right) + \gamma_B^{-1}s_1 \right) \text{ and }$$

$$\gamma_B^{-1}\theta_2 = \gamma_B^{-1}s_2 \left( -\rho + 3 \left( \gamma_B^{-1}\bar{\beta}_2 - a \right) + \gamma_B^{-1}s_1 \right)$$

Substituting this expressions back into the system, as well as the expression for  $\bar{\beta}_2$  we obtain that in equilibrium the first and second moments evolve according to:

$$\frac{d}{dt}\hat{M}_{2}(t) = \tilde{\lambda}_{2}\hat{M}_{2}(t) \text{ and}$$

$$\frac{d}{dt}\hat{M}_{1}(t) = \tilde{\lambda}_{1}\hat{M}_{1}(t) + \frac{\gamma_{B}^{-1}\theta_{2}}{\frac{\rho}{2} - 2\sqrt{(a+\rho/2)^{2} + \gamma_{B}^{-1}q} - \sqrt{(a+\rho/2)^{2} + \gamma_{B}^{-1}(\theta_{1}+q)}}\hat{M}_{2}(t)$$

Thus, around the zero steady state, the second moment converges with speed given by  $\tilde{\lambda}_2$ , which is independent of  $\{\theta_1, \theta_2\}$ . Nevertheless, while the second moment is not at its steady

state value, it affects the control α, and through it the first moment, as it can be seen by the second term in the equilibrium o.d.e. for the deviation of M1.

# 10 Conclusion

We show that strategic complementarities play an important role in shaping the persistence of aggregate dynamics within a linear-quadratic mean field game framework. By recasting the coupled system of PDEs into a linear dynamical system characterized by a Hamiltonian matrix and its associated Riccati equation, we derive conditions for the existence, uniqueness, and stability of equilibrium. We find a critical threshold: below it, equilibria exist, and strategic complementarities slow convergence toward the steady state– a fact that is even more pronounced in the planner's solution. Our framework can be extended to include aggregate shocks and higher-order moment coupling.

# References

- <span id="page-44-10"></span>Acemoglu, D., 1996. A microfoundation for social increasing returns in human capital accumulation. The Quarterly Journal of Economics 111, 779–804.
- <span id="page-44-1"></span>Achdou, Y., Han, J., Lasry, J.M., Lions, P.L., Moll, B., 2017. Income and Wealth Distribution in Macroeconomics: A Continuous-Time Approach. Working Paper 23732. National Bureau of Economic Research.
- <span id="page-44-3"></span>Bardi, M., 2012. Explicit solutions of some linear-quadratic mean field games. Networks and heterogeneous media 7, 243–261.
- <span id="page-44-4"></span>Bardi, M., Priuli, F.S., 2014. Linear-quadratic n-person and mean-field games with ergodic cost. SIAM Journal on Control and Optimization 52, 3022–3052.
- <span id="page-44-11"></span>Baxter, M., King, R.G., 1991. Productive externalities and business cycles. Technical Report. Federal Reserve Bank of Minneapolis.
- <span id="page-44-6"></span>Bensoussan, A., Sung, K., Yam, S.C.P., Yung, S.P., 2016. Linear-quadratic mean field games. Journal of Optimization Theory and Applications 169, 496–529.
- <span id="page-44-2"></span>Caines, P.E., 2009. Mean field stochastic control, in: Bode Lecture at the 48th IEEE Conf. on Decision and Control and 28th Chinese Control Conf.
- <span id="page-44-15"></span>Cheung, M.W., Lahkar, R., 2018. Nonatomic potential games: the continuous strategy case. Games and Economic Behavior 108, 341–362. Special Issue in Honor of Lloyd Shapley: Seven Topics in Game Theory.
- <span id="page-44-13"></span>Cooper, R., John, A., 1988. Coordinating coordination failures in keynesian models. The Quarterly Journal of Economics 103, 441–463.
- <span id="page-44-7"></span>Huang, M., Yang, X., 2021. Linear quadratic mean field social optimization: Asymptotic solvability and decentralized control. Applied Mathematics & Optimization 84, 1969–2010.
- <span id="page-44-8"></span>Kucera, V., 1973. A review of the matrix ricatti equation. Kybernetica 9.
- <span id="page-44-0"></span>Lasry, J.M., Lions, P.L., 2007. Mean field games. Japanese Journal of Mathematics 2, 229–260.
- <span id="page-44-14"></span>Ljungqvist, L., Sargent, T.J., 2018. Recursive macroeconomic theory. MIT press.
- <span id="page-44-12"></span>Romer, P.M., 1986. Increasing returns and long-run growth. Journal of political economy 94, 1002–1037.
- <span id="page-44-5"></span>Tchuendom, R.F., 2018. Uniqueness for linear-quadratic mean field games with common noise. Dynamic Games and Applications 8, 199–210.
- <span id="page-44-9"></span>Wimmer, H., 1985. Monotonicity of maximal solutions of algebraic riccati equations. Systems and Control Letters 5, 317–319.
- <span id="page-44-16"></span>Wolf, C.K., 2023. The missing intercept: A demand equivalence approach. American Economic Review 113, 2232–69. URL: [https://www.aeaweb.org/articles?id=10.1257/](https://www.aeaweb.org/articles?id=10.1257/aer.20211751) [aer.20211751](https://www.aeaweb.org/articles?id=10.1257/aer.20211751), doi:[10.1257/aer.20211751](http://dx.doi.org/10.1257/aer.20211751).

#### ONLINE APPENDIX

#### A Model: Details

#### <span id="page-45-0"></span>A.1 Riccati equations: MFG vs. Linear Regulator

The typical (deterministic) linear-quadratic regulator problem uses the following notation. We use the survey by Kucera (1973) as a reference. The time zero problem, and value function, are:

$$J_0 = \min_{\{u(t)\}_{t_0}^T} \int_{t_0}^T \frac{1}{2} (x'(t) \mathbf{Q} x(t) + u'(t) u(t)) dt + \frac{1}{2} x'(T) S x(T)$$
subject to  $\dot{x}(t) = \mathbf{A} x(t) + \mathbf{B} u(t)$  for  $t_0 \le t \le T$ 

for  $x \in \mathbb{R}^n$ ,  $u \in \mathbb{R}^k$ , given positive definite  $n \times n$  matrices  $\mathbf{Q}$  and  $\mathbf{S}$ . We use boldface capital letters for matrices in the LQ regulator problem to distinguish it from the matrices in the MFG. The minimum value satisfies  $J_0 = \frac{1}{2}x'(t_0)P(t_0)x(t_0)$  the optimal policy satisfies  $u(t) = -\mathbf{B}'P(t)x(t)$  where:

$$-\dot{P}(t) = -P(t)\mathbf{B}\mathbf{B}'P(t) + P(t)\mathbf{A} + \mathbf{A}'P(t) + \mathbf{Q} \text{ for } t_0 \le t \le T \text{ and } P(T) = \mathbf{S}.$$

If we consider the case as  $T \to \infty$  or as  $t_0 \to -\infty$ , then  $J_0 \to \frac{1}{2}x'(t_0)P_\infty x(t_0)$  and  $u(t) = -\mathbf{B}P_\infty x(t)$  for all t. In this case  $P_\infty$  satisfies the Riccati equation:

<span id="page-45-1"></span>
$$P BB' P = P A + A'P + Q$$
 (55)

Under these assumptions Q is typically written as Q = C'C. The following three definitions are key.

DEFINITION 6. (A,B) is <u>stabilizable</u> if there is a real matrix L such that  $\mathbf{A} + \mathbf{B}L$  has all its eigenvalues with negative real parts.

DEFINITION 7. (C,A) is <u>detectable</u> if there is a real matrix F such that  $F\mathbf{C} + \mathbf{A}$  has all its eigenvalues with negative real parts.

DEFINITION 8. A matrix P solving the Riccati equation (55) and its associated policy  $u(t) = -\mathbf{B}'\mathbf{P}x(t)$  stabilizes the closed-loop system if the matrix  $\mathbf{A} - \mathbf{B} \mathbf{B}'\mathbf{P}$  has all its eigenvalues with a negative real part.

An important result from the LQ regulator problem is the following:

<span id="page-46-0"></span>Theorem 1. Stabilizability of (A,B) and detectability of (C,A) are necessary and sufficient conditions for [equation](#page-45-1) [\(55\)](#page-45-1) to have a unique positive semi-definite solution which stabilizes the closed-loop system.

[Theorem 1](#page-46-0) is Theorem 5 in the survey by [Kucera](#page-44-8) [\(1973\)](#page-44-8).

[Table A1](#page-46-1) maps the elements on the [equation](#page-45-1) [\(55\)](#page-45-1) to the ones in [equation](#page-21-0) [\(24\)](#page-21-0).

| LQ Regulator                   | LQ MFG                              |
|--------------------------------|-------------------------------------|
| (single agent decision theory) | (equilibrium of a MFG)              |
| ′C<br>C                        | + Θ′<br>Q                           |
| B B′                           | 1<br>1<br>−<br>−<br>2B′<br>BΓ<br>2Γ |
| A                              | ρ<br><br><br>−<br>A<br>+<br>In<br>2 |
| P                              | −P                                  |

<span id="page-46-1"></span>Table A1: Riccati equations notation equivalence

Using the equivalences in [Table A1](#page-46-1) it is immediate to see that the next two equations are the same:

$$\mathbf{P} \mathbf{B} \mathbf{B}' \mathbf{P} = \mathbf{P} \mathbf{A} + \mathbf{A}' \mathbf{P} + \mathbf{C}' \mathbf{C}$$
$$(-P)B\Gamma^{-1} B'(-P) = (-P)\left(-A - I_{n\frac{\rho}{2}}\right) + \left(-A - I_{n\frac{\rho}{2}}\right)'(-P) + Q + \Theta'$$

since the second equation can be written as [equation](#page-21-0) [\(24\)](#page-21-0). Also notice that if P is positive semi-definite, then −P must be negative semi-definite.

[Table A2](#page-46-2) uses equivalences in [Table A1](#page-46-1) to relate the real part of the eigenvalues of different matrices. We use the notation Re λ(V ) to denote the real part of the eigenvalues of the matrix V .

<span id="page-46-2"></span>Table A2: Equivalences between real part of eigenvalues

| LQ Regulator                  | LQ MFG                                                               |
|-------------------------------|----------------------------------------------------------------------|
| Re<br>λ(A+B L)<br><<br>0      | ρ<br>−1/2L<br><br><br>−<br>Re<br>λ<br>BΓ<br>A<br><<br>2              |
| Re<br>λ(FC+A)<br><<br>0       | <br><br>1/2 −<br>ρ<br>+ Θ′<br>Re<br>λ<br>F<br>(Q<br>)<br>A<br><<br>2 |
| Re<br>λ(A - B B' P)<br><<br>0 | ρ<br>−1B′P<br>−<br>Re<br>λ<br>(BΓ<br>A)<br><<br>2                    |

[Table A2](#page-46-2) helps to interpret the definitions of stabilizability, detectability and of a solution that stabilizes the closed-loop system in terms of either assumptions about K and on the requirement that the solution of the MFG either converges or does not explode at a rate higher than ρ/2.

# <span id="page-48-0"></span>B Second order approximation of industry equilibrium

In this section we include a step by step derivation of the second order approximation to the industry equilibrium.

First, re-write the HJB as follows:

$$\rho \tilde{v}(k,t) = \left(\frac{k^{\nu}}{Y(t)}\right)^{-1/\eta} k^{\nu} - \delta k + \hat{H}\left(\tilde{v}_k(k,t)\right) + \frac{\bar{\sigma}^2}{2} \tilde{v}_{kk}(k,t) + \tilde{v}_t(k,t)$$
$$\hat{H}\left(p\right) \equiv \max_{\alpha} p \, \bar{k}\alpha - \bar{k}\alpha - \psi\left(\bar{k}\alpha\right)$$

$$\left(\frac{k^{\nu}}{Y(t)}\right)^{-1/\eta} k^{\nu} - \delta k = \rho \bar{k}x - \frac{1}{2}xQx - X\Theta x + \iota(K) + o(||x, X||)$$

$$v(x, t) = \tilde{v}(\bar{k}x + \bar{k}, t) \text{ so } v_x(x, t) = \bar{k}\tilde{v}_x(\bar{k}x + \bar{k}, t) \text{ and } v_{xx}(x, t) = \bar{k}^2\tilde{v}_{xx}(\bar{k}x + \bar{k}, t)$$

Thus we can write:

$$\rho v(x,t) = \rho \bar{k}x - \frac{1}{2}xQx - X(t)\Theta x + \iota(X(t)) + o(||x,X(t)||)$$

$$+ \hat{H}\left(v_x(x,t)/\bar{k}\right) + \left(k/\bar{k}\right)^2 \frac{\bar{\sigma}^2}{2} \tilde{v}_{xx}(x,t) + v_t(x,t)$$

$$\hat{H}(p) = \max_{\alpha} p \, \bar{k}\alpha - \bar{k}\alpha - \frac{1}{2}\bar{k}^2 \psi''(0)\alpha^2 + o(||\alpha^2||)$$

Ignoring the terms of order smaller than ||x 2 || and ||α 2 ||, and the functions that depends only on X(t), which includes constants, we can define:

$$\rho \tilde{u}(x,t) = \rho \bar{k}x - \frac{1}{2}xQx - X(t)\Theta x + \bar{H}\left(\tilde{u}_x(x,t)\right) + \frac{(\bar{\sigma}/\bar{k})^2}{2}\tilde{u}_{xx}(x,t) + \tilde{u}_t(x,t)$$
$$\bar{H}\left(p\right) = \max_{\alpha} p\alpha - \bar{k}\alpha - \frac{1}{2}\bar{k}^2\psi''(0)\alpha^2$$

Now define u(x, t) = ˜u(x, t) − ¯kx, replacing into the previous expression

$$\rho(u(x,t) + \bar{k}x) = \rho \bar{k}x - \frac{1}{2}xQx - X(t)\Theta x + \bar{H}\left(u_x(x,t) + \bar{k}\right) + \frac{(\bar{\sigma}/\bar{k})^2}{2}\tilde{u}_{xx}(x,t) + \tilde{u}_t(x,t)$$
$$\bar{H}\left(p + \bar{k}\right) = \max_{\alpha} p\alpha + \bar{k}\alpha - \bar{k}\alpha - \frac{1}{2}\bar{k}^2\psi''(0)\alpha^2$$

and using ux(x, t) = ˜ux(x, t) − ¯k and uxx(x, t) = ˜uxx(x, t) and ut(x, t) = ˜ut(x, t) so replacing

them into the previous expression we get,

$$\rho u(x,t) = -\frac{1}{2}xQx - X(t)\Theta x + H\left(u_x(x,t)\right) + \frac{(\bar{\sigma}/\bar{k})^2}{2}u_{xx}(x,t) + u_t(x,t)$$
$$H(p) = \max_{\alpha} p\alpha - \frac{1}{2}\bar{k}^2\psi''(0)\alpha^2$$

Using σ = ¯σ/¯k and Γ = ¯k 2ψ ′′(0), we obtain the desired expression.

#### B.1 Proofs

Proof. (of [Proposition 1\)](#page-6-1)

- 1. Detectability. Assume that there is vector v and a scalar λ with (A + ρ 2 In)v = λv and Re(λ) ≤ 0 then it must be the case that Cv ̸= 0. But we assume that Q is positive with Q = C ′C so Cv ̸= 0 for any vector.
- 2. Stabilizability is immediate given by assumption that Γ is positive definite, and B is invertible. We can always find a matrix L, so that Re λ BΓ <sup>−</sup>1/<sup>2</sup>L − A − ρ 2 In < 0. For instance, set L = Γ<sup>1</sup>/<sup>2</sup>B<sup>−</sup><sup>1</sup> (A + ρ 2 I<sup>n</sup> − ϵIn) for ϵ > 0.

□

Proof. (of [Proposition 2\)](#page-17-1) The proof proceed in several steps.

1. Law of motion for X¯ <sup>i</sup>: We replace the p.d.e. for m<sup>t</sup> , into the the definition of Xi(t) to write an equation for the time derivative of X<sup>i</sup> , denote by X˙ <sup>i</sup>(t), in terms of integrals of m and Hp(ux, x).

$$\dot{X}_i(t) = \int \cdots \int x_i \, m_t(x,t) \, dx_1 \dots dx_n$$

$$= -\int \cdots \int x_i \, \sum_{j=1}^n \left( H_{p_j} \left( u_x, t \right) m(x,t) \right)_{x_j} \, dx_1 \dots dx_n$$

$$+ \frac{1}{2} \int \cdots \int x_i \, \sum_k \sum_j \sigma_{kj} m_{x_j x_k} \left( x, t \right) \, dx_1 \dots dx_n$$

2. No contribution from Laplacian into X˙ . We show that the term on X˙ <sup>i</sup> with integrals of second derivatives of m is zero, i.e. we show that 0 = R xi P k,j σkjm<sup>x</sup>kx<sup>j</sup> (x, t) dx. For this we use the assumed boundary conditions of m. Consider

$$A^{i} \equiv \int \cdots \int x_{i} \sum_{k} \sum_{j} \sigma_{kj} m_{x_{k}x_{j}}(x,t) dx_{1} \dots dx_{n} = \sum_{k} \sum_{j} A^{i}_{kj}$$

where for arbitrary combination k, j we have

$$A_{kj}^{i} \equiv \sigma_{kj} \underbrace{\int \cdots \int}_{n-1} \left[ \int x_{i} m_{x_{k}x_{j}} (x,t) dx_{k} \right] dx_{1} \dots dx_{k-1} dx_{k+1} \dots dx_{n}$$

We will argue that A<sup>i</sup> kj = 0. We first analyze the integral inside the braces, namely R x<sup>i</sup> m<sup>x</sup>kx<sup>j</sup> (x, t) dxk. For this we consider two cases. First, assume that i ̸= k. In this case we write:

$$\int x_i m_{x_k x_j}(x,t) dx_k = x_i \int \frac{\partial}{\partial x_k} m_{x_j}(x,t) dx_k$$

$$= x_i \left( m_{x_j}(x_1, \dots, +\infty, \dots, x_n, t) - m_{x_j}(x_1, \dots, -\infty, \dots, x_n, t) \right)$$

$$= 0$$

where the equality follows from the assumed boundary conditions on m. If k = i we use integration by parts:

$$\int x_i m_{x_i x_j}(x,t) dx_i = \int x_i \frac{\partial}{\partial x_i} m_{x_j}(x,t) dx_i$$

$$= x_i m_{x_j}(x_1, \dots, x_i, \dots, x_n t) |_{-\infty}^{+\infty} - \int_{-\infty}^{\infty} m_{x_j}(x_1, \dots, x_i, \dots, x_n, t) dx_i$$

$$= -\int_{\infty}^{\infty} \frac{\partial}{\partial x_j} m(x_1, \dots, x_i, \dots, x_n, t) dx_i$$

where the first term is zero from the assumed boundary conditions on m. Thus we have:

$$A_{kj}^{i} \equiv \sigma_{ij} \underbrace{\int \cdots \int}_{n-1} \left[ \int x_{i} m_{x_{k}x_{j}} (x,t) dx_{i} \right] dx_{1} \dots dx_{i-1} dx_{i+1} \dots dx_{n}$$

$$= -\sigma_{ij} \underbrace{\int \cdots \int}_{n-1} \left[ \int \frac{\partial}{\partial x_{j}} m (x_{1}, \dots, x_{i}, \dots, x_{n}, t) dx_{i} \right] dx_{1} \dots dx_{i-1} dx_{i+1} \dots dx_{n}$$

$$= -\sigma_{ij} \underbrace{\int \cdots \int}_{n-1} \left[ \int \frac{\partial}{\partial x_{j}} m (x_{1}, \dots, x_{j}, \dots, x_{n}, t) dx_{j} \right] dx_{1} \dots dx_{j-1} dx_{j+1} \dots dx_{n}$$

$$= -\sigma_{ij} \underbrace{\int \cdots \int}_{n-1} \left[ m (x_{1}, \dots, +\infty, \dots, x_{n}, t) - m (x_{1}, \dots, -\infty, \dots, x_{n}, t) \right] dx_{1} \dots dx_{j-1} dx_{j+1} \dots dx_{n}$$

$$= -\sigma_{ij} \underbrace{\int \cdots \int}_{n-1} \left[ 0 dx_{1} \dots dx_{j-1} dx_{j+1} \dots dx_{n} \right] dx_{n}$$

= 0

where we use the previous result, reorder the integral, twice, and use the boundary conditions for m.

3. Simplifying the expression for X˙ i . Using our previous results we obtain:

$$\dot{X}_i(t) = -\int \cdots \int x_i \sum_{j=1}^n \left( H_{p_j} \left( u_x(x,t), t \right) m(x,t) \right)_{x_j} dx_1 \dots dx_n$$

$$= \int \cdots \int H_{p_i} \left( u_x(x,t), t \right) m(x,t) dx_1 \dots dx_n$$

We can also write it in vector form as:

$$\dot{X}'(t) = \int \cdots \int H_p(u_x(x,t),t) m(x,t) dx_1 \dots dx_n$$

where X′ and H<sup>p</sup> are row vectors.

To see why this has to hold we write:

$$\dot{X}_{i}(t) = -\int \cdots \int x_{i} \sum_{j=1}^{n} \left( H_{p_{j}} \left( u_{x}(x,t), t \right) m(x,t) \right)_{x_{j}} dx_{1} \dots dx_{n} 
= -\int \cdots \int x_{i} \left( H_{p_{i}} \left( u_{x}(x,t), t \right) m(x,t) \right)_{x_{i}} dx_{1} \dots dx_{n} 
- \int \cdots \int x_{i} \sum_{j=1, j \neq i}^{n} \left( H_{p_{i}} \left( u_{x}(x,t), t \right) m(x,t) \right)_{x_{j}} dx_{1} \dots dx_{n} 
= -\underbrace{\int \cdots \int \cdots \int \cdots \left[ \int x_{i} \left( H_{p_{i}} \left( u_{x}(x,t), t \right) m(x,t) \right)_{x_{i}} dx_{i} \right] dx_{1} \dots dx_{i-1} dx_{i+1} dx_{n} 
- \int \cdots \int x_{i} \sum_{j \neq i} \left( H_{p_{j}} \left( u_{x}(x,t), t \right) m(x,t) \right)_{x_{j}} dx_{1} \dots dx_{n} 
= \int \cdots \int \left( H_{p_{i}} \left( u_{x}(x,t), t \right) m(x,t) \right)_{x_{i}} dx_{1} \dots dx_{n} 
- \int \cdots \int x_{i} \sum_{j \neq i} \left( H_{p_{j}} \left( u_{x}(x,t), t \right) m(x,t) \right)_{x_{j}} dx_{1} \dots dx_{n}$$

where we have used integration by parts, and the boundary conditions. Fix a j ̸= i

and write

$$-\int \cdots \int x_i \left( H_{p_j} \left( u_x(x,t), t \right) m(x,t) \right)_{x_j} dx_1 \dots dx_n$$

$$= -\underbrace{\int \cdots \int \dots}_{n-1} x_i \left[ \int \left( H_{p_j} \left( u_x(x,t), t \right) m(x,t) \right)_{x_j} dx_j \right] dx_1 \dots dx_{j-1} dx_{j+1} dx_n$$

$$= -\underbrace{\int \cdots \int \dots}_{n-1} x_i \left[ H_{p_j} \left( u_x(x,t), t \right) m(x,t) \right]_{x_j=-\infty}^{x_j=+\infty} dx_1 \dots dx_{j-1} dx_{j+1} dx_n$$

$$= 0$$

where the last term follows from the boundary conditions on m and that Hp(ux, t) is linear in x.

4. Derivative of Hamiltonian on X˙ . The next step is to use the expression we have for the derivative of the Hamiltonian in term of β ′ s into the law of motion for X˙ .

$$\dot{X}'(t) = \int \cdots \int H_p(u_x(x,t),t) m(x,t) dx_1 \dots dx_n$$

$$= \int \cdots \int ([\beta_1'(t) + x'\beta_2(t)] B\Gamma^{-1}B' - x'A) m(x,t) dx_1 \dots dx_n$$

$$= \int \cdots \int [\beta_1'(t) + x'\beta_2(t)] m(x,t) dx_1 \dots dx_n B\Gamma^{-1}B'$$

$$- \int \cdots \int x'm(x,t) A dx_1 \dots dx_n$$

We now use that X = R xm(x, t)dx, and that R m(x, t)dx = 1 so that:

$$\dot{X}'(t) = \int [\beta_1'(t) + x'\beta_2(t)] m(x,t) dx B\Gamma^{-1}B' - \int x'm(x,t)dx A$$
$$= \beta_1'(t)B\Gamma^{-1}B' + X'(\beta_2(t)B\Gamma^{-1}B' - A)$$

or transposing it we obtain [equation](#page-18-2) [\(17\)](#page-18-2).

This finished the proof □.

Proof. (of [Proposition 3\)](#page-18-5) The reason that β2(t) = β¯ <sup>2</sup> is by contradiction. Suppose there will be two solutions, β a 2 ,(t) and β b 2 (t). Then, the single agent LQ problem for the case with Θ = 0, i.e. the case with no coupling, will have two solutions too. But that problem has a unique strictly concave quadratic value function, so β2(t) = β¯ <sup>2</sup>. Then, using β2(t) = β¯ into [equation](#page-18-0) [\(15\)](#page-18-0) and [equation](#page-18-2) [\(17\)](#page-18-2) we obtain [equation](#page-18-4) [\(19\)](#page-18-4). □

Proof. (of [Proposition 4\)](#page-19-3). We look for a solution of [equation](#page-18-4) [\(19\)](#page-18-4) where β<sup>1</sup> = SX for some fixed n × n matrix S. We use β<sup>1</sup> = SX and β˙ <sup>1</sup> = SX˙ into the system in [equation](#page-18-4) [\(19\)](#page-18-4) to obtain

$$\begin{bmatrix} S\dot{X} \\ \dot{X} \end{bmatrix} = \begin{bmatrix} \rho I_n + A' - \bar{\beta}_2 B \Gamma^{-1} B' & \Theta' \\ B\Gamma^{-1} B' & -A + B\Gamma^{-1} B' \bar{\beta}_2 \end{bmatrix} \begin{bmatrix} SX \\ X \end{bmatrix}$$

Replacing the second equation for X˙ into the first we get:

$$S\left[B\Gamma^{-1}B'SX + \left(-A + B\Gamma^{-1}B'\bar{\beta}_2\right)X\right] = \left(\rho I_n + A' - \bar{\beta}_2B\Gamma^{-1}B'\right)SX + \Theta'X$$

since this equation has to hold for all X, and it is homogenous of degree one in X, then it must be that:

$$S\left[B\Gamma^{-1}B'S + \left(-A + B\Gamma^{-1}B'\bar{\beta}_2\right)\right] = \left(\rho I_n + A' - \bar{\beta}_2 B\Gamma^{-1}B'\right)S + \Theta'$$

which rearranging gives the following Riccati algebraic equation for S:

$$SB\Gamma^{-1}B'S = S(A - B\Gamma^{-1}B'\bar{\beta}_2) + (A' - \bar{\beta}_2B\Gamma^{-1}B')S + \rho S + \Theta'$$

which completes the proof. □

Proof. (of Proposition ??) Set x = 0, then, given the path β1(t), the value function u(0, t) = β0(t), which solves the o.d.e. in [equation](#page-17-2) [\(11\)](#page-17-2):

$$\beta_0(t) = \frac{1}{2\rho} tr\left(\Sigma \bar{\beta}_2\right) + \frac{1}{2} \int_t^\infty e^{-\rho(s-t)} \beta_1'(s) B\Gamma^{-1} B' \beta_1(s) ds$$

and in particular for t = 0:

$$\beta_0(0) = \frac{1}{2\rho} tr\left(\Sigma \,\bar{\beta}_2\right) + \frac{1}{2} \int_0^\infty e^{-\frac{\rho}{2}t} \beta_1'(t) B \Gamma^{-1} B' \beta_1(t) e^{-\frac{\rho}{2}t} dt$$

On the other hand, β1(t) = SX(t) and X(s) = e (J+G) <sup>t</sup>X(0). Thus

$$e^{-\frac{\rho}{2}t}\beta_1'(t)B\Gamma^{-1}B'\beta_1(t)e^{-\frac{\rho}{2}t} = X'(t)e^{-\frac{\rho}{2}t}S'B\Gamma^{-1/2}\Gamma^{-1/2}B'SX(t)e^{-\frac{\rho}{2}t}$$
$$= X'(0)e^{\left(J'+G'-I_n\frac{\rho}{2}\right)t}S'B\Gamma^{-1}B'Se^{\left(J+G-I_n\frac{\rho}{2}\right)t}X(0)$$

If S and BΓ <sup>−</sup><sup>1</sup>B′ have full rank, since they are both positive definite, they have an square root, thus X′ (0)e J ′+G′−I<sup>n</sup> ρ 2 t S ′BΓ <sup>−</sup><sup>1</sup>B′Se J+G−I<sup>n</sup> ρ 2 <sup>t</sup>X(0) converges for any X(0) if an only if the real part of each of the eigenvalues of J + G is smaller than ρ/2.

This concludes the proof. □

Proof. (of [Proposition 5\)](#page-20-0) The proof proceeds in several steps.

1. Consider the MFG Hamiltonian matrix H:

$$\mathcal{H} = \begin{bmatrix} \rho I_n + A' - \bar{\beta}_2 B \Gamma^{-1} B' & \Theta' \\ & & \\ B \Gamma^{-1} B' & -A + B \Gamma^{-1} B' \bar{\beta}_2 \end{bmatrix} \equiv \begin{bmatrix} \rho I_n - G' & \Theta' \\ C & G \end{bmatrix}$$

where G = −A+BΓ <sup>−</sup><sup>1</sup>B′β¯ <sup>2</sup> and C = BΓ <sup>−</sup><sup>1</sup>B′ , so G′ , Θ′ , and C are n×n matrices, with Θ′ and C symmetric, where I<sup>n</sup> is the n × n identity matrix, and where ρ is a scalar. We will show that If λ is an eigenvalue of H, then ρ − λ is also an eigenvalue of H.

We define the 2n × 2n matrix J as:

$$J = \begin{bmatrix} 0 & I_n \\ -I_n & 0 \end{bmatrix}$$

Note that

$$J^{-1} = -J = \begin{bmatrix} 0 & -I_n \\ I_n & 0 \end{bmatrix}$$

Let's introduce a shifted matrix K = H − <sup>ρ</sup> 2 I2n:

$$K = \begin{bmatrix} \rho I_n - G' & \Theta' \\ C & G \end{bmatrix} - \begin{bmatrix} \frac{\rho}{2} I_n & 0 \\ 0 & \frac{\rho}{2} I_n \end{bmatrix}$$
$$= \begin{bmatrix} \frac{\rho}{2} I_n - G' & \Theta' \\ C & G - \frac{\rho}{2} I_n \end{bmatrix}$$

We now compute JKJ <sup>−</sup><sup>1</sup> :

$$JKJ^{-1} = \begin{bmatrix} 0 & I_n \\ -I_n & 0 \end{bmatrix} \begin{bmatrix} \frac{\rho}{2}I_n - G' & \Theta' \\ C & G - \frac{\rho}{2}I_n \end{bmatrix} \begin{bmatrix} 0 & -I_n \\ I_n & 0 \end{bmatrix}$$

$$= \begin{bmatrix} C & G - \frac{\rho}{2}I_n \\ -\frac{\rho}{2}I_n + G' & -\Theta' \end{bmatrix} \begin{bmatrix} 0 & -I_n \\ I_n & 0 \end{bmatrix}$$

$$= \begin{bmatrix} -G + \frac{\rho}{2}I_n & -C \\ \Theta' & -\frac{\rho}{2}I_n + G' \end{bmatrix}$$

Taking the transpose of this matrix:

$$(JKJ^{-1})' = \begin{bmatrix} (-G + \frac{\rho}{2}I_n)' & \Theta \\ -C' & (-\frac{\rho}{2}I_n + G')' \end{bmatrix}$$
$$= \begin{bmatrix} -G' + \frac{\rho}{2}I_n & \Theta' \\ -C & -\frac{\rho}{2}I_n + G \end{bmatrix}$$
$$= -\begin{bmatrix} G' - \frac{\rho}{2}I_n & -\Theta' \\ C & \frac{\rho}{2}I_n - G \end{bmatrix} = -K$$

Thus:

$$JKJ^{-1} = -K'$$

We observe that JKJ <sup>−</sup><sup>1</sup> = −K′ implies that K is a similar matrix that −K′ , and hence K and −K′ have the same eigenvalues. Since −K′ has the same eigenvalues than its transpose −K, then K has the same eigenvalues than −K. To sum up, if µ is an eigenvalue of K, then −µ is also an eigenvalue of K.

Now we relate the eigenvalues of H with those of K. If λ is an eigenvalue of H with corresponding eigenvector v, then:

$$\mathcal{H}v = \lambda v$$
 can be written as  $\left(K + \frac{\rho}{2}I_{2n}\right)v = \lambda v$  or  $Kv = \left(\lambda - \frac{\rho}{2}\right)v$ 

So µ = λ − ρ 2 is an eigenvalue of K if λ is an eigenvalue of H. By our previously established property, −µ = −(λ − ρ 2 ) = <sup>ρ</sup> <sup>2</sup> − λ is also an eigenvalue of K. Therefore, if ρ <sup>2</sup> − λ is an eigenvalue of K, the corresponding eigenvalue of H is:

$$\left(\frac{\rho}{2} - \lambda\right) + \frac{\rho}{2} = \rho - \lambda.$$

We have proved that if λ is an eigenvalue of H, then ρ − λ is also an eigenvalue of H.

- 2. Since H is a real, then if λ is an eigenvalue of H, then so it is λ ∗
- 3. Finally, combining the two properties, we have that if λ is an eigenvalue of H, then so it is −λ <sup>∗</sup> + ρ.

This concludes the proof □.

**Proof.** (of Proposition 6) Suppose that there is solution of equation (20) for S so that by equation (21) we have dX(t) = MX(t)dt where all the eigenvalues of  $M \equiv J + G$ , denoted by  $\{\lambda_j\}_{j=1}^n$  have real part smaller than  $\rho/2$ , and hence the corresponding  $\{X(t)\} \in L_\rho^2$ . This gives an equilibrium to the MFG. Consider any other solution  $\hat{S}$  of equation (20) so that by equation (21) we have  $d\hat{X}(t) = \hat{M}X(t)dt$  for some  $\hat{M} \equiv \hat{J} + G$  with eigenvalues  $\{\hat{\lambda}_j\}_{j=1}^n$ . If all the eigenvalues are the same, the two solutions are identical. If at least one eigenvalue if different, by Proposition 5 we have  $\hat{\lambda}_j = -\lambda_j + \rho$ , and thus  $\hat{\lambda}_j - \rho/2 = -(\lambda_j - \rho/2) > 0$  or , and thus  $\{\hat{X}(t)\} \notin L_\rho^2$  for some initial value X(0). In particular we can write:

$$d\hat{X}(t) = N\hat{\Lambda}N^{-1}\hat{X}(t)dt \text{ or } \hat{X}(t) = Ne^{\hat{\Lambda}t}N^{-1}\hat{X}(0)$$

where  $\Lambda$  is a Jordan matrix where each block corresponding to each of the non-repeated eigenvalues of  $\hat{M}$ . Thus

$$||\hat{X}(t)||^2 = \hat{X}'(t)\hat{X}(t) = \hat{X}'(0)\left(N^{-1}\right)'\left(e^{\hat{\Lambda}t}\right)'N'Ne^{\hat{\Lambda}t}N^{-1}\hat{X}(0)$$

Then.

$$e^{\rho t} ||\hat{X}(t)||^2 = \hat{X}'(0) \left(N^{-1}\right)' \left(e^{\left(\hat{\Lambda} - \frac{\rho}{2}\right)t}\right)' N' N e^{\left(\hat{\Lambda} - \frac{\rho}{2}\right)t} N^{-1} \hat{X}(0)$$

Define  $Y(t) \equiv N^{-1}\hat{X}(0)$  so that

$$e^{\rho t}||\hat{X}(t)||^2 = Y'(t)\left(e^{\left(\hat{\Lambda} - \frac{\rho}{2}\right)t}\right)'N'Ne^{\left(\hat{\Lambda} - \frac{\rho}{2}\right)t}Y(t)$$

The matrix  $\hat{\Lambda}$  is block diagonal, each bock  $\hat{\Lambda}_j$  corresponds the different eigenvalues, and it is of size  $s_j \times s_j$ , where  $s_j$  is the multiplicity of the corresponding eigenvalue. Thus, for a matrix with r blocks:

$$e^{(\hat{\Lambda} - I_n \frac{\rho}{2})t} = \begin{bmatrix} e^{(\hat{\Lambda}_1 - I_{s_1} \frac{\rho}{2})t} & 0 & 0 & \dots & 0 \\ 0 & e^{(\hat{\Lambda}_2 - I_{s_2} \frac{\rho}{2})} & 0 & \dots & 0 \\ \vdots & \vdots & \vdots & \vdots & \vdots \\ 0 & 0 & \dots & e^{(\hat{\Lambda}_r - I_{s_r} \frac{\rho}{2})t} \end{bmatrix}$$

where the exponential of each block satisfy

$$e^{(\hat{\Lambda}_j - I_{s_j} \frac{\rho}{2})t} = e^{\hat{\Lambda}_j t} e^{-\frac{\rho}{2}t}$$
 and  $e^{\hat{\Lambda}_j t} = e^{\hat{\lambda}_j t} e^{U_j(t)}$ 

for an upper triangular matrix  $U_j(t)$  of size  $s_j \times s_j$  which has zeros below the diagonal satisfying

$$e^{(\hat{\Lambda}_{j} - I_{s_{j}} \frac{\rho}{2})t} = e^{(\hat{\lambda}_{j} - \frac{\rho}{2})t} \begin{bmatrix} 1 & t & \frac{t^{2}}{2} & \dots & \frac{t^{s_{j}-1}}{(s_{j}-1)!} \\ 0 & 1 & t & \dots & \frac{t^{s_{j}-2}}{(s_{j}-2)!} \\ \vdots & \vdots & \vdots & \vdots & \vdots \\ 0 & 0 & \dots & 1 \end{bmatrix} \equiv e^{(\hat{\lambda}_{j} - \frac{\rho}{2})t} e^{U_{j}(t)}$$

Without loss of generality, assume that the first Jordan block contains the eigenvalue  $\hat{\lambda}_1 \geq \rho/2$ . Given that N is invertible, lets set  $\hat{X}(0)$  so that

$$Y(0) = N^{-1}\hat{X}(0)$$
 with  $Y_1(0) = 1$  and  $Y_j(0) = 0$  for  $j = 2, 3, ..., n$ 

thus

$$e^{(\hat{\Lambda} - I_n \frac{\rho}{2})t} Y(0) = \begin{bmatrix} e^{(\hat{\Lambda}_1 - I_{s_1} \frac{\rho}{2})t} & 0 & 0 & \dots & 0 \\ 0 & e^{(\hat{\Lambda}_2 - I_{s_2} \frac{\rho}{2})} & 0 & \dots & 0 \\ \vdots & \vdots & \vdots & \vdots & \vdots \\ 0 & 0 & 0 & \dots & e^{(\hat{\Lambda}_r - I_{s_r} \frac{\rho}{2})t} \end{bmatrix} \begin{bmatrix} 1 \\ 0 \\ \vdots \\ 0 \end{bmatrix}$$

$$= \begin{bmatrix} e^{(\hat{\lambda}_1 - \frac{\rho}{2})t} e^{U_1(t)} & 0 & 0 & \dots & 0 \\ 0 & e^{(\hat{\lambda}_2 - \frac{\rho}{2})t} e^{U_2(t)} & 0 & \dots & 0 \\ \vdots & \vdots & \vdots & \vdots & \vdots \\ 0 & 0 & 0 & \dots & e^{(\hat{\lambda}_r - \frac{\rho}{2})t} e^{U_r(t)} \end{bmatrix} \begin{bmatrix} 1 \\ 0 \\ \vdots \\ 0 \end{bmatrix}$$

Since  $e^{U_1(t)}$  is an  $s_1 \times s_1$  matrix with ones in the diagonal, and zeros below it, then

$$e^{U_1(t)} \begin{bmatrix} 1 \\ 0 \\ \vdots \\ 0 \end{bmatrix} = \begin{bmatrix} 1 & t & \frac{t^2}{2} & \dots & \frac{t^{s_1-1}}{(s_1-1)!} \\ 0 & 1 & t & \dots & \frac{t^{s_1-2}}{(s_1-2)!} \\ \vdots & \vdots & \vdots & \vdots & \vdots \\ 0 & 0 & \dots & 1 \end{bmatrix} \begin{bmatrix} 1 \\ 0 \\ \vdots \\ 0 \end{bmatrix} = \begin{bmatrix} 1 \\ 0 \\ \vdots \\ 0 \end{bmatrix}$$

Hence the  $n \times 1$  vector  $e^{(\hat{\Lambda} - I_n \frac{\rho}{2})t} Y(0)$  has the following simple structure:

$$e^{\left(\hat{\Lambda} - I_n \frac{\rho}{2}\right)t} Y(0) = e^{\left(\lambda_j - \frac{\rho}{2}\right)t} \begin{bmatrix} 1 \\ \vdots \\ 0 \\ 0 \\ 0 \\ \vdots \\ 0 \end{bmatrix}$$

Then

$$\begin{aligned} ||e^{\left(\hat{\Lambda} - \frac{\rho}{2}\right)t} N^{-1} \hat{X}(0)||^2 &= \left(e^{\left(\hat{\Lambda} - I_n \frac{\rho}{2}\right)t} Y(0)\right)' N' N \, e^{\left(\hat{\Lambda} - I_n \frac{\rho}{2}\right)t} Y(0) \\ &= e^{2\left(\lambda_1 - \frac{\rho}{2}\right)t} \left[N' N\right]_{(1,1)} \ge \left[N' N\right]_{(1,1)} > 0 \text{ for all } t \ge 0 \end{aligned}$$

since by N'N being positive definite, then  $[N'N]_{(1,1)} > 0$ . Hence we have found an  $\hat{X}(0)$  for which  $\{\hat{X}(t)\}_{t\geq 0} \notin L^2_{\rho}$ .

П

**Proof.** (of Proposition 7) We use the expression for  $\beta_2$  in equation (13) and S in equation (20), namely:

$$S B \Gamma^{-1} B' S = S \left( A - B \Gamma^{-1} B \bar{\beta}_2 \right) + \left( A' - \bar{\beta}_2 B \Gamma^{-1} B' \right) S + \rho S + \Theta'$$
$$\bar{\beta}_2 B \Gamma^{-1} B' \bar{\beta}_2 = Q + \bar{\beta}_2 A + A' \bar{\beta}_2 + \rho \bar{\beta}_2$$

Adding them up and grouping the terms:

$$SB\Gamma^{-1}B'S + \bar{\beta}_2B\Gamma^{-1}B'\bar{\beta}_2$$
  
=\Omega' + Q - SB\Gamma^{-1}B'\bar{\beta}\_2 - \bar{\beta}\_2B\Gamma^{-1}B'S + (\bar{\beta}\_2 + S)A + A'(\bar{\beta}\_2 + S) + \rho(\bar{\beta}\_2 + S)

Rearranging it

$$S B\Gamma^{-1}B' S + \bar{\beta}_2 B\Gamma^{-1}B' \bar{\beta}_2 + SB\Gamma^{-1}B' \bar{\beta}_2 + \bar{\beta}_2 B\Gamma^{-1}B' S$$
  
=\Theta' + Q + (\bar{\beta}\_2 + S)A + A' (\bar{\beta}\_2 + S) + \rho (\bar{\beta}\_2 + S)

Using that

$$(S + \bar{\beta}_2) B\Gamma^{-1}B' (S + \bar{\beta}_2) = SB\Gamma^{-1}B' (S + \bar{\beta}_2) + \bar{\beta}_2 B\Gamma^{-1}B' (S + \bar{\beta}_2)$$
$$= SB\Gamma^{-1}B'S + SB\Gamma^{-1}B'\bar{\beta}_2 + \bar{\beta}_2 B\Gamma^{-1}B'\bar{\beta}_2 + \bar{\beta}_2 B\Gamma^{-1}B'S$$

Then we obtain the desired result, namely:

$$(S + \bar{\beta}_2) B\Gamma^{-1}B'(S + \bar{\beta}_2)$$
  
=  $\Theta' + Q + (\bar{\beta}_2 + S)A + A'(\bar{\beta}_2 + S) + \rho(\bar{\beta}_2 + S)$ 

which making  $P = S + \bar{\beta}_2$  gives the desired expression for the Riccati equation for P.  $\square$ 

#### **Proof.** (of Proposition 8).

First we show that if E being positive definite is a necessary condition for the existence of real symmetric solution P to equation (24). Let  $\tilde{A} = A + \frac{\rho}{2}I_n$ . Define the matrix K as follows:

$$K \equiv \left(P - \tilde{A}'C'\right)B\Gamma^{-1}B'\left(P - \tilde{A}'C'\right)'$$
 where

where  $C = (B\Gamma^{-1}B')^{-1}$ . The matrix K is positive semi-definite since  $\Gamma$  is positive definite and P is assume to be symmetric and real. Developing this expression we get:

$$K = PB\Gamma^{-1}B'P - \tilde{A}'C'B\Gamma^{-1}B'P - PB\Gamma^{-1}B'(\tilde{A}'C')' + \tilde{A}'C'B\Gamma^{-1}B'(\tilde{A}'C')'$$
$$= PB\Gamma^{-1}B'P - \tilde{A}'C'B\Gamma^{-1}B'P - PB\Gamma^{-1}B'C\tilde{A} + \tilde{A}'C'B\Gamma^{-1}B'C\tilde{A}$$

Using that P solves equation (24), i.e.  $PB\Gamma^{-1}B'P = (Q + \Theta') + P\tilde{A} + \tilde{A}'P$ , thus

$$K = (Q + \Theta') + P\tilde{A} + \tilde{A}'P - \tilde{A}'C'B\Gamma^{-1}B'P - PB\Gamma^{-1}B'C\tilde{A} + \tilde{A}'C'B\Gamma^{-1}B'C\tilde{A}$$
$$= (Q + \Theta') + P\left[I_n - B\Gamma^{-1}B'C\right]\tilde{A} + \tilde{A}'\left[C'B\Gamma^{-1}B' - I_n\right]P + \tilde{A}'C'B\Gamma^{-1}B'C\tilde{A}$$

Using the definition of C

$$K = (Q + \Theta') + \tilde{A}'C'B\Gamma^{-1}B'C\tilde{A}$$
$$= (Q + \Theta') + (A' + \frac{\rho}{2})(B\Gamma^{-1}B')^{-1}(A + \frac{\rho}{2}) = E$$

Since K must be is positive semi-definite, and E = K this finishes the proof of the necessity.

Now we prove that if  $Q + \Theta$  is positive definite, then there is a unique solution to the MFG. This follows by verifying the sufficient conditions for the existence of a negative definite

solution P to equation (24). Since this is the same Riccati equation for a single agent LQ problem, it is sufficient to show that the pair  $(Q + \Theta, -A - \frac{\rho}{2}I_n)$  is detectable and that the pair  $(B, -A - \frac{\rho}{2}I_n)$  is stabilizable. This is identical to the proof of Proposition 1 except that  $Q + \Theta$  takes the place of Q. This finalized the proof.

**Proof.** (of Proposition 9) In this case we will first show that  $\tilde{\lambda}_i$  the eigenvalues of  $\tilde{H} = \mathcal{H} - \frac{\rho}{2}I_n$  come in pairs  $\tilde{\lambda}_i(k) = -a(k) - \frac{\rho}{(k)}2 + O(1/k)$  and  $\tilde{\lambda}_{i+n}(k) = -\tilde{\lambda}_{i+n} = a(k) + \frac{\rho}{2}(k) + O(1/k)$ . This means that  $\lambda_i$ , the eigenvalues of  $\mathcal{H}$  come in pairs  $\lambda_i(k) = -a(k) + O(1/k)$  and  $\tilde{\lambda}_{i+n}(k) = -\lambda_{i+n}(k) = a(k) + \rho(k) + O(1/k)$ .

We have that:

$$\tilde{H} = \begin{bmatrix} -G' & \Theta \\ R & G \end{bmatrix}$$

where  $R \equiv B\Gamma^{-1}B'$  and  $G \equiv R\bar{\beta}_2 - A - (a(k) + \frac{\rho(k)}{2})I_n$ .

Let  $\lambda$  be an eigenvalue of  $\tilde{H}$  with corresponding eigenvector  $v \in \mathbb{C}^{2n}$  with ||v|| = 1. The eigenvalue equation  $\tilde{H}v = \lambda v$  gives:

$$-G'v_1 + \Theta v_2 = \tilde{\lambda}v_1 \tag{56}$$

$$Rv_1 + Gv_2 = \tilde{\lambda}v_2 \tag{57}$$

Solving for  $v_1$ :

$$v_1 = R^{-1} \left( \tilde{\lambda} I_n - G \right) v_2$$

Note that  $v_2 \neq 0$  is not zero, because it it were then  $Rv_1 = 0$ , a contradiction with R invertible. Replacing into the first:

$$\left[ -(G' + \tilde{\lambda}I_n)R^{-1} \left( \tilde{\lambda}I_n - G \right) + \Theta \right] v_2 = 0$$

Hence:

$$0 = \det\left(-(G' + \tilde{\lambda}I_n)R^{-1}\left(\tilde{\lambda}I_n - G\right) + \Theta\right)$$
$$= \det\left((G' + \tilde{\lambda}I_n)R^{-1}\left(G - \tilde{\lambda}I_n\right) + \Theta\right)$$

Replacing the expression for  $\bar{G}$ :

$$\begin{split} &(G' + \tilde{\lambda}I_n)R^{-1}\left(\bar{G} - \tilde{\lambda}I_n\right) + \Theta \\ = &(\bar{\beta}_2R - A' - aI_n - \frac{\rho}{2}I_n + \tilde{\lambda}I_n)R^{-1}\left(R\bar{\beta}_2 - A - aI_n\frac{\rho}{2}I_n - \tilde{\lambda}I_n\right) + \Theta \\ = &(\bar{\beta}_2R - (A' + (a + \frac{\rho}{2})I_n) + \tilde{\lambda}I_n)R^{-1}\left(R\bar{\beta}_2 - (A + (a + \frac{\rho}{2})I_n) - \tilde{\lambda}I_n\right) + \Theta \\ = &\bar{\beta}_2R\bar{\beta}_2 - \bar{\beta}_2(A + (a + \frac{\rho}{2})I_n) - \bar{\beta}_2\tilde{\lambda} \\ &- (A' + (a + \frac{\rho}{2})I_n)\bar{\beta}_2 + (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) + (A' + (a + \frac{\rho}{2})I_n)R^{-1}\tilde{\lambda} \\ &+ \tilde{\lambda}\bar{\beta}_2 - \tilde{\lambda}R^{-1}(A + (a + \frac{\rho}{2})I_n) - \tilde{\lambda}R^{-1}\tilde{\lambda} + \Theta \\ = &\bar{\beta}_2R\bar{\beta}_2 - \bar{\beta}_2(A + (a + \frac{\rho}{2})I_n) - (A' + (a + \frac{\rho}{2})I_n)\bar{\beta}_2 + \Theta \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}\tilde{\lambda} - \tilde{\lambda}R^{-1}(A + (a + \frac{\rho}{2})I_n) - \tilde{\lambda}R^{-1}\tilde{\lambda} \\ = &\bar{\beta}_2R\bar{\beta}_2 - \bar{\beta}_2(A + (a + \frac{\rho}{2})I_n) - (A' + (a + \frac{\rho}{2})I_n)\bar{\beta}_2 + \Theta \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) \\ &+ (A' + ($$

Recall that  $\bar{\beta}_2$  satisfies

$$\bar{\beta}_2 R \bar{\beta}_2 = Q + \bar{\beta}_2 (A + (a + \frac{\rho}{2})I_n) + (A' + (a + \frac{\rho}{2})I_n)\bar{\beta}_2$$

Replacing into the previous expression:

$$(G' + \tilde{\lambda}I_n)R^{-1}\left(\bar{G} - \tilde{\lambda}I_n\right) + \Theta$$

$$= Q + \Theta + (A' + (a + \frac{\rho}{2})I_n)R^{-1}(A + (a + \frac{\rho}{2})I_n) + A'R^{-1}\tilde{\lambda} - \tilde{\lambda}R^{-1}A - \tilde{\lambda}R^{-1}\tilde{\lambda}$$

Then

$$0 = \frac{1}{k^2} det \left( (G' + \tilde{\lambda} I_n) R^{-1} \left( \bar{G} - \tilde{\lambda} I_n \right) + \Theta \right)$$
  
=  $det \left( Q/k^2 + \Theta/k^2 + (A'/k^2 + (\frac{a}{k} + \frac{\rho}{2k}) I_n) R^{-1} (A/k + (\frac{a}{k} + \frac{\rho}{2k}) I_n) + A'/k R^{-1} \frac{\tilde{\lambda}}{k} - \frac{\tilde{\lambda}}{k} R^{-1} A/k - \frac{\tilde{\lambda}}{k} R^{-1} \frac{\tilde{\lambda}}{k} \right)$ 

For any k > 0

$$0 = \det\left(Q/k^2 + \Theta/k^2 + (A'/k^2 + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{\rho}{2k})I_n)R^{-1}(A/k + (\frac{a}{k} + \frac{$$

Taking limits as  $k \to \infty$ :

$$0 = det\left( (a_0 + \frac{\rho_0}{2})R^{-1}(a_0 + \frac{\rho_0}{2}) - \tilde{\lambda}_0 R^{-1} \tilde{\lambda}_0 \right)$$

where  $\tilde{\lambda}_0 = \lim_{k \to \infty} \tilde{\lambda}(k)/k$ . Thus  $\tilde{\lambda}(k) = \pm (a_0 + \frac{\rho_0}{2})k + O(1/k)$  or  $\tilde{\lambda}_i(k) = -a_0k - \frac{\rho_0}{2}k + O(1/k^2)$  and  $\tilde{\lambda}_{i+n}(k) = a_0k + \frac{\rho_0}{2}k + O(1/k^2)$ . Which implies  $\lambda_i(k) = -a_0k + O(1/k^2)$  and  $\lambda_{i+n}(k) = a_0k + \rho_0k + O(1/k^2)$ .

**Proof.** of (Proposition 10) For this proof we write the equation for the eigenvalues as in the proof of Proposition 9. This gives that  $\tilde{\lambda}$  is an eigenvalue of  $\tilde{H} = \mathcal{H} - \frac{\rho}{2}I_n$  if

$$0 = \det\left( (G' + \tilde{\lambda}I_n)R(k)^{-1} \left( \bar{G} - \tilde{\lambda}I_n \right) + \Theta \right)$$
$$= \det\left( Q + \Theta + (A' + \frac{\rho}{2}I_n)R(k)^{-1}(A + \frac{\rho}{2}I_n) + A'R(k)^{-1}\tilde{\lambda} - \tilde{\lambda}R(k)^{-1}A - \tilde{\lambda}R(k)^{-1}\tilde{\lambda} \right)$$

where  $R(k)^{-1} = k^2 (B')^{-1} \Gamma_0 B^{-1} = k^2 R_0^{-1}$  thus

$$0 = det\left(Q + \Theta + k^{2}(A' + \frac{\rho}{2}I_{n})R_{0}^{-1}(A + \frac{\rho}{2}I_{n}) + k^{2}A'R_{0}^{-1}\tilde{\lambda} - k^{2}\tilde{\lambda}R_{0}^{-1}A - k^{2}\tilde{\lambda}R_{0}^{-1}\tilde{\lambda}\right)$$
$$k^{2}det\left(Q/k^{2} + \Theta/k^{2} + (A' + \frac{\rho}{2}I_{n})R_{0}^{-1}(A + \frac{\rho}{2}I_{n}) + A'R_{0}^{-1}\tilde{\lambda} - \tilde{\lambda}R_{0}^{-1}A - \tilde{\lambda}R_{0}^{-1}\tilde{\lambda}\right)$$

Taking the limit as  $k \to \infty$  then

$$0 = det\left( (A' + \frac{\rho}{2}I_n)R_0^{-1}(A + \frac{\rho}{2}I_n) + \left( A'R_0^{-1} - R_0^{-1}A \right)\tilde{\lambda} - R_0^{-1}\tilde{\lambda}^2 \right)$$

which can be written as:

$$0 = det\left(\mathcal{A} + (\mathcal{B}' - \mathcal{B})\,\tilde{\lambda} - \mathcal{C}\tilde{\lambda}^2\right)$$

where  $\mathcal{A}$  and  $\mathcal{C}$  are two positive definite matrices. Define

$$D(\mu) \equiv det \Big( \mathcal{A} + (\mathcal{B}' - \mathcal{B}) \, \mu - \mathcal{C} \mu^2 \Big)$$

Note the following properties of D: (1) using that  $\mathcal{A}$  and  $\mathcal{C}$  as symmetric, and that for any

matrix C, det(C) = det(A′ ), then D(µ) = D(−µ), (2) using that A is positive definite, then D(0) = det(A) > 0, and (3) then for large µ we have D(µ) ≈ µ <sup>2</sup>det(−C) = −µ <sup>2</sup> det(C) < 0 where we use that C is positive definite. Thus we can find a real negative root λ˜ and a positive real root satisfying 0 = D(λ˜ <sup>0</sup>) = D(−λ˜ <sup>0</sup>). Finally,

$$\begin{split} D(\frac{\rho}{2}) &= \det \left( \mathcal{A} + (\mathcal{B}' - \mathcal{B}) \, \frac{\rho}{2} - \mathcal{C}(\frac{\rho}{2})^2 \right) \\ &= \det \left( A' R_0^{-1} A + R_0^{-1} (\frac{\rho}{2})^2 + A' R_0^{-1} \frac{\rho}{2} + R_0^{-1} A \frac{\rho}{2} + \left( A' R_0^{-1} - R_0^{-1} A \right) \frac{\rho}{2} - R_0^{-1} (\frac{\rho}{2})^2 \right) \\ &= \det \left( A' R_0^{-1} A + A' R_0^{-1} \frac{\rho}{2} + R_0^{-1} A \frac{\rho}{2} + \left( A' R_0^{-1} - R_0^{-1} A \right) \frac{\rho}{2} \right) \\ &= \det \left( A' R_0^{-1} A + A' R_0^{-1} \rho \right) > 0 \end{split}$$

Thus, the roots |λ˜| are larger than ρ/2, and of opposite sign. Hence, the limit for λi(k) = λ˜ <sup>i</sup>(k) + ρ/2 < 0.

□

Proof. (of [Proposition 11\)](#page-23-0). To compare the results with [Wimmer](#page-44-9) [\(1985\)](#page-44-9) we use the following identification of X ↔ −P for the symmetric matrix solving the Riccati equation, BB<sup>∗</sup> ↔ BΓ <sup>−</sup><sup>1</sup>B′ for the positive definite matrix, A ↔ −A − I<sup>n</sup> ρ 2 for the matrix for the linear part of Riccati equation, and Q ↔ Q + Θ′ for the symmetric matrix, where each of the left-hand side symbols correspond to the ones in [Wimmer](#page-44-9) [\(1985\)](#page-44-9). Since −A has stable eigenvalues, the pair (−A, Γ −1/2 ) is stabilizable. Indeed, the condition is that the real part of the eigenvalues of BΓ <sup>−</sup><sup>1</sup>B′P − A − I<sup>n</sup> ρ 2 be negative, or equivalently that the real part of the eigenvalues of BΓ <sup>−</sup><sup>1</sup>B′P − A be smaller tan ρ/2. Then, by virtue of Theorem 1 of [Wimmer](#page-44-9) [\(1985\)](#page-44-9), then X<sup>0</sup> − X<sup>1</sup> is positive definite, and thus −P<sup>0</sup> − (−P1) = P<sup>1</sup> − P<sup>0</sup> is positive definite.

□

Proof. (of [Proposition 13\)](#page-24-1). A vector X¯ is a steady state if we can find a vector β¯ <sup>1</sup> for which

$$\begin{bmatrix} 0 \\ 0 \end{bmatrix} = \mathcal{H} \begin{bmatrix} \bar{\beta}_1 \\ \bar{X} \end{bmatrix}$$

Trivially, X¯ = β¯ <sup>1</sup> = 0 solves this equation. Thus, a non-zero steady state requires that H be singular, i.e. it requires that H has at least one eigenvalue equal to zero. Writing down the equation in full:

$$0 = (\rho I_n - G') \,\bar{\beta}_1 + \Theta' \,\bar{X}$$
$$0 = B\Gamma^{-1}B' \,\bar{\beta}_1 + G \,\bar{X}$$

Using that  $B\Gamma^{-1}B'$  is invertible, we can write

$$\bar{\beta}_1 = -(B\Gamma^{-1}B')^{-1}G\bar{X}$$

Replacing  $\bar{\beta}_1$  into the first equation we get:

$$0 = (G'(B\Gamma^{-1}B')^{-1}G + \Theta' - \rho(B\Gamma^{-1}B')^{-1}G)\bar{X} \equiv W(\rho)\bar{X}$$

If  $\bar{X} \neq 0$ , this equation implies that

$$0 = det(W(\rho)) = det(G'(B\Gamma^{-1}B')^{-1}G + \Theta' - \rho(B\Gamma^{-1}B')^{-1}G)$$

Note that using the definitions of G and  $\bar{\beta}_2$ 

$$G'(B\Gamma^{-1}B')^{-1}G = (\bar{\beta}_2B\Gamma^{-1}B' - A')(B\Gamma^{-1}B')^{-1}(B\Gamma^{-1}B'\bar{\beta}_2 - A)$$
$$\bar{\beta}_2B\Gamma^{-1}B'\bar{\beta}_2 = Q + A'\bar{\beta}_2 + \bar{\beta}_2A + \rho\bar{\beta}_2$$

Expanding the first equation we get:

$$G'(B\Gamma^{-1}B')^{-1}G = \bar{\beta}_2 B\Gamma^{-1}B'\bar{\beta}_2 + A'(B\Gamma^{-1}B')^{-1}A - A'\bar{\beta}_2 - \bar{\beta}_2 A$$

Replacing  $\bar{\beta}_2 B \Gamma^{-1} B' \bar{\beta}_2$  into the second expression of the first equation we get:

$$G'(B\Gamma^{-1}B')^{-1}G = Q + A'(B\Gamma^{-1}B')^{-1}A + \rho\bar{\beta}_2$$

Replacing this back into the expression for the determinant, we get

$$0 = det(W(\rho)) = det(Q + \Theta' + A'(B\Gamma^{-1}B')^{-1}A + \rho\bar{\beta}_2 - \rho(B\Gamma^{-1}B')^{-1}G)$$
  
=  $det(Q + \Theta' + A'(B\Gamma^{-1}B')^{-1}A + \rho\bar{\beta}_2 - \rho(B\Gamma^{-1}B')^{-1}(B\Gamma^{-1}B'\bar{\beta}_2 - A))$   
=  $det(Q + \Theta' + A'(B\Gamma^{-1}B')^{-1}A + \rho(B\Gamma^{-1}B')^{-1}A)$ 

We are assuming that  $W(0) = Q + \Theta' + A'(B\Gamma^{-1}B')^{-1}A$  is positive definite, so det(W(0)) > 0. Since  $W(\rho) = W(0) + \rho(B\Gamma^{-1}B')^{-1}A$ , and W(0) is positive definite, then  $W(\rho)$  must have positive eigenvalues for  $\rho$  small enough. Then, there must exists a  $\bar{\rho}_1 > 0$  such that for all  $\rho \in [0, \bar{\rho}_1)$ , then  $det(W(\rho)) > 0$ . Thus for any  $\rho$  in this interval, the only steady state is  $\bar{X} = 0$ .

Moreover, let  $\lambda(\rho)$  be the eigenvalues of the matrix  $\mathcal{H}(\rho)$ . We have shown that  $\lambda_i(0) \neq 0$  for i = 1, 2, ..., 2n. Additionally, Proposition 5 shows that  $\lambda_i(0) = -\lambda_{n+i}(0)$  for i = 1, 2, ..., 2n.

 $1, 2, \ldots, n$ . Thus we  $\lambda_1(0) < 0, \lambda_2(0) < 0, \ldots, \lambda_n(0) < 0$ , i.e. for  $\rho = 0$ , n eigenvalues of  $\mathcal{H}(0)$  are strictly negative. Since all the eigenvalues of the matrix  $\mathcal{H}(\rho)$  are continuous functions of  $\rho$ , then there must exists a  $\bar{\rho}_2 > 0$  such that n of the eigenvalues of  $\mathcal{H}(\rho)$  are strictly negative for all  $\rho \in [0, \bar{\rho}_2)$ .

Taking  $\bar{\rho} = \min \{ \bar{\rho}_1, \bar{\rho}_2 \}$  we finish the proof.  $\Box$ 

**Proof.** (of Proposition 14) The MFG Hamiltonian matrix is just  $2 \times 2$  and given by

$$\mathcal{H} = \begin{bmatrix} \rho + a - \bar{\beta}_2 \gamma_B^{-1} & \theta \\ & & \\ \gamma_B^{-1} & -a + \gamma_B^{-1} \bar{\beta}_2 \end{bmatrix} \equiv \begin{bmatrix} \rho - g & \theta \\ \gamma_B^{-1} & g \end{bmatrix}$$

where  $\bar{\beta}_2$  is the negative root of

$$0 = \frac{(\bar{\beta}_2)^2}{\gamma_B} - \bar{\beta}_2(2a + \rho) - q \text{ or}$$
$$\frac{\bar{\beta}_2}{\gamma_B} = a + \frac{\rho}{2} - \sqrt{\left(a + \frac{\rho}{2}\right)^2 + \frac{q}{\gamma_B}}$$

We have:

$$tr(\mathcal{H}) = \lambda_1 + \lambda_2 = \rho \text{ and}$$

$$D(c) \equiv \det(\mathcal{H}) = \lambda_1 \lambda_2$$

$$= \left(\rho + a - \frac{\bar{\beta}_2}{\gamma_B}\right) \left(\frac{\bar{\beta}_2}{\gamma_B} - a\right) - \frac{\theta}{\gamma_B}$$

$$= \left(\frac{\rho}{2} + \sqrt{\left(k + \frac{\rho}{2}\right)^2 + \frac{q}{\gamma_B}}\right) \left(\frac{\rho}{2} - \sqrt{\left(a + \frac{\rho}{2}\right)^2 + \frac{q}{\gamma_B}}\right) + \frac{bc}{\gamma}$$

$$= -a(a + \rho) - \frac{q + \theta}{\gamma_B}$$

We will use  $\lambda_1$  for the smaller root. Simple algebra gives:

$$\lambda_{1} = \frac{\rho}{2} - \sqrt{\left(\frac{\rho}{2}\right)^{2} - \det\left(\mathcal{H}\right)} \text{ and } \lambda_{2} = \frac{\rho}{2} + \sqrt{\left(\frac{\rho}{2}\right)^{2} - \det\left(\mathcal{H}\right)}$$
where  $\left(\frac{\rho}{2}\right)^{2} - \det\left(\mathcal{H}\right) = \left(\frac{\rho}{2} + k\right)^{2} + \frac{q + \theta}{\gamma_{B}}$ 

From here we get the expressions for the derivatives of  $\lambda_1$ . Since  $\dot{X}(t) = \lambda_1 X(t)$ , we require that  $\lambda_1 < \rho/2$  so that  $\beta_0(t)$  is bounded.

Define two important threshold values for the parameter c measuring strategic complementarity.

$$\lambda_1 = 0 \implies -\theta = -\theta^* \equiv a(a+\rho)\gamma_B + q$$

$$\lambda_1 = \frac{\rho}{2} \implies -\theta = -\theta^{**} \equiv \gamma_B \left(\frac{\rho}{2} + a\right)^2 + q$$

The classification of the equilibrium follows directly from the properties of the thresholds. In particular, at the threshold  $-\theta^*$ , the speed of convergence is  $\lambda_1 = 0$ . At the threshold  $-\theta^{**}$ , then the speed of convergence is  $\lambda_1 = \rho/2$ . The fact that we can divide the space of  $-\theta$  into intervals follows from the monotonicity of  $\lambda_1$  with respect to  $-\theta$ , i.e. it follows since  $\lambda_1$  is increasing in  $-\theta$ . When  $-\theta \geq -\theta^{**}$  then the real part of both eigenvalues equals  $\rho/2$ , and hence u(0,t) does not converges. This concludes the proof.  $\square$ 

**Proof.** (of Proposition 15). We start noticing that the minimization of the Lagrangian L with respect to  $\lambda$  is equivalent to the Kolmogorov Forward equation, hence we include that as part of the solution. The second step is to rewrite the part of the Lagrangian which involves the constraints by repeatedly integration by parts. This will produce a linear expression on m, with the exception of the term in  $\mathcal{U}$ .

We write the Lagrangian as

$$L(a, m, \lambda) = \lim_{T \to \infty} \int_0^T e^{-\rho t} \left[ \mathcal{U}(m(t)) - \frac{1}{2} \int \alpha'(x, t) \, \Gamma \, \alpha(x, t) \, m(x, t) \, dx \right] dt$$
$$- \int_0^T \int e^{-\rho t} \lambda(x, t) \, \mathrm{div} \left( \left( B\alpha(x, t) - Ax \right) m(x, t) \right) dx \, dt$$
$$+ \int_0^T \int e^{-\rho t} \lambda(x, t) \left( \frac{1}{2} tr \left( \Sigma m_{xx}(x, t) \right) - m_t(x, t) \right) dx \, dt$$

1. We start with the first term involving the divergence:

$$-\int e^{-\rho t} \lambda(x,t) \operatorname{div} \left( \left( B\alpha(x,t) - Ax \right) m(x,t) \right) dx$$

$$= -\int e^{-\rho t} \lambda(x,t) \sum_{i=1}^{n} \left( \left( \sum_{r=1}^{k} B_{i,r} \alpha_{r}(x,t) - \sum_{j=1}^{n} A_{ij} x_{j} \right) m(x,t) \right)_{x_{i}} dx$$

For each term in the sum of the divergence, we reorder the integral to consider:

$$-\int \lambda(x,t) \left( \left( \sum_{r=1}^k B_{i,r} \alpha_r(x,t) - \sum_{j=1}^n A_{ij} x_j \right) m(x,t) \right)_{x_i} dx_i$$

$$= \int \lambda_{x_i}(x,t) \left( \left( \sum_{r=1}^k B_{i,r} \alpha_r(x,t) - \sum_{j=1}^n A_{ij} x_j \right) m(x,t) \right) dx_i$$

$$-\lambda(x,t) \left( \left( \sum_{r=1}^k B_{i,r} \alpha_r(x,t) - \sum_{j=1}^n A_{ij} x_j \right) m(x,t) \right) \Big|_{x_i = +\infty}^{x_i = +\infty}$$

which using the assumed integrability of λ and λ<sup>x</sup> and the maintained assumptions about the limits of m and m<sup>x</sup><sup>j</sup> . Thus we have:

$$-\int_0^T \int e^{-\rho t} \lambda(x,t) \operatorname{div} \left( \left( B\alpha(x,t) - Ax \right) m(x,t) \right) dx dt$$

$$= \int_0^T \int e^{-\rho t} m(x,t) \sum_{i=1}^n \lambda_{x_i}(x,t) \left( \sum_{r=1}^k B_{i,r} \alpha_r(x,t) - \sum_{j=1}^n A_{ij} x_j \right) dx dt$$

2. For the second term, we focus in the inside integral

$$\int \lambda(x,t)tr\left(\sum m_{xx}(x,t)\right)dx = e^{-\rho t}\sum_{k}\sum_{j}\sigma_{kj}\int\cdots\int\lambda(x,t)m_{x_{k}x_{j}}(x,t)dx_{1}\ldots dx_{n}$$

Take the case of j = k and concentrate in the dx<sup>j</sup> integral:

$$\int \lambda(x,t)m_{x_jx_j}(x,t)dx_j = -\int \lambda_{x_j}(x,t)m_{x_j}(x,t)dx_j + \lambda(x,t)m_{x_j}(x,t)\Big|_{x_j=-\infty}^{x_j=+\infty}$$

$$= \int \lambda_{x_jx_j}(x,t)m(x,t)dx_j + \lambda(x,t)m_{x_j}(x,t)\Big|_{x_j=-\infty}^{x_j=+\infty} + \lambda_{x_j}(x,t)m(x,t)\Big|_{x_j=-\infty}^{x_j=+\infty}$$

$$= \int \lambda_{x_jx_j}(x,t)m(x,t)dx_j$$

where we eliminate the boundary terms under the assumption that λ(x, t) and λ<sup>x</sup><sup>j</sup> (x, t), and the maintained assumptions about the limits of m and m<sup>x</sup><sup>j</sup> .

Now we consider the case where j ̸= k and change the order of the integrals so it reads:

$$\int \int \lambda(x,t) m_{x_j x_k}(x,t) dx_j dx_k = -\int \int \lambda_{x_j}(x,t) m_{x_k}(x,t) dx_j dx_k + \int \lambda(x,t) m_{x_k}(x,t) \Big|_{x_j = -\infty}^{x_j = +\infty} dx_k$$

$$= -\int \int \lambda_{x_j}(x,t) m_{x_k}(x,t) dx_j dx_k$$

using again that  $\lambda(x,t)$  stays bounded as any coordinate of  $|x_i| \to \infty$ . So we have:

$$-\int \int \lambda_{x_j}(x,t)m_{x_k}(x,t)dx_jdx_k = -\int \int \lambda_{x_j}(x,t)m_{x_k}(x,t)dx_kdx_j$$

$$=\int \left[\int \lambda_{x_jx_k}(x,t)m(x,t)dx_k - \lambda_{x_j}(x,t)m_{(x,t)}\big|_{x_k=-\infty}^{x_k=+\infty}\right]dx_j$$

$$=\int \lambda_{x_jx_k}(x,t)m(x,t)dx_k$$

where again we use that  $\lambda_{x_j}(x,t)$  stays bounded as any coordinate of  $|x_i| \to \infty$ . Thus we obtained:

$$\int_0^T \int e^{-\rho t} \lambda(x,t) \frac{1}{2} tr\left(\Sigma m_{xx}(x,t)\right) dx dt = \int_0^T \int e^{-\rho t} m(x,t) \frac{1}{2} tr\left(\Sigma \lambda_{xx}(x,t)\right) dx dt$$

3. Third, the second part of the last term, we change the order of integration and write for the inner integral:

$$-\int_{0}^{T} \lambda(x,t) e^{-\rho t} m_{t}(x,t) dt = \int_{0}^{T} e^{-\rho t} \left[ \lambda_{t}(x,t) - \rho \lambda(x,t) \right] m(x,t) dt - e^{-\rho t} \lambda(x,t) m(x,t) \Big|_{t=0}^{t=T}$$

Let's define  $L^*(m, \lambda) = \max_a L(a, m, \lambda)$  as the Lagrangian maximized with respect to a. We use the terms we computed above to rewrite the Lagrangian as:

$$L^{*}(m,\lambda) = \lim_{T \to \infty} \int_{0}^{T} e^{-\rho t} \mathcal{U}(m(t))$$

$$+ \max_{a} \int_{0}^{T} \int e^{-\rho t} \left[ -\frac{1}{2} \alpha'(x,t) \Gamma \alpha(x,t) + \sum_{i=1}^{n} \lambda_{x_{i}}(x,t) \left( \sum_{r=1}^{k} B_{i,r} \alpha_{r}(x,t) - \sum_{j=1}^{n} A_{ij} x_{j} \right) \right] m(x,t) dx dt$$

$$\int_{0}^{T} \int e^{-\rho t} \left[ \frac{1}{2} tr \left( \sum \lambda_{xx}(x,t) \right) - \rho \lambda(x,t) + \lambda_{t}(x,t) \right] m(x,t) dx dt$$

$$- \int e^{-\rho t} \lambda(x,t) m(x,t) \Big|_{t=0}^{t=T} dx$$

We differentiate L ∗ (m, λ) with respect to m(x, t) obtaining:

$$\frac{\partial L^*(m,\lambda;x,t)}{\partial m} = e^{-\rho t} \left[ -\frac{1}{2} x' Q x - X(t)' (\Theta' + \Theta) x \right] 
+ \max_{a(x,t)} e^{-\rho t} \left[ -\frac{1}{2} \alpha'(x,t) \Gamma \alpha(x,t) + \sum_{i=1}^n \lambda_{x_i}(x,t) \left( \sum_{r=1}^k B_{i,r} \alpha_r(x,t) - \sum_{j=1}^n A_{ij} x_j \right) \right] 
+ e^{-\rho t} \left[ \frac{1}{2} tr \left( \sum \lambda_{xx}(x,t) \right) + \lambda_t(x,t) - \rho \lambda(x,t) \right]$$

for all 0 < t < T and all x ∈ R n . Note we can write:

$$H(\lambda_x(x,t),x) = \max_{\alpha} -\frac{1}{2}\alpha'\Gamma\alpha + \sum_{i=1}^{n} \lambda_{x_i}(x,t) \left(\sum_{r=1}^{k} B_{i,r}\alpha_r - \sum_{j=1}^{n} A_{ij}x_j\right)$$
$$= \max_{\alpha} -\frac{1}{2}\alpha'\Gamma\alpha + \lambda'_x(x,t) \left(B\alpha - Ax\right)$$

where λx(x, t) is the n−dimensional vector of derivatives of λ. Thus we can write

$$0 = \frac{\partial L^*(m,\lambda;x,t)}{\partial m} \text{ as equivalent to}$$

$$\rho \lambda(x,t) = -\frac{1}{2}x'Qx - X(t)'(\Theta' + \Theta)x + H(\lambda_x(x,t),x) + \frac{1}{2}tr\left(\Sigma \lambda_{xx}(x,t)\right) + \lambda_t(x,t)$$

The derivative with respect to m(x, T) gives:

$$\lim_{T \to \infty} e^{-\rho T} \lambda(x, T) = 0$$

Finally, we can use the envelope in the Hamiltonain to obtain the optimal value for a(x, t) and thus write the Kolmogorov forward equation as:

$$m_t(x,t) = -div\left(H_p(\lambda_x(x,t),x)m(x,t)\right) + \frac{1}{2}tr\left(\sum m_{xx}(x,t)\right)$$

□

Proof. (of [Proposition 16\)](#page-30-4) We fix a coordinate and evaluate the stochastic process of X<sup>j</sup> :

$$\begin{split} dX_{j}(t) &= d \int x_{j} \, m_{t}(x,t) dx \\ &= \int_{\mathbb{R}^{n}} \left[ -div \left( H_{p}(v_{x}(x,X(t)),x) \, m(x,t) \right) + \frac{1}{2}tr \left( \Sigma \, m_{xx}(x,t) \right) \right] x_{j} \, dx \, dt \\ &+ \int_{\mathbb{R}^{n}} \left( m(x-\Upsilon,t) - m(x,t) \right) \, x_{j} \, dx \, dN^{+}(t) + \int \left( m(x+\Upsilon,t) - m(x,t) \right) x_{j} \, dx \, dN^{-}(t) \\ &= - \int_{\mathbb{R}^{n}} \sum_{i} \left( H_{p_{i}}(v_{x}(x,X(t)),x) \, m(x,t) \right)_{x_{i}} x_{j} \, dx \, dt + \Upsilon_{j} \, dN^{+}(t) - \Upsilon_{j} \, dN^{-}(t) \end{split}$$

Now we split the sum in two term:

$$dX_{j}(t) = -\int_{\mathbb{R}^{n}} \left( H_{p_{j}}(v_{x}(x, X(t)), x) \, m(x, t) \right)_{x_{j}} x_{j} \, dx \, dt + \Upsilon_{j} \, dN^{+}(t) - \Upsilon_{j} \, dN^{-}(t)$$
$$- \sum_{i \neq j} x_{j} \int_{\mathbb{R}^{n}} \left( H_{p_{i}}(v_{x}(x, X(t)), x) \, m(x, t) \right)_{x_{i}} dx \, dt$$

Take a typical term i ̸= j. Then

$$\begin{split} & \int_{\mathbb{R}^n} \left( H_{p_i}(v_x(x,X(t)),x) \, m(x,t) \right)_{x_i} dx \\ & = \int_{x' \in \mathbb{R}^{n-1}} \int \left( H_{p_i}(v_x(x,X(t)),x) \, m(x,t) \right)_{x_i} dx_i dx' \\ & = \int_{x' \in \mathbb{R}^{n-1}} \left[ \lim_{x_i \to \infty} H_{p_i}(v_x(x,X(t)),x) \, m(x,t) - \lim_{x_i \to -\infty} H_{p_i}(v_x(x,X(t)),x) \, m(x,t) \right] dx' \end{split}$$

which is zero using that ||x||<sup>2</sup>m(x, t) → 0 as |x<sup>i</sup> | → ∞ for any i. Thus

$$dX_j(t) = -\int_{\mathbb{R}^n} \left( H_{p_j}(v_x(x, X(t)), x) \, m(x, t) \right)_{x_j} x_j \, dx \, dt + \Upsilon_j \, dN^+(t) - \Upsilon_j \, dN^-(t)$$
$$= \int_{\mathbb{R}^n} \left[ v_x(x, X(t)) B' \Gamma^{-1} B - x' A' \right]_j \, m(x, t) \, dx \, dt + \Upsilon_j \, d\mathcal{J}(t)$$

where the equality uses the form the derivative of the Hamiltonian Hp(p, x) = p ′Γ <sup>−</sup><sup>1</sup> − x ′A′ . In vector form, using that X is column vector:

$$dX(t) = \int_{\mathbb{R}^n} \left[ B\Gamma^{-1} B' v_x(x, X(t)) - Ax \right] m(x, t) dx dt + \Upsilon d\mathcal{J}(t)$$

Using the form of the derivative of the value function:

$$dX(t) = \int_{\mathbb{R}^n} B\Gamma^{-1}B' \left[ S_1 X + S_2 x \right] m(x,t) dt - AX(t)dt + \Upsilon d\mathcal{J}(t)$$
$$= \underbrace{\left( B\Gamma^{-1}B' \left[ S_1 + S_2 \right] - A \right)}_{M} X(t)dt + \Upsilon d\mathcal{J}(t)$$

**Proof.** (of Proposition 17). We start with the HJB in equation (30) where we have replaced v and its derivatives using the form of v in equation (31):

$$\rho \left[ S_0 + X' S_1 x + \frac{1}{2} x' S_2 x + \frac{1}{2} X' S_3 X \right] 
= -\frac{1}{2} x' Q x - X' \Theta x 
+ \frac{1}{2} v_x (x, X)' B \Gamma^{-1} B' v_x (x, X) - \frac{1}{2} (v_x (x, X)' A x + x' A' v_x (x, X)) 
+ \frac{1}{2} tr (\Sigma S_2) + v_X (x, X)' M X 
+ \frac{\kappa}{2} \left[ (X + \Upsilon)' S_1 (x + \Upsilon) + \frac{1}{2} (x + \Upsilon)' S_2 (x + \Upsilon) + \frac{1}{2} (X + \Upsilon)' S_3 (X + \Upsilon) \right] 
+ \frac{\kappa}{2} \left[ (X - \Upsilon)' S_1 (x - \Upsilon) + \frac{1}{2} (x - \Upsilon)' S_2 (x - \Upsilon) + \frac{1}{2} (X - \Upsilon)' S_3 (X - \Upsilon) \right] 
- \kappa (X' S_1 x + \frac{1}{2} x' S_2 x + \frac{1}{2} X' S_3 X)$$

Note that

$$\frac{\kappa}{2} \left[ (X + \Upsilon)' S_1(x + \Upsilon) + \frac{1}{2} (x + \Upsilon)' S_2(x + \Upsilon) + \frac{1}{2} (X + \Upsilon)' S_3(X + \Upsilon) \right] 
+ \frac{\kappa}{2} \left[ (X - \Upsilon)' S_1(x - \Upsilon) + \frac{1}{2} (x - \Upsilon)' S_2(x - \Upsilon) + \frac{1}{2} (X - \Upsilon)' S_3(X - \Upsilon) \right] 
= \kappa (X' S_1 x + \frac{1}{2} x' S_2 x + \frac{1}{2} X' S_3 X + \kappa \Upsilon' (S_1 + S_2 + S_3) \Upsilon$$

Replacing into the previous expression we obtain:

$$\rho \left[ S_0 + X' S_1 x + \frac{1}{2} x' S_2 x + \frac{1}{2} X' S_3 X \right]$$

$$= -\frac{1}{2} x' Q x - X' \Theta x$$

$$+ \frac{1}{2} v_x(x, X)' B \Gamma^{-1} B' v_x(x, X) - \frac{1}{2} \left( v_x(x, X)' A x + x' A' v_x(x, X) \right)$$

$$+ v_X(x, X)' M X + \frac{1}{2} tr \left( \Sigma S_2 \right) + \kappa \Upsilon' \left( S_1 + S_2 + S_3 \right) \Upsilon$$

Replacing the the expressions for  $v_x(x, X)$  and  $v_X(x, X)$  which comes equation (31)

$$v_x(x, X) = S_1 X + S_2 x$$
 and  $v_X(x, X) = S_1' x + S_3 X$ 

we obtain:

$$\rho \left[ S_0 + X' S_1 x + \frac{1}{2} x' S_2 x + \frac{1}{2} X' S_3 X \right] = -\frac{1}{2} x' Q x - X' \Theta x$$

$$+ \frac{1}{2} \left( X' S_1' + x' S_2 \right) \Gamma^{-1} \left( S_1 X + S_2 x \right)$$

$$- \frac{1}{2} \left[ \left( X' S_1' + x' S_2 \right) A x + x' A' \left( S_1 X + S_2 x \right) \right]$$

$$+ x' S_1 M X + X' S_3 M X + \frac{1}{2} tr \left( \Sigma S_2 \right) + \kappa \Upsilon' \left( S_1 + S_2 + S_3 \right) \Upsilon$$

We can now match the coefficients for the constants, cross-products x with X and quadratics terms of x and X. For the constant we have:

$$\rho S_0 = \frac{1}{2} tr \left( \Sigma S_2 \right) + \kappa \Upsilon' \left( S_1 + S_2 + S_3 \right) \Upsilon$$

For the cross-products we have:

$$X'\rho S_1 x = -X'\Theta x + X'\frac{1}{2}S_1'B\Gamma^{-1}B'S_2 x + x'\frac{1}{2}S_2'B\Gamma^{-1}B'S_1 X$$
$$-X'\frac{1}{2}S_1'Ax - x'\frac{1}{2}A'S_1 X + x'S_1 MX$$

which can be written as:

$$X'\rho S_1 x = -X'\Theta x + X'S_1'B\Gamma^{-1}B'S_2 x - X'S_1'Ax + X'M'S_1'x$$

and thus gives:

$$\rho S_1 = -\Theta + S_1' B \Gamma^{-1} B' S_2 + S_1' A + M' S_1'$$

For the quadratic terms on x we have:

$$\frac{\rho}{2}S_2 = -\frac{1}{2}Q + \frac{1}{2}S_2B\Gamma^{-1}B'S_2 - \left(\frac{1}{2}S_2A + \frac{1}{2}A'S_2\right)$$

or

$$\rho S_2 = -Q + S_2 B \Gamma^{-1} B' S_2 - (S_2 A + A' S_2)$$

For the quadratic terms on X we have:

$$\frac{\rho}{2}S_3 = \frac{1}{2}S_1'\Gamma^{-1}S_1 + S_3M$$

□

Proof. (of [Proposition 18\)](#page-30-6) First we add [equation](#page-30-1) [\(35\)](#page-30-1) and [equation](#page-30-0) [\(36\)](#page-30-0) obtaining

$$\rho(S_1 + S_2) = -\Theta - Q + S_1'B\Gamma^{-1}B'S_2 - S_1'A + M'S_1' + S_2B\Gamma^{-1}B'S_2 - (S_2A + A'S_2)$$

Then we replace M using [equation](#page-30-3) [\(33\)](#page-30-3) obtaining:

$$\rho(S_1 + S_2)$$

$$= -\Theta - Q + S_1'B\Gamma^{-1}B'S_2 - S_1'A + ([S_1' + S_2']B\Gamma^{-1}B' - A')S_1' + S_2B\Gamma^{-1}B'S_2 - (S_2A + A'S_2)$$

$$= -\Theta - Q + S_1'B\Gamma^{-1}B'S_2 + S_2B\Gamma^{-1}B'S_2 + S_1'B\Gamma^{-1}B'S_1' + S_2'B\Gamma^{-1}B'S_1'$$

$$- ((S_1' + S_2)A + A'(S_1' + S_2))$$

Since S<sup>2</sup> is symmetric this equation can be written as:

$$\rho(S_1 + S_2) = -\Theta - Q + (S_1' + S_2)B\Gamma^{-1}B'(S_1' + S_2) - ((S_1' + S_2)A + A'(S_1' + S_2))$$

If S<sup>1</sup> is symmetric we can write:

$$\rho(S_1 + S_2) = -\Theta - Q + (S_1 + S_2)B\Gamma^{-1}B'(S_1 + S_2) - (S_1 + S_2)A - A'(S_1 + S_2)$$

or

$$PB\Gamma^{-1}B'P = (Q + \Theta') + \rho P + PA + A'P$$

which is [equation](#page-21-0) [\(24\)](#page-21-0).

□

Proof. (of [Proposition 19\)](#page-31-0) The law of motion for a decision maker with x(t) = x which faces current state X. We want to characterize µ <sup>∗</sup> as a function of x and X solving:

$$dx = (B\alpha^*(u_x(x,t),x) - Ax) dt + \Sigma^{1/2} dW$$
$$\equiv \mu^*(x,X(t)) dt + \Sigma^{1/2} dW$$

We collect the following result: the first order condition for a, the derivative of the Hamiltonian, the expression for ux, and the solution in a saddle path:

$$a^*(u_x(x,t),x) = \Gamma^{-1}B'u_x(x,t)$$
$$u_x(x,t) = \beta_1(t) + \bar{\beta}_2x$$
$$\beta_1(t) = SX(t)$$

Then we obtain

$$\mu \left( B\alpha^*(u_x(x,t),x), x \right) = B\alpha^*(u_x(x,t),x) - Ax$$

$$= B\Gamma^{-1}B'SX(t) + \left( B\Gamma^{-1}B\bar{\beta}_2 - A \right)x = B\Gamma^{-1}B'SX(t) + Gx$$

$$= JX(t) + Gx$$

Then

$$\mu^*(x, X) \equiv JX + Gx = [J + G]X + G(x - X)$$

This completes the proof. □

Proof. (of [Lemma 4\)](#page-20-1) First note that x(t) = (z(t) + X(t)) and given our assumptions z(t) and X(t) are independent of each other, and z(t) follows a process dz(t) = Gz(t)dt + Σ <sup>1</sup>/<sup>2</sup>dW, where the eigenvalues of G are all strictly less than ρ/2. From here we get that E [z(t)|z(0) = 0] = 0. On the other hand dX(t) = MX(t)dt + ΥdJ . We can write:

$$\begin{split} &e^{-\rho t}E\left[F(x(t),m(t))+R(\alpha(t))\,|x(0)=X(0)=X_0\right]\\ &=e^{-\rho t}E\left[-\frac{1}{2}x'(t)Qx(t)-x'(t)\Theta X(t)-\frac{1}{2}\alpha'(t)\Gamma\alpha(t)\,|x(0)=X(0)=X_0\right]\\ &\leq e^{-\rho t}E\left[-\frac{1}{2}x'(t)Qx(t)-x'(t)\Theta X(t)\,|x(0)=X(0)=X_0\right]\\ &=e^{-\rho t}E\left[-\frac{1}{2}\left(X(t)+z(t)\right)'Q\left(X(t)+z(t)\right)-\left(X(t)+z(t)\right)'\Theta X(t)\,|X(0)=X_0,z(0)=0\right]\\ &\leq e^{-\rho t}E\left[-\frac{1}{2}X'(t)QX(t)-\frac{1}{2}z'(t)Qz(t)-X'(t)\Theta X(t)\,|X(0)=X_0,z(0)=0\right] \end{split}$$

where we use the independence of z(t) and X(t), and that E [z(t)|z(0) = 0] = 0 and that Q is positive definite.

$$e^{-\rho t} E\left[F(x(t), m(t)) + R(\alpha(t)) | x(0) = X(0) = X_0\right]$$

$$\leq e^{-\rho t} E\left[-\frac{1}{2}X'(t)QX(t) - X'(t)\Theta X(t) | X(0) = X_0, z(0) = 0\right]$$

$$= -e^{-\rho t} E\left[X'(t) \left(\frac{1}{2}Q + \Theta\right) X(t) | X(0) = X_0\right]$$

$$= -E\left[X'(t)e^{-\frac{\rho}{2}t} \left(\frac{1}{2}Q + \Theta\right) e^{-\frac{\rho}{2}t} X(t) | X(0) = X_0\right]$$

because Q is positive definite. Finally, if the real part of the roots of M are larger or equal

than  $\rho/2$ , then

$$e^{-\rho t} E\left[F(x(t), m(t)) + R(\alpha(t)) | x(0) = X(0) = X_0\right]$$

$$\leq -E\left[X'(t) | X(0) = X_0\right] e^{-\frac{\rho}{2}t} \left(\frac{1}{2}Q + \Theta\right) e^{-\frac{\rho}{2}t} E\left[X'(t) | X(0) = X_0\right]$$

$$\equiv -W'(t) \left(\frac{1}{2}Q + \Theta\right) W(t)$$

where we define  $W(t) \equiv e^{-\frac{\rho}{2}t} E\left[X(t) | X(0) = X_0\right]$ . Using the process for X(t) we obtain that  $\dot{W}(t) = \left[M - I_n \frac{\rho}{2}\right] W(t)$  with  $W(0) = X_0$ . Diagonalizing the matrix  $M - I_n \frac{\rho}{2}$  we obtain:  $M = N\left(\Lambda - I_n \frac{\rho}{2}\right) N^{-1}$  where  $\Lambda$  is a block diagonal matrix where each of  $1 \leq j \leq r \leq n$  Jordan blocks corresponding to the j non-repeated eigenvalues of M. Thus  $K(t) \equiv N^{-1} W(t)$ , so that  $\dot{K}(t) = \left(\Lambda - I_n \frac{\rho}{2}\right) K(t)$  and then solution for each of the k blocks  $K_j(t) = e^{\left(\Lambda_j - I_n \frac{\rho}{2}\right)t} K_j(0)$ , or

$$W(t) = NK(t) = Ne^{\left(\Lambda - I_n \frac{\rho}{2}\right)t} N^{-1} W(0) = Ne^{\left(\Lambda - I_n \frac{\rho}{2}\right)t} N^{-1} X_0$$

The matrix  $\Lambda$  is block diagonal, each bock  $\Lambda_j$  corresponds the different eigenvalues and it is of size  $s_j \times s_j$ . The integer  $s_j$  is the multiplicity of the corresponding eigenvalue. Thus, for a matrix with r blocks, we have

$$e^{\left(\Lambda - I_{n}\frac{\rho}{2}\right)t} = \begin{bmatrix} e^{\left(\Lambda_{1} - I_{s_{1}}\frac{\rho}{2}\right)t} & 0 & 0 & \dots & 0 \\ 0 & e^{\left(\Lambda_{2} - I_{s_{2}}\frac{\rho}{2}\right)} & 0 & \dots & 0 \\ \vdots & \vdots & \vdots & \vdots & \vdots \\ 0 & 0 & \dots & e^{\left(\Lambda_{r} - I_{s_{r}}\frac{\rho}{2}\right)t} \end{bmatrix}$$

where the exponential of each block satisfy

$$e^{\left(\Lambda_j - I_{s_j} \frac{\rho}{2}\right)t} = e^{\Lambda_j t} e^{-\frac{\rho}{2}t}$$
 and  $e^{\Lambda_j t} = e^{\lambda_j t} e^{U_j(t)}$ 

for an upper triangular matrix  $U_j(t)$  of size  $s_j \times s_j$  which has zeros below the diagonal satisfying

$$e^{\left(\Lambda_{j} - I_{s_{j}} \frac{\rho}{2}\right)t} = e^{\left(\lambda_{j} - \frac{\rho}{2}\right)t} \begin{bmatrix} 1 & t & \frac{t^{2}}{2} & \dots & \frac{t^{s_{j}-1}}{(s_{j}-1)!} \\ 0 & 1 & t & \dots & \frac{t^{s_{j}-2}}{(s_{j}-2)!} \\ \vdots & \vdots & \vdots & \vdots & \vdots \\ 0 & 0 & \dots & 1 \end{bmatrix} \equiv e^{\left(\lambda_{j} - \frac{\rho}{2}\right)t} e^{U_{j}(t)}$$

Inserting this back:

$$\begin{split} e^{-\rho t} E\left[F(x(t), m(t)) + R(\alpha(t)) \left| x(0) = X(0) = X_0\right] \\ &\leq -W'(t) \left(\frac{1}{2}Q + \Theta\right) W(t) \\ &= -X'_0 \left(N^{-1}\right)' \left(e^{\left(\Lambda - I_n \frac{\rho}{2}\right)t}\right)' N' \left(\frac{1}{2}Q + \Theta\right) N e^{\left(\Lambda - I_n \frac{\rho}{2}\right)t} N^{-1} X_0 \end{split}$$

Suppose that there is a block with  $\lambda_j$  such that  $\lambda_j + \frac{\rho}{2} \geq 0$ . Without loss of generality, assume it is the first block, i.e. j = 1. Because N has full rank, consider a value of the vector  $X_0$  for which the vector  $Y(0) = N^{-1}X_0$  has non-zero values only for all the coordinates except the very first, so  $Y(0) = [0, 0, \dots, 0, 1]'$ . Then,

$$Y(0) = N^{-1}\hat{X}(0)$$
 with  $Y_1(0) = 1$  and  $Y_j(0) = 0$  for  $j = 2, 3, ..., n$ 

thus

$$e^{\left(\Lambda - I_{n\frac{\rho}{2}}\right)t}Y(0) = \begin{bmatrix} e^{\left(\Lambda_{1} - I_{s_{1}\frac{\rho}{2}}\right)t} & 0 & 0 & \dots & 0 \\ 0 & e^{\left(\Lambda_{2} - I_{s_{2}\frac{\rho}{2}}\right)} & 0 & \dots & 0 \\ \vdots & \vdots & \vdots & \vdots & \vdots \\ 0 & 0 & 0 & \dots & e^{\left(\Lambda_{r} - I_{s_{r}\frac{\rho}{2}}\right)t} \end{bmatrix} \begin{bmatrix} 1 \\ 0 \\ \vdots \\ 0 \end{bmatrix}$$

$$= \begin{bmatrix} e^{\left(\lambda_{1} - \frac{\rho}{2}\right)t}e^{U_{1}(t)} & 0 & 0 & \dots & 0 \\ 0 & e^{\left(\lambda_{2} - \frac{\rho}{2}\right)t}e^{U_{2}(t)} & 0 & \dots & 0 \\ \vdots & \vdots & \vdots & \vdots & \vdots \\ 0 & 0 & 0 & \dots & e^{\left(\lambda_{r} - \frac{\rho}{2}\right)t}e^{U_{r}(t)} \end{bmatrix} \begin{bmatrix} 1 \\ 0 \\ \vdots \\ 0 \end{bmatrix}$$

Since  $e^{U_1(t)}$  is an  $s_1 \times s_1$  matrix with ones in the diagonal, and zeros below it, then

$$e^{U_1(t)} \begin{bmatrix} 1\\0\\\vdots\\0 \end{bmatrix} = \begin{bmatrix} 1 & t & \frac{t^2}{2} & \dots & \frac{t^{s_1-1}}{(s_1-1)!}\\ 0 & 1 & t & \dots & \frac{t^{s_1-2}}{(s_1-2)!}\\ \vdots & \vdots & \vdots & \vdots & \vdots\\ 0 & 0 & \dots & 1 \end{bmatrix} \begin{bmatrix} 1\\0\\\vdots\\0 \end{bmatrix} = \begin{bmatrix} 1\\0\\\vdots\\0 \end{bmatrix}$$

Then, the  $n \times 1$  vector is

$$e^{\left(\Lambda - I_n \frac{\rho}{2}\right)t} N^{-1} X_0 = e^{\left(\Lambda - I_n \frac{\rho}{2}\right)t} Y(0) = e^{\left(\lambda_1 - \frac{\rho}{2}\right)t} \begin{bmatrix} 1 & 0 & \cdots & 0 \end{bmatrix}'$$

Hence

$$\left(e^{\left(\Lambda - I_{n}\frac{\rho}{2}\right)t}N^{-1}X_{0}\right)'N'\left(\frac{1}{2}Q + \Theta\right)Ne^{\left(\Lambda - I_{n}\frac{\rho}{2}\right)t}N^{-1}X_{0}$$

$$= e^{(2\lambda_{1} - \rho)t}\left[N'\left(\frac{1}{2}Q + \Theta\right)N\right]_{(1,1)}$$

$$\geq \left[N'\left(\frac{1}{2}Q + \Theta\right)N\right]_{(1,1)} \equiv \kappa_{0} > 0 \text{ for all } t \geq 0$$

where we use that  $N'\left(\frac{1}{2}Q + \Theta\right)N$  is a positive definite matrix, and hence the scalar  $\left[N'\left(\frac{1}{2}Q + \Theta\right)N\right]_{(1,1)} > 0$ . Thus,

$$\int_0^T e^{-\rho t} E\left[F(x(t), m(t)) + R(\alpha(t)) | x(0) = X(0) = X_0\right] dt \le -\kappa_0 T$$

which diverges towards  $-\infty$  as  $T \to \infty$ .

Hence, if a root of M has a real part larger or equal to  $\rho/2$  the value function of the representative agent, i.e. the one with X(0) = x(0), diverges toward minus infinity for some X(0).

**Proof.** (of Proposition ??) Lemma 4 implies that all the roots of M = J + G have to have real part strictly smaller than  $\rho/2$ . We use that if  $\lambda$  is a root of the Hamiltonian matrix, so it is  $-\lambda + \rho$ , hence there is at most one set of stable roots for which the value function of an agent with x(0) = X(0) is finite.

**Proof.** (of Proposition 21). By hypothesis we can solve for  $\bar{\beta}_2$  using  $Q, A, B, \Gamma$  and  $\rho$  as the solution of equation (13). Using the data from the aggregate X(t) we can estimate its autocovariance matrix which we denote as  $U_{\dot{X},X}$ . This matrix satisfies  $U_{\dot{X},X} = B\Gamma^{-1}B'P - A$ , So, under the hypothesis of the proposition, the matrix P satisfies  $PB\Gamma^{-1}B'P = A'P + AP + \rho P + Q + \Theta$ . Subtracting  $\bar{\beta}_2$  we get  $S = P - \bar{\beta}_2$  which satisfies equation (20), and thus we have:

$$\Theta' = S B \Gamma^{-1} B' S - S \left( A - B \Gamma^{-1} B' \bar{\beta}_2 \right) - \left( A' - \bar{\beta}_2 B \Gamma^{-1} B' \right) S - \rho S$$

**Proof.** (of Proposition 22) We proceed to find the matrices A, Q and  $\Theta$  in steps.

1. Solve for  $U_{\dot{X},X} \equiv B\Gamma^{-1}B'P - A$  and  $U_{\dot{z},z} \equiv B\Gamma^{-1}B'\bar{\beta}_2 - A$ . An autoregression of the cross sectional averages using equation (38) gives  $U_{\dot{X},X}$ . An autoregression of the firm deviation z(t) using equation (39) gives  $U_{\dot{z},z}$ .

- 2. Find the matrix  $U_{\alpha,X} = \Gamma^{-1}B'P$  using times series for  $\{A(t), X(t)\}$  from equation (41).
- 3. Solve for S. The difference  $U_{\dot{X},X} U_{\dot{z},z} = B\Gamma^{-1}B'\left(P \bar{\beta}_2\right) = B\Gamma^{-1}B'S$ . Since we assume that  $B\Gamma^{-1}B'$  is known and invertible, we obtain:  $S = \left(B\Gamma^{-1}B'\right)^{-1}\left(U_{\dot{X},X} U_{\dot{z},z}\right)$ .
- 4. Solve for A. Using B, and the matrices  $U_{\dot{X},X}$  and  $U_{\alpha,X}$ , equation (38) imply  $A = BU_{\alpha,X} U_{\dot{X},X}$ .
- 5. Solve for  $\bar{\beta}_2$ . Using equation (39), and A we get  $\bar{\beta}_2 = (B\Gamma^{-1}B')^{-1}(U_{z,z} + A)$ .
- 6. Solve for P. Using equation (38), and A we get  $P = (B\Gamma^{-1}B')^{-1}(U_{\dot{X},X} + A)$ .
- 7. Solve for Q. Use the Riccati equation for  $\bar{\beta}_2$ , the already solved values of A, B and  $\bar{\beta}_2$ , and the assumption that  $\rho$  is known to solve for Q as:

$$Q = \bar{\beta}_2 B \Gamma^{-1} B' \bar{\beta}_2 - \left( \rho \bar{\beta}_2 + \bar{\beta}_2 A + A' \bar{\beta}_2 \right)$$

8. Solve for  $\Theta$ . Use the known values of  $Q, \Gamma, A, B$  and P into the Riccati equation for P o solve for  $\Theta'$ :

$$\Theta' = -Q + P B \Gamma^{-1} B' P - (\rho P + P A + A' P).$$

**Proof.** (of Proposition 23) First, note that having access to the time series for  $\alpha(t)$ , the equation (40) allows to estimate  $U_{\alpha,z} = \Gamma^{-1}B'\bar{\beta}_2$ . If we go back to the end of the proof for Proposition 22 were we have identified already P,  $\beta_2$ , A given  $\rho$ , B and  $\Gamma$ . Now, replace the expression obtained for  $\bar{\beta}_2$  to obtain

$$U_{\alpha,z} = \Gamma^{-1} B' \left( B \Gamma^{-1} B' \right)^{-1} \left( U_{\dot{z},z} + A \right)$$
 or  $U_{\alpha,z} = B^{-1} \left( U_{\dot{z},z} + A \right)$ 

We now use that in Proposition 22 A was shown to satisfy,  $A = BU_{\alpha,X} - U_{\dot{X},X}$  so:

$$U_{\alpha,z} = B^{-1} \left( U_{\dot{z},z} + BU_{\alpha,X} - U_{\dot{X},X} \right)$$
 or  $U_{\alpha,z} - U_{\alpha,X} = B^{-1} \left( U_{\dot{z},z} - U_{\dot{X},X} \right)$ 

So, the issue is under what conditions either  $U_{\alpha,z} - U_{\alpha,X}$  or  $U_{\alpha,z} - U_{\alpha,X}$  are invertible. For

instance

$$B = (U_{\dot{z},z} - U_{\dot{X},X}) (U_{\alpha,z} - U_{\alpha,X})^{-1}$$

Recall that  $U_{\alpha,z} - U_{\alpha,X} = \Gamma^{-1}B'(P - \bar{\beta}_2)$ . Now we use our assumptions. Note that if  $\Theta + Q$  is positive definite, then P is negative definite. Also, since Q is positive definite,  $\bar{\beta}_2$  is also negative definite. By Proposition 11 if  $\Theta$  is negative definite, then  $P - \bar{\beta}_2$  is positive definite, and hence in invertible. If on the other hand,  $\Theta$  is positive definite, then  $P - \bar{\beta}_2$  is negative definite, and hence invertible.

**Proof.** (of Proposition 24) We add to the equation (43) and equation (42) the Riccati-like equation for S:

$$SB\Gamma^{-1}B'S = S\left(A - B\Gamma^{-1}B'\bar{\beta}_2\right) + \left(A' - \bar{\beta}_2B\Gamma^{-1}B'\right)S + \rho S + \Theta'$$
(58)

To analyze these three Riccati-like equations we consider the general case of symmetric matrices Z and W, each split in four blocks, and satisfying:

$$ZB\Gamma^{-1}B'Z = Z\tilde{A} + \tilde{A}'Z + \rho Z + W$$

where the matrix  $\tilde{A}$  has the same block structure than the matrix A. Direct computations gives

$$B\Gamma^{-1}B' = \begin{bmatrix} B_1 \\ 0 \end{bmatrix}\Gamma^{-1}\begin{bmatrix} B_1' & 0 \end{bmatrix} = \begin{bmatrix} B_1 \\ 0 \end{bmatrix}\begin{bmatrix} \Gamma^{-1}B_1' & 0 \end{bmatrix} = \begin{bmatrix} B_1\Gamma^{-1}B_1' & 0 \\ 0 & 0 \end{bmatrix}$$

We can now evaluate the quadratic expressions

$$\begin{split} ZB\Gamma^{-1}B'Z &= \begin{bmatrix} Z_{11} & Z_{12} \\ Z_{21} & Z_{22} \end{bmatrix} \begin{bmatrix} B_1\Gamma^{-1}B'_1 & 0 \\ 0 & 0 \end{bmatrix} \begin{bmatrix} Z_{11} & Z_{12} \\ Z_{21} & Z_{22} \end{bmatrix} \\ &= \begin{bmatrix} Z_{11}B_1\Gamma^{-1}B'_1 & 0 \\ Z_{21}B_1\Gamma^{-1}B'_1 & 0 \end{bmatrix} \begin{bmatrix} Z_{11} & Z_{12} \\ Z_{21} & Z_{22} \end{bmatrix} = \begin{bmatrix} Z_{11}B_1\Gamma^{-1}B'_1Z_{11} & Z_{11}B_1\Gamma^{-1}B'_1Z_{12} \\ Z_{21}B_1\Gamma^{-1}B'_1Z_{12} \end{bmatrix} \end{split}$$

which is symmetric provided that Z is symmetric. We also compute the two linear terms in

Z:

$$Z\tilde{A} = \begin{bmatrix} Z_{11} & Z_{12} \\ Z_{21} & Z_{22} \end{bmatrix} \begin{bmatrix} \tilde{A}_{11} & \tilde{A}_{12} \\ 0 & A_{22} \end{bmatrix} = \begin{bmatrix} Z_{11}\tilde{A}_{11} & Z_{11}\tilde{A}_{12} + Z_{12}\tilde{A}_{22} \\ Z_{21}\tilde{A}_{11} & Z_{21}\tilde{A}_{12} + Z_{22}\tilde{A}_{22} \end{bmatrix}$$
$$\tilde{A}'Z = \begin{bmatrix} \tilde{A}'_{11} & 0 \\ \tilde{A}'_{12} & \tilde{A}'_{22} \end{bmatrix} \begin{bmatrix} Z_{11} & Z_{12} \\ Z_{21} & Z_{22} \end{bmatrix} = \begin{bmatrix} \tilde{A}'_{11}Z_{11} & \tilde{A}'_{11}Z_{12} \\ \tilde{A}'_{12}Z_{11} + \tilde{A}'_{22}Z_{21} & \tilde{A}'_{12}Z_{12} + \tilde{A}'_{22}Z_{22} \end{bmatrix}$$

Thus, we get:

$$Z\tilde{A} + \tilde{A}'Z = \begin{bmatrix} Z_{11}\tilde{A}_{11} + \tilde{A}'_{11}Z_{11} & Z_{11}\tilde{A}_{12} + Z_{12}\tilde{A}_{22} + \tilde{A}'_{11}Z_{12} \\ Z_{21}\tilde{A}_{11} + \tilde{A}'_{12}Z_{11} + \tilde{A}'_{22}Z_{21} & Z_{21}\tilde{A}_{12} + Z_{22}A_{22} + \tilde{A}'_{12}Z_{12} + \tilde{A}'_{22}Z_{22} \end{bmatrix}$$

which is symmetric provided that Z is symmetric. We can write the Riccati equation for Z as three separate matrix equations for the different blocks –there are only three due to symmetry. For the  $n_1 \times n_1$  block we have:

$$Z_{11}B_1\Gamma^{-1}B_1'Z_{11} = Z_{11}\tilde{A}_{11} + \tilde{A}_{11}'Z_{11} + \rho Z_{11} + W_{11}$$

which can be considered as a Riccati equation by itself. A sufficient conditions for a negative definite solution  $Z_{11}$  is that  $[B_1, -\tilde{A}_{11}]$  be stabilizable, and  $[C_{11}, -\tilde{A}_{11}]$  be detectable for  $C'_{11}C_{11} = W_{11}$ . The off diagonal block is:

$$Z_{11}B_1\Gamma^{-1}B_1'Z_{12} = Z_{11}\tilde{A}_{12} + Z_{12}\tilde{A}_{22} + \tilde{A}_{11}'Z_{12} + \rho Z_{12} + W_{12}$$

Given the solution for  $Z_{11}$  obtained in the previous equation, this is a linear equation in  $Z_{12}$ . Given the symmetry of the solution,  $Z_{21} = Z'_{12}$ . Finally, we can solve for the last  $n_2 \times n_2$  block as:

$$Z_{21}B_1\Gamma^{-1}B_1'Z_{22} = Z_{21}\tilde{A}_{12} + \tilde{A}_{12}'Z_{12} + Z_{22}\tilde{A}_{22} + \tilde{A}_{22}'Z_{22} + \rho Z_{22} + W_{22}$$

Given the solutions for  $Z_{21}$ ,  $Z_{12}$  and  $Z_{11}$  obtained above, this is a linear equation in  $Z_{22}$ .

Thus, the recursions and expression for the three blocks of Z can be applied for  $\bar{\beta}_2$  and P by letting  $\tilde{A}=A$  and by a convenient choice of W, i.e. W=Q for  $\bar{\beta}_2$  and  $W=Q+\Theta'$  for P. The expression for the equation for S requires one more argument, because the linear terms in this Riccati equation involve the matrix  $\tilde{A}\equiv A-B\Gamma^{-1}B'\bar{\beta}_2$ . In particular, to show the block recursive structure of the Riccati equation for S we require to show that with this choice of  $\tilde{A}$  has the same block structure as the matrix A, i.e. zeros in the lower left block.

To see this, note we have:

$$B\Gamma^{-1}B'\bar{\beta}_2 = \begin{bmatrix} B_1\Gamma^{-1}B'_1 & 0\\ 0 & 0 \end{bmatrix} \begin{bmatrix} \bar{\beta}_{2,11} & \bar{\beta}_{2,12}\\ \bar{\beta}_{2,21} & \bar{\beta}_{2,22} \end{bmatrix} = \begin{bmatrix} B_1\Gamma^{-1}B'_1\bar{\beta}_{2,11} & B_1\Gamma^{-1}B'_1\bar{\beta}_{2,12}\\ 0 & 0 \end{bmatrix}$$

Thus, this matrix has zeros in the lower left block. Likewise, by a similar computation we have:

$$B\Gamma^{-1}B'P = \begin{bmatrix} B_1\Gamma^{-1}B_1'P_{11} & B_1\Gamma^{-1}B_1'P_{12} \\ 0 & 0 \end{bmatrix}$$

Now we use the expression for the equilibrium law of motion. We have  $\dot{X} = [J + G] X$ , where can be written as:

$$\begin{bmatrix} \dot{X}^{(1)} \\ \dot{X}^{(2)} \end{bmatrix} = \begin{bmatrix} J + G \end{bmatrix} \begin{bmatrix} X^{(1)} \\ X^{(2)} \end{bmatrix} = \begin{bmatrix} B_1 \Gamma^{-1} B_1' P_{11} - A_{11} & B_1 \Gamma^{-1} B_1' P_{12} - A_{12} \\ 0 & -A_{22} \end{bmatrix} \begin{bmatrix} X^{(1)} \\ X^{(2)} \end{bmatrix}$$

Due to the zeros in the lower left block, the eigenvalues of the law of motion for X, i.e the  $n_1 + n_2$  eigenvalues of J + G are given by the  $n_1$  eigenvalues of  $B_1\Gamma^{-1}B_1'P_{11} - A_{11}$  and the  $n_2$  eigenvalues from  $-A_{22}$ . To see this, notice that the equation for the eigenvalues is

$$0 = \det \left( \begin{bmatrix} B_1 \Gamma^{-1} B_1' P_{11} - A_{11} - I_{n_1} \lambda & B_1 \Gamma^{-1} B_1' P_{12} - A_{12} \\ 0 & -A_{22} - I_{n_2} \lambda \end{bmatrix} \right)$$
$$= \det \left( B_1 \Gamma^{-1} B_1' P_{11} - A_{11} - I_{n_1} \lambda \right) \det \left( -A_{22} - I_{n_2} \lambda \right)$$

where we use that the determinant of a block diagonal matrix is the product of the determinants of the blocks in the diagonal.

Finally, we sketch the argument that under the assumptions (i), (ii) (or (ii)') and (iii) there is a negative definite solution to equation (42) and equation (43). What needs to be shown is that under these assumptions, then stabilizability and detectability hold for the entire respective  $(n_1 + n_2) \times (n_1 + n_2)$  Riccati-like equations. This is a consequence of the block of zeros on the matrix B and in the matrix A, and the assumptions (i), (ii) (or (ii)') and (iii).

**Proof.** (of Proposition 25) Using the definition of  $M_r$ , differentiating with respect to time,

and replacing the Kolmogorov forward we have:

$$\dot{M}_r(t) = \int x^r m(x,t)dt$$

$$= -\int (H_p(u_x(x,t),x)m(x,t))_x x^r dx + \frac{\sigma^2}{2} \int x^r m_{xx}(x,t) dx$$

First we show that:

$$\frac{\sigma^2}{2} \int x^r m_{xx}(x,t) \, dx = \frac{r(r-1)\sigma^2}{2} M_{r-2}(t)$$

which follows from integrating by parts the second term twice, and using that the level and derivatives of m vanishes with respect to x at x = ±∞. In particular, let r = 2, 3, . . . r¯:

$$\int x^r m_{xx}(x,t) dx = x^r m_{xx}(x,t)|_{x=-\infty}^{x=+\infty} - r \int x^{r-1} m_x(x,t) dx$$

$$= x^r m_{xx}(x,t)|_{x=-\infty}^{x=+\infty} - x^{r-1} m_x(x,t)|_{x=-\infty}^{x=+\infty} + r(r-1) \int x^{r-2} m(x,t) dx$$

$$= r(r-1) M_{r-2}(t)$$

Note that, in order to write the same expression for all r we can take

$$M_0(t) = 1$$
 and  $M_{-1}(t) = 0$  all  $t$ 

.

Second, we analyze the first term. Integrating by parts and replacing the derivative of the Hamiltonian we have:

$$-\int (H_p(u_x(x,t),x)m(x,t))_x x^r dx$$

$$= r \int (\gamma_B^{-1} u_x(x,t) - ax) m(x,t) x^{r-1} dx + (\gamma_B^{-1} u_x(x,t) - ax) m(x,t) x^r |_{x=-\infty}^{x=+\infty}$$

$$= r \int (\gamma_B^{-1} u_x(x,t) - ax) x^{r-1} m(x,t) dx$$

Using both terms we have

$$\dot{M}_r(t) = r \int \left( \gamma_B^{-1} u_x(x,t) - ax \right) x^{r-1} m(x,t) dx + \frac{r(r-1)\sigma^2}{2} M_{r-2}(t)$$

Now we can replace that  $u_x(x,t) = \beta_1(t) + \bar{\beta}_2 x$  to get:

$$\dot{M}_{r}(t) = r \int \left( \gamma_{B}^{-1}(\beta_{1}(t) + \bar{\beta}_{2}x) - ax \right) x^{r-1} m(x,t) dx + \frac{r(r-1)\sigma^{2}}{2} M_{r-2}(t) 
= r \gamma_{B}^{-1} \beta_{1}(t) \int x^{r-1} m(x,t) dx + r \left( \gamma_{B}^{-1} \bar{\beta}_{2} - a \right) \int x^{r} m(x,t) dx + \frac{r(r-1)\sigma^{2}}{2} M_{r-2}(t) 
= r \left( \gamma_{B}^{-1} \bar{\beta}_{2} - a \right) M_{r}(t) + r \gamma_{B}^{-1} \beta_{1}(t) M_{r-1}(t) + \frac{r(r-1)\sigma^{2}}{2} M_{r-2}(t).$$

which finishes the proof.  $\square$ 

**Proof.** (of Proposition 27). We will show below that the eigenvalues of  $\widetilde{\mathcal{H}}$  satisfy:

$$\tilde{\lambda}_1 + \tilde{\lambda}_{\bar{r}+1} = \rho \text{ and } \tilde{\lambda}_1 \, \tilde{\lambda}_{\bar{r}+1} = \tilde{D} \left( \theta_1, \theta_3, \dots, \theta_{\bar{r}-1} \right)$$
 (59)

<span id="page-84-1"></span><span id="page-84-0"></span>
$$\tilde{\lambda}_r = -rb < 0 \text{ for } r = 2, 3, 4, \dots, \bar{r}$$
 (60)

where

$$\tilde{D} \equiv -\left[ (\rho + b)b + \gamma_B^{-1} \sum_{r=1,3,...}^{\bar{r}-1} r \, \bar{M}_{r-1} \, \theta_r \right], \text{ with } b \equiv a - \gamma_B^{-1} \bar{\beta}_2$$

Given this characterization, we can use the two equations to obtain the quadratic equation  $0 = \tilde{D} - \rho \tilde{\lambda} + (\tilde{\lambda})^2$  which is solved by  $\tilde{\lambda}_1$  and  $\tilde{\lambda}_{\bar{r}+1}$  as function of  $\rho/2$  and  $\tilde{D}$ . This gives:

$$\tilde{\lambda}_{\bar{r}+1,1} = \frac{\rho}{2} \pm \sqrt{\left(\frac{\rho}{2}\right)^2 + (\rho + b)b + \gamma_B^{-1}\bar{\theta}} = \frac{\rho}{2} \pm \sqrt{\left(\frac{\rho}{2} + b\right)^2 + \gamma_B^{-1}\bar{\theta}} \text{ where } \bar{\theta} \equiv \sum_{r=1,3,\dots}^{\bar{r}-1} r \, \bar{M}_{r-1} \, \theta_r$$

Using that

$$\frac{\rho}{2} + b = \frac{\rho}{2} + a - \gamma_B^{-1} \bar{\beta}_2 = \sqrt{\left(\frac{\rho}{2} + a\right)^2 + \gamma_B^{-1} q}$$

then

$$\tilde{\lambda}_{\bar{r}+1,1} = \frac{\rho}{2} \pm \sqrt{\left(\frac{\rho}{2} + a\right)^2 + \gamma_B^{-1}(q + \bar{\theta})}$$

The rest of the proof, to obtain the expressions in equation (59) and equation (60) proceeds in two main steps. First we consider the dynamics for the even moments deviations, and then the one for  $\beta_1$  and the odd moment deviations.

Even moment deviations. Let  $r=2,4,\ldots,\bar{r}$ . Since in this case  $\bar{M}_{r-1}=0$ , then  $\hat{\beta}_1$  does

not enter in the o.d.e. for these moments, i.e. we have:

$$\frac{d}{dt}\hat{M}_{r}(t) = r\left(\gamma_{B}^{-1}\bar{\beta}_{2} - a\right)\hat{M}_{r}(t) + \frac{r(r-1)\sigma^{2}}{2}\hat{M}_{r-2}(t)$$

Note that for r=2 we have  $\hat{M}_{r-2}=\hat{M}_0=0$ , so we can solve this system recursively as follows. Let the  $\bar{r}/2$  even moments be  $Y_{even}\equiv(\hat{M}_2,\hat{M}_4,\ldots,\hat{M}_{\bar{r}})$  as follows:  $\dot{Y}_{even}(t)=B\,Y_{even}(t)$  where

$$B = \begin{bmatrix} -2b & 0 & 0 & 0 & 0 & \dots & 0 \\ 6\sigma^2 & -4b & 0 & 0 & \dots & \dots & 0 \\ 0 & 15\sigma^2 & -6b & 0 & \dots & \dots & 0 \\ 0 & 0 & 28\sigma^2 & -8b & 0 & \dots & 0 \\ 0 & 0 & 0 & 45\sigma^2 & -10b \\ \vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \vdots \\ 0 & 0 & 0 & 0 & 0 & \frac{\bar{r}(\bar{r}-1)\sigma^2}{2} & -\bar{r}b \end{bmatrix}$$

Clearly, the eigenvalues of B are -rb for  $r=2,4,\ldots,\bar{r}$ . Since the system is recursive, they are also the eigenvalues of  $\widetilde{\mathcal{H}}$ .

Odd moment deviations and co-state. Now we turn to the system with  $\hat{\beta}_1$  and the  $\bar{r}/2$  odd moment deviations. We let  $Y_{odd} \equiv (\beta_1, \hat{M}_1, \hat{M}_3, \dots, \hat{M}_{\bar{r}-1})$ . These vector solves the o.d.e. system  $\dot{Y}_{odd}(t) = A Y_{odd}(t)$  where:

$$A = \begin{bmatrix} \rho + b & \theta_1 & \theta_3 & \theta_5 & \theta_7 & \theta_9 & \dots & \theta_{\bar{r}-3} & \theta_{\bar{r}-1} \\ \gamma_B^{-1} & -b & 0 & 0 & 0 & \dots & \dots & 0 \\ 3\gamma_B^{-1}\bar{M}_2 & 3\sigma^2 & -3b & 0 & 0 & \dots & \dots & 0 \\ 5\gamma_B^{-1}\bar{M}_4 & 0 & 10\sigma^2 & -5b & 0 & 0 & \dots & \dots & 0 \\ 7\gamma_B^{-1}\bar{M}_6 & 0 & 0 & 21\sigma^2 & -7b & 0 & \dots & \dots & 0 \\ 9\gamma_B^{-1}\bar{M}_8 & 0 & 0 & 0 & 36\sigma^2 & -9b & 0 & \dots & 0 \\ \vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \ddots & \dots & 0 \\ \vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \ddots & \dots & 0 \\ \vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \ddots & \dots & 0 \\ \vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \ddots & \dots & 0 \\ \vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \ddots & \dots & 0 \\ \vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \vdots & \dots & 0 \\ (\bar{r}-1)\gamma_B^{-1}\bar{M}_{\bar{r}-2} & 0 & 0 & 0 & 0 & \dots & \frac{(\bar{r}-1)(\bar{r}-2)\sigma^2}{2} & -(\bar{r}-1)b \end{bmatrix}$$

Now we proceed in three steps.

Step 1. This step shows that -rb is an eigenvalue of A for  $r=3,5,\ldots,\bar{r}-1$ . We use  $A(\bar{r})$  to denote the  $(\bar{r}/2+1)\times(\bar{r}/2+1)$  matrix described above. Likewise we use  $I(\bar{r})$  for the identity matrix of the same size. The proof proceeds by induction. First we show that it is true for  $\bar{r}=4$ . In this case we have det(A(4)+3bI(4))=0. This holds

by simple computing det(A(4) + 3bI(4)) = θ<sup>3</sup> 3γ −1 <sup>B</sup> σ <sup>2</sup> − 2b × 3γ −1 <sup>B</sup> <sup>M</sup>¯ 2 and using M¯ <sup>2</sup> = σ <sup>2</sup>/(2b). Then, as the induction step requires, assume that any ¯r ≥ 4 the negative scalars {−3b, −5b, . . . , −b(¯r − 1))} are eigenvalues of the (¯r/2 + 1) × (¯r/2 + 1) matrix A(¯r). Note that this means that det(A(¯r) + rbI(¯r)) = 0 holds for any θ1, θ3, . . . , θr¯−1. This means that, developing the determinant of A(¯r) + rbI(¯r) by its first row, the cofactors of the first row and column corresponding to θ<sup>r</sup> must be zero. In symbols,

$$det(A(\bar{r})_{1,j} + rbI(\bar{r})) = 0$$

for any r ≤ r¯ − 1 and j = 2, 3, r¯ − 1, and where the sub-indices in the matrices indicate elimination of the row and column.

Finally, to complete the induction step, we need to show that {−3b, −5b, . . . , −b(¯r − 1), −b(¯r + 1)} are eigenvalues of the (¯r + 2)/2 + 1) × (¯r + 2)/2 matrix A(¯r + 2). To establish that {−3b, −5b, . . . , −b(¯r − 1)} are eigenvalues of A(¯r + 2) we fix an eigenvalue −rb with r ≤ r¯ − 1, and expand the determinant of A(¯r + 2) + rbI(¯r + 2) by its first row. The submatrix that is obtained eliminating the first row and a column greater or equal to 2, is equal to a matrix obtained by eliminating the first row and same column of A(¯r) but where its last column has zeros, except in the the last element, and that it has an extra row at the bottom. In symbols:

$$A(\bar{r}+2)_{1,j} + rbI(\bar{r}+2)_{1,j} = \begin{bmatrix} A(\bar{r})_{1,j} + rbI(\bar{r}) & \vec{0} \\ \dots & -(\bar{r}+1)b + rb \end{bmatrix}$$

where ⃗0 is a column vector with ¯r/2 + 1 zeros, and where the subindices on a matrix denote elimination of the corresponding row and column. Thus developing the determinant of this matrix by its last column, and using the previous step from the induction we obtain that −rb is an eigenvalue of A(¯r + 2). Thus

$$det(A(\bar{r}+2)_{1,j}+rbI(\bar{r}+2)_{1,j})=det(A(\bar{r})_{1,j}+rbI_{\bar{r}})(-(\bar{r}+1)b+rb)=0$$

it remains to show that −(¯r + 1)b is an eigenvalue of A(¯r + 2). The computations are now more involved, so we use a symbolic language (Mathematica) to verify it.

Step 2. Compute the determinant of A. This determinants equals:

$$det(A) = -b(-3b)(-7b)(-9b)\dots(-(\bar{r}-2)b)(-(\bar{r}-1)b)\left[b + \rho + \frac{1}{b\gamma_B} \sum_{r=1,3,5}^{\bar{r}-1} r \,\bar{M}_{r-1} \,\theta_r\right]$$

To show this expression, one can use induction on ¯r. Since the computations are involved,

we use a symbolic language (Mathematica) to verify this expression.

Step 3 Use the previous two steps to obtain an expression for the first two eigenvalues. We denote the ¯r/2 + 1 eigenvalues as follows λ˜ <sup>r</sup> = −rb for r = 3, 5, . . . , r¯− 1, and the remaining two λ˜ <sup>1</sup> and λ˜ <sup>r</sup>¯+1. Finally we can use that for any matrix A, then P<sup>r</sup>¯+1 j=1,3,5 λ˜ <sup>j</sup> = tr(A). Hence

$$\sum_{j=1,3,5,\dots}^{\bar{r}+1} \tilde{\lambda}_j = (\rho+b) - \sum_{r=1,3,5,\dots}^{\bar{r}-1} rb$$

Since we have shown that λ˜ <sup>r</sup> = −rb for j = 3, 5, . . . , r¯ − 1, then we can write:

$$\tilde{\lambda}_1 + \tilde{\lambda}_{\bar{r}+1} = (\rho + b) - b = \rho$$

We can also use that for any matrix A then Q<sup>r</sup>¯+1 r=1,3,5,... λ˜ <sup>r</sup> = det(A). Hence, using the formula for the determinant:

$$\prod_{r=1,3,5,\dots}^{\bar{r}+1} \tilde{\lambda}_r = (-b)(-3b)(-5b)\dots(-(\bar{r}-1)b) \left[ \rho + b + \frac{1}{b\gamma_B} \sum_{r=1,3,\dots}^{\bar{r}-1} r\bar{M}_{r-1}\theta_r \right]$$

Which, after dividing by the eigenvalues λ˜ <sup>r</sup> = −rb for r = 3, 5, . . . , r¯−1 gives the expression:

$$\tilde{\lambda}_1 \, \tilde{\lambda}_{\bar{r}+1} = - \left[ (\rho + b)b + \gamma_B^{-1} \sum_{r=1,3,\dots}^{\bar{r}-1} r \bar{M}_{r-1} \theta_r \right]$$

□