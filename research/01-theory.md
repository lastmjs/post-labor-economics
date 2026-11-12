# 01 — The formal economic theory of automation and full automation

Research notes for the guide "Once AI automates essentially all mental and physical labor, what happens to the economy?" Compiled 2026-11-12.

**Citation convention.** Every citation is a link to the source. Each source carries one of three flags, given in the per-paper header and again in the Sources table at the end:

- **[opened]**: I fetched the paper itself and read the relevant sections (model, propositions, numbers).
- **[opened-abstract]**: I fetched only the abstract or landing page. Anything beyond the abstract is from memory and is flagged where it matters.
- **[secondary]**: I did not open the source. The claim comes from another opened source that describes it, or from memory. Each such use is marked inline.

In running text, an unmarked citation is [opened]. Equations are plain text. `g_x` means the growth rate of x. No direct quotations are used; everything is paraphrase.

**Two limits on this file.** (1) The web-search budget for the session ran out after six searches, so discovery of 2025-2026 work relied on those searches plus following author pages and reference lists. I probably missed some recent papers, especially on aggregate demand. (2) Several of the most relevant 2025-2026 authors now hold positions at AI companies (Restrepo sits on Anthropic's Economic Advisory Council; C. Jones and Korinek list Anthropic affiliations on 2026 papers). I note this where it applies. This file was itself drafted by an Anthropic model.

---

## (a) One-page synthesis

### What the theory agrees on

1. **The right unit is the task, and automation is different from ordinary productivity growth.** Factor-augmenting progress always raises wages in a standard two-factor model. Reassigning tasks from labor to capital does not: it raises output but shrinks the set of things labor is paid for, so the wage effect is a contest between a productivity effect and a displacement effect ([Acemoglu-Restrepo 2018][ar18]; [Zeira 1998][zeira] as set out in [Aghion-Jones-Jones][ajj]).

2. **Partial automation with complementary tasks looks like the last 150 years.** If tasks are gross complements (elasticity below one), the automated tasks get cheap and their income share shrinks, the human tasks become the scarce "weak links" and hold their share, and growth stays steady even as the automated fraction rises toward one. In reduced form, partial automation acts like labor-augmenting technology ([Aghion-Jones-Jones][ajj]; [Trammell-Korinek][tk]; [Jones-Tonetti][jt]).

3. **Full automation is a regime change, not more of the same.** Once reproducible machines can do every task, labor stops being the fixed factor that bottlenecks output. Three things then follow in essentially every model:
   - Output becomes (close to) linear in reproducible capital: `Y ≈ A·K + B·L`. Growth is set by how fast machines build machines, `g ≈ s·A − δ`, and accelerates if `A` keeps improving ([Trammell-Korinek][tk]; [Aghion-Jones-Jones][ajj]; [Korinek-Suh][ks24]; [Restrepo][restrepo]).
   - The labor share goes to zero.
   - The wage is no longer tied to output per person. It is pinned by arbitrage to the cost of the machine that replaces the worker ([Hanson][hanson]; [Restrepo][restrepo]; [Korinek-Suh][ks24]).

4. **Whether that pinned wage is above or below today's wage is not settled by theory.** It depends on returns to scale, on fixed factors, on the direction of technical change, and on how fast capital accumulates relative to automation ([Trammell-Korinek][tk] say this in their abstract).

5. **Fixed factors inherit the scarcity.** When labor and capital are both reproducible, rents flow to whatever is not: land, energy, minerals, or, during the transition, chips and scarce skills ([Korinek-Stiglitz][kstig]; [Korinek-Suh][ks24]; [Hanson][hanson]).

6. **The welfare outcome is about ownership, not production.** Output rises in every model. The models that produce misery do it through who owns the machines, through saving behavior across generations, or through fixed factors. In principle the winners can compensate the losers ([Korinek-Stiglitz][kstig]; [Sachs-Kotlikoff][sk12]; [Caselli-Manning][cm]).

### Where it splits

| Fault line | One side | Other side |
|---|---|---|
| **How strong are bottlenecks?** (elasticity of substitution across tasks, sigma) | sigma near 0.2: even infinite productivity on a third of GDP raises output only about 11 percent; growth acceleration takes decades ([Jones-Tonetti][jt]) | With sigma near 0.5-0.6 and full automation feasible, the last tasks are the most valuable and growth is back-loaded but explosive ([Erdil-Besiroglu][eb]; [GATE][gate]) |
| **Does automation ever become complete?** | Bounded human task complexity means full automation in finite time and a wage collapse ([Korinek-Suh][ks24]) | A thick enough tail of unautomated or deliberately human tasks keeps labor scarce and wages rising forever ([Korinek-Suh][ks24] Proposition 7; [Acemoglu-Restrepo 2018][ar18] interior path) |
| **Wage level after full automation** | Wage bill exceeds its pre-AGI level because compute is scarce and human work saves compute ([Restrepo][restrepo] Proposition 6); average wages rise when investment goods get cheaper ([Caselli-Manning][cm]) | Wages fall with machine costs once land or energy binds, possibly below human subsistence ([Hanson][hanson]; [Korinek-Suh][ks24] Proposition 10; [Barnett][barnett]) |
| **Can R&D automation alone produce a growth explosion?** | Not on economy-wide estimates of how fast ideas get harder to find ([Trammell-Korinek][tk]; [Restrepo][restrepo]) | Yes once hardware and software research, where returns diminish slowly, are separated out and feedback loops are summed ([Davidson-Halperin-Houlden-Korinek][dhhk]) |
| **Real interest rates** | Rise sharply with expected growth: `r = rho + g/EIS` ([Chow-Halperin-Mazlish][chm]); rise with the capital share ([Moll-Rachel-Restrepo][mrr]) | Fall or stay low if scarce complements, precautionary saving, or saving by the rich dominate ([Benzell-Brynjolfsson][bb19]; Maresca 2026 [secondary] via [CHM][chm]; [Mian-Straub-Sufi][mss]) |
| **Policy** | Tax windfall rents and fixed factors; a robot tax is at most temporary ([Guerreiro-Rebelo-Teles][grt]) | Progressive capital taxation becomes the only brake on runaway concentration ([Trammell-Patel][tp]); labor and then consumption tax bases erode ([Korinek-Lockwood][kl]) |

### The one-paragraph version

Theory gives a confident answer about **shares and growth** and an unconfident answer about **wage levels and timing**. If machines substitute for all labor, labor's share of income goes to zero and growth is limited by machine reproduction and by whatever cannot be reproduced. The wage becomes a machine-rental price. Whether that price buys more or less than a wage does today depends on a small number of parameters that current data do not identify: the elasticity of substitution among tasks, the share and substitutability of natural resources, the speed of capital accumulation relative to automation, and whether any demand for specifically human work survives. Timing depends mostly on the first of these.

---

## (b) Per-paper entries

### B1. Task-based models of automation

#### Zeira (1998), "Workers, Machines, and Economic Growth" — [QJE][zeira] [opened-abstract]; model as presented in [Aghion-Jones-Jones][ajj] [opened]

- **Setup.** Output is Cobb-Douglas in n tasks: `Y = A · X_1^a1 · ... · X_n^an`, with the exponents summing to one. A task is done by labor until it is automated, after which capital does it one-for-one. With optimal allocation this reduces to `Y = A · K^alpha · L^(1−alpha)`, where alpha is the share of tasks automated.
- **Result.** Automation raises the capital share and, through capital accumulation, long-run growth: `g_y = g_A / (1 − alpha)`. Zeira's own emphasis (abstract): machines are adopted only where wages are high, which amplifies cross-country productivity gaps.
- **Hinges on.** Cobb-Douglas across tasks (elasticity exactly one). This makes the capital share rise one-for-one with automation, which US data for most of the twentieth century do not show; Aghion-Jones-Jones use that failure to motivate elasticity below one.
- **Implies.** As alpha goes to 1: capital share to 1, growth unbounded, labor share to 0. Wages rise along the way because capital deepening raises the marginal product of labor in the remaining tasks.

#### Acemoglu and Restrepo (2018), "The Race between Man and Machine" — [NBER w22252 / AER][ar18] [opened]

- **Setup.** A unit measure of tasks indexed on `[N−1, N]`, combined with elasticity sigma. Tasks below a threshold `I` can be done by capital; labor has a comparative advantage that rises with the task index (productivity `gamma(i)` increasing). Two kinds of innovation: automation raises `I`; creation of new, more complex tasks raises `N`. Capital accumulation and the direction of research are endogenous in the full model.
- **Key equation.** In equilibrium output is a CES of capital and labor whose share parameters are endogenous: `Y = const · [ (I* − N + 1)^(1/s) · K^((s−1)/s) + (∫ from I* to N of gamma(i)^(s−1) di)^(1/s) · L^((s−1)/s) ]^(s/(s−1))`.
- **Results.** (1) Static, capital fixed: automation always raises output but has an ambiguous effect on the wage. The productivity effect is proportional to the cost saving (effective wage minus the rental rate); the displacement effect is always negative. When the cost saving is small the wage falls. (2) New tasks always raise the wage and the labor share. (3) Dynamic: a balanced growth path with a constant labor share exists only if automation and new-task creation advance at the same rate. On that path the rental rate is `R = rho + delta + theta·g`. (4) If the discount rate is low enough (capital cheap enough relative to labor in the long run), the unique stable path is full automation: all tasks done by capital, output linear in capital, labor share zero. (5) With endogenous research the interior path is stable because automation lowers the effective cost of labor, which discourages further automation and encourages new tasks.
- **Hinges on.** Humans keep a comparative advantage in new tasks. The authors present this as their answer to the horse analogy: horses had no such advantage. Also on a representative household whose long-run supply of capital is perfectly elastic, which is why the long-run wage rises with automation on the interior path.
- **Implies.** Wages: fall in the short run when automation is "so-so," rise in the long run on the interior path. Labor share: constant if the race is balanced, zero under full automation. Interest rate: tied to growth by the Euler equation, not to automation.

#### Acemoglu and Restrepo (2019), "Automation and New Tasks" — [JEP][ar19] [opened-abstract]

- **Setup and result.** The same framework as an accounting device. Automation always lowers the labor share and can lower labor demand (displacement); new tasks always raise both (reinstatement). Industry data suggest that slower US labor-demand growth over the last three decades reflects faster displacement (concentrated in manufacturing), weaker reinstatement, and slower productivity growth. The specific periods and magnitudes are in the full article, which I did not open.
- **Implies.** The historical stability of the labor share was a balance of two forces, not a law.

#### Acemoglu and Restrepo (2022), "Tasks, Automation, and the Rise in US Wage Inequality" — [NBER w28920 / Econometrica][ar22] [opened]

- **Setup.** Many demographic groups, each with comparative advantage in a set of tasks. Automation displaces specific groups from tasks. A reduced-form equation links a group's wage change to its "task displacement"; a general-equilibrium version adds ripple effects as displaced workers compete with other groups.
- **Result.** Task displacement accounts for 50 to 70 percent of changes in the US wage structure over 1980-2016 in the reduced form (about 50 percent in the general-equilibrium version, and 80 percent of the rise in the college premium). The technologies behind it raise TFP by only 3.8 percent over the whole period, against 35 percent TFP growth in the data, and average real wages in the model rise by only 5.7 percent. In the model, groups making up 42 percent of the 1980 population see real wage declines; in the data the figure is 53 percent.
- **Hinges on.** Calibration uses an elasticity between tasks of 0.5 (citing Humlum 2020, [secondary]) and capital-labor elasticities of 0.8 to 1.2 within industries.
- **Implies.** Large distributional effects do not require large productivity gains. This matters for scenario-building: displacement can run well ahead of growth.

#### Acemoglu (2024), "The Simple Macroeconomics of AI" — [MIT working paper / Economic Policy][ace24] [opened]

- **Setup.** Task model plus Hulten's theorem: the aggregate TFP gain is approximately (GDP share of tasks affected) times (average cost saving on those tasks).
- **Numbers.** 19.9 percent of US labor tasks exposed; 23 percent of exposed tasks profitably automated within ten years; so 4.6 percent of tasks affected. Average labor-cost saving 27 percent. TFP gain no more than 0.71 percent in total over ten years, or 0.55 percent after allowing for "hard-to-learn" tasks. GDP gain roughly 0.9 to 1.1 percent over ten years.
- **Hinges on.** A fixed, small set of affected tasks, no automation of research, no new tasks with large value. It is a first-order calculation, valid for small shocks.
- **Implies.** Modest growth, a wider capital-labor income gap, no reduction in wage inequality. It is the lower bound against which the explosive-growth literature should be read. [Jones-Tonetti][jt] report that Aghion and Bunel reach about 0.7 percentage points per year with different empirical inputs ([secondary]).

### B2. Growth theory and bottlenecks

#### Aghion, Jones and Jones (2019), "Artificial Intelligence and Economic Growth" — [chapter][ajj] [opened]

- **Setup.** Output is CES over a continuum of tasks with elasticity below one: `Y = A · ( ∫ X_i^rho di )^(1/rho)`, `rho < 0`. A fraction `beta_t` of tasks is automated (done by capital), the rest by labor. With symmetric allocation: `Y = A · [ beta^(1−rho) · K^rho + (1−beta)^(1−rho) · L^rho ]^(1/rho)`.
- **Results.**
  1. *Baumol meets Zeira.* The capital share rises with `beta` and falls with `K/L`. If a constant fraction of the remaining tasks is automated each period, growth is steady and the capital share settles near one third even as `beta` goes to one. Labor's remaining tasks are the essential weak links and keep roughly two thirds of income.
  2. *Full automation of goods production.* `Y = A·K`, so `g_Y = g_A + s·A − delta`, which rises without bound if `A` grows ("Type I": ever-accelerating growth).
  3. *Full automation of idea production.* Once capital replaces researchers, the idea-production equation is more than linear in the stock of ideas (in the one-variable version, `dA/dt = A^(1+phi)` with `phi > 0`), which yields infinite output in finite time ("Type II").
  4. *Cobb-Douglas case.* A singularity can occur without full automation if the combined returns to accumulable factors exceed one.
- **Objections they raise against their own explosions.** Some essential task may never be automated; search itself may have steeply diminishing returns (`phi ≤ 0`, fishing out); some essential inputs improve slowly for physical reasons, so growth is governed by what is essential and hard to improve; and when part of R&D still needs humans, faster AI can shorten monopoly durations and reduce innovation incentives.
- **Hinges on.** Whether sigma is below one, and whether `beta` reaches exactly one.
- **Implies.** Wages rise and the labor share is stable under incomplete automation. Under complete automation the labor share goes to zero and growth explodes.

#### Nordhaus (2015/2021), "Are We Approaching an Economic Singularity?" — [NBER w21547 / AEJ: Macro][nordhaus] [opened]

- **Setup.** Neoclassical growth with `Y = F(A·K, L)`, capital-augmenting progress at a fast constant rate, constant saving rate. Also a demand-side version (Baumol) with elasticity of substitution in consumption between information goods and other goods.
- **Result.** If the elasticity of substitution between information capital and labor exceeds one, the capital share goes to one, production becomes linear in capital, and `g_Y = h + s·Y/K − delta` grows without bound. If it is below one, the capital share goes to zero and per-capita growth goes to zero (stagnation at the growth rate of the fixed factor). Cobb-Douglas gives a balanced path with `g_Y = n + [alpha/(1−alpha)]·g_A`.
- **Tests.** Singularity is defined as growth crossing 20 percent a year. Of seven diagnostic tests on US data, five are negative. The two positive ones (rising capital share, rising information-capital share) extrapolate to a crossing 100 years or more away.
- **Wages.** In the accelerationist case, with gross but imperfect substitution, wages grow extremely fast because capital becomes immensely plentiful and still complements labor a little. His sixth test (accelerating wage growth) is negative.
- **Hinges on.** The elasticity of substitution and whether substitution is perfect. With imperfect substitution wages explode; with perfect substitution they stagnate (see Trammell-Korinek below).

#### C. Jones (2024), "The A.I. Dilemma: Growth versus Existential Risk" — [AER: Insights][jones24] [opened]

- **Setup.** A planner chooses how long to run an AI technology that raises growth but carries a probability of extinction.
- **Result.** The answer turns on the curvature of utility. With log utility the model accepts very large risks (on the order of a one-in-three chance of extinction) for the consumption gains. With relative risk aversion of two or more, utility is bounded, marginal utility falls fast, and the model becomes far more cautious. Mortality reductions from AI shift the calculus back toward running it.
- **Implies.** Relevant here mainly for interest rates and for how to value explosive growth: under bounded utility a thousandfold rise in consumption is worth surprisingly little.

#### Jones and Tonetti (2026), "Past Automation and Future A.I.: How Weak Links Tame the Growth Explosion" — [May 2026 draft, v0.5][jt] [opened]; [Jones's June 2026 slides][jonesjep] [opened]

- **Setup.** `Y = Z · ( ∫ alpha_i · Y_i^((s−1)/s) di )^(s/(s−1))` with `s < 1`. Each task is produced by capital or labor as perfect substitutes with task-specific productivities: `Y_i = psi_k,i · K_i + psi_l,i · L_i`. A task is automated when capital's productivity rises enough relative to labor's. Ideas raise both productivities, and idea production is itself automated endogenously.
- **Accounting result.** Since 1950 in the US private business sector, capital's task-level productivity grew about 3.8 percentage points a year faster than labor's, while other TFP plus labor productivity growth was about −0.2 percent a year. Had the set of automated tasks been frozen in 1950, essentially all TFP growth to 2023 would have vanished. The gain from automation is switching tasks from slowly improving people to rapidly improving machines. The automation shares come from queries to frontier language models, which the authors call a heroic measurement.
- **Static bottleneck formula.** Making a set of tasks with cost share `s∞` infinitely productive raises output by the factor `(1/(1 − s∞))^(s/(1−s))`, approximately `1 + [s/(1−s)]·s∞`. Software is about 2 percent of GDP, so infinite software productivity raises GDP about 2 percent at `s = 0.5` and less at `s = 0.2`. Infinitely automating one third of GDP at `s = 0.2` raises GDP 11 percent.
- **Dynamic results.** Growth accelerates through a flywheel (automation produces ideas, ideas produce automation) but slowly. In the "continuation of history" calibration growth reaches only 2.6 percent by 2075 and income is only 4 percent above trend in 2050; the degree of dynamic increasing returns is `Phi ≈ (psi_l growth + x0/(1−s)) / g_Y0 ≈ 0.98`, just under the knife edge. In the "Moore's Law everywhere" calibration (machines improve 10.7 points a year faster than people) growth exceeds 7 percent by 2030 and 13 percent by 2040 and income becomes infinite before 2060.
- **Hinges on.** `s = 0.2`, chosen below every estimate of the capital-labor elasticity on the grounds that those estimates are an upper bound for the task elasticity. Also on whether some tasks can never be automated: if 5 percent cannot, growth eventually falls back to the rate at which people improve.
- **Implies.** In the baseline the capital share is roughly stable near 36 percent and the share of tasks done by labor vanishes only as the wage goes to infinity. That is a rising-wage path, the opposite of the Korinek-Suh collapse, and the difference is entirely about whether and when the last tasks are automated. Interest rates are not analyzed.
- **Version note.** The March 2026 draft and the June slides give slightly different income numbers (slides: 1.04 times trend around 2040, 1.15 around 2060). The authors say numbers may change.

#### Jones and Tonetti (2026b), "The Weak-Link Asymmetry: AI's Peril and Promise" — [November 2026 draft][jtasym] [opened: abstract and introduction]

- **Result.** The complementarity that slows gains makes damage fast. With task elasticity 0.2, a tenfold productivity gain on tasks worth 1 percent of GDP raises output by about a quarter of one percent; a tenfold productivity loss on the same tasks lowers output 68 percent on impact. If a bigger AI sector raises both capability and attack risk, the market overinvests.
- **Implies.** In a weak-link economy the downside scenarios for 2026-2036 can arrive before the upside ones. Author affiliation note: Jones lists Anthropic.

#### B. Jones (2025), "Artificial Intelligence in Research and Development" — [NBER volume chapter][bjones] [opened-abstract]

- **Result.** The speed-up AI gives to any research field depends on three things: the share of research tasks automated, how good AI is at them, and how strongly the remaining bottleneck tasks constrain progress. [Jones-Tonetti][jt] describe it as showing that bottlenecks may constrain growth even when R&D is automated ([secondary] for anything beyond the abstract).

### B3. Transition-to-AGI models (Korinek and coauthors)

#### Korinek and Suh (2024), "Scenarios for the Transition to AGI" — [arXiv 2403.12107 / NBER w32255][ks24] [opened]

- **Setup.** A continuum of tasks ordered by complexity (compute needed), combined with elasticity `sigma < 1` (0.5 in the calibration). An automation index `I` rises exogenously; tasks below it can be done by capital one-for-one, all tasks can be done by labor. `Phi(I)` is the fraction automated.
- **Two regions (Lemma 1).** Region 1, while `Phi(I) < (K/L)/(1 + K/L)`: labor works only on unautomated tasks, `Y = A·[K^((s−1)/s)·Phi^(1/s) + L^((s−1)/s)·(1−Phi)^(1/s)]^(s/(s−1))`, and the wage exceeds the return on capital. Region 2, once automation passes that threshold: capital and labor are perfect substitutes at the margin, `Y = A·(K + L)`, and `w = R = A`.
- **Results.**
  1. For given capital and labor the wage is hump-shaped in automation: it rises first (productivity), then falls (displacement). The wage can collapse **before** automation is complete, whenever automation outruns capital accumulation.
  2. *Race (Proposition 7), Pareto-distributed task complexity.* Let `lambda·g` be the rate at which the unautomated fraction shrinks and `(A − rho − delta)/eta` the capital-accumulation rate. If automation is faster than accumulation, the wage converges to `A` and the labor share to zero. In an intermediate range wages grow at `(1/s)·[(A − rho − delta)/eta − lambda·g]`. If automation is slow enough, wages grow at `lambda·g/(1 − s)`, increasing in the automation rate.
  3. *Bounded complexity.* Full automation arrives in finite time and wages collapse whatever the saving behavior.
  4. *Simulations.* Business-as-usual: output and wages rise forever at historical rates. AGI in 20 years: wages rise a little, then collapse before full automation; steady-state growth of 18 percent a year afterwards. AGI in 5 years: wage collapse after about 3 years. "Bout of automation" with a long tail: wages collapse, then recover around year 9 once capital catches up.
  5. *Fixed factor (Proposition 10).* With `Y = A·(task composite)^alpha · M^(1−alpha)`, the economy always enters region 2 in finite time, wages equal the return on capital, `w = R = rho + delta`, and output stagnates. The wage peak comes earlier than without the fixed factor.
  6. *Automated R&D (Proposition 11).* Enough automation in output and idea production gives finite-time divergence, and in that case the marginal product of labor diverges too: `w ≥ A_t`.
  7. *Policy.* Keeping some tasks human by choice ("nostalgic jobs") or slowing automation can keep labor scarce and wages growing, at the cost of output.
- **Hinges on.** Whether the task distribution is bounded; the relative speed of automation and accumulation; whether there is a fixed factor; whether technology `A` keeps rising.
- **Implies.** Wages: any of rise forever, collapse, or collapse and recover. Labor share: to zero under AGI. Growth: roughly ten times business-as-usual in the AGI scenarios. Interest rate: `R = A` in region 2, falling to `rho + delta` with a fixed factor. Compute as specific capital earns very high returns for a while, then ordinary returns.

#### Trammell and Korinek (2023; revised August 2025), "Economic Growth under Transformative AI" — [August 2025 version][tk] [opened]; first issued as NBER w31815

The most useful single synthesis. Its results, organized by which sector is automated:

- **Production only, perfect substitution.** `Y = A·K + B·L`. `A` is how many machines a machine builds per year. Growth is exponential with fixed `A` and super-exponential if `A` grows. The labor share `B·L/(A·K + B·L)` goes to zero. The interest rate equals `A` by no-arbitrage. Saving cannot defuse this: with constant intertemporal elasticity, the Euler equation makes consumption grow double-exponentially when `A` grows.
- **A decoupling edge case.** If capital substitutes for labor in producing capital goods but consumption is Cobb-Douglas in capital and labor, consumption grows fast while the labor share stays constant. They set this aside as a knife edge.
- **Wages without a fixed factor.** In any two-factor constant-returns function, more capital never lowers the marginal product of labor (`Y_LK ≥ 0`). So under gross but imperfect substitution wages rise rapidly; only under perfect substitution do they stagnate at `B`. The analogy is immigration: robots with a different skill mix raise the native wage bill; robots with an identical mix leave it unchanged once capital adjusts.
- **Labor-depleting technology.** Add a robot-only sector to a Cobb-Douglas sector: `Y = A·(1−z)·K + (z·K)^alpha·(B·L)^(1−alpha)`. Once robots are efficient enough the function reduces to `Y = A·K + B~·L` with `B~` proportional to `A^(−alpha/(1−alpha))·B`. Better robots pull capital away from complementing labor. Wages rise only if `g_B > [alpha/(1−alpha)]·g_A`.
- **Endogenous automation.** `Y = A·(z·K)^alpha·(L + theta·(1−z)·K)^(1−alpha)`. Robots are built once `K/L > (1/theta)·alpha/(1−alpha)`; rising wages eventually make them profitable at any fixed cost. Afterwards `Y` is proportional to `A·(theta^(1−alpha)·K + theta^(−alpha)·L)`. Capital accumulation no longer raises wages. Wages fall if robot productivity outruns TFP: `g_A − alpha·g_theta < 0`.
- **Fixed factor (land), Cobb-Douglas.** `Y = A·F(K, L)^a · W^(1−a)`. Growth is exponential, not explosive: `g_Y = g_A/(1 − a)`. With a land share of 5 percent the capital share goes from 33 to 95 percent and steady-state growth rises more than tenfold. Wages: with perfect substitution the marginal products of both capital and labor fall; with CES substitution parameter `rho` inside `F` and capital-augmenting progress, wages rise only if `a > rho`. If land is a gross complement, its share goes to one and growth is eventually bottlenecked.
- **Task model.** Automation of a fraction `b` of complementary tasks is equivalent to labor-augmenting, capital-depleting technology: `B = (1−b)^((1−rho)/rho)` rises as `b` goes to one. The calibrated full-automation wage is not identified: the same data fit a function with wage `B` or `a1·a2·B` after full automation.
- **R&D only.** Semi-endogenous: `g_A` proportional to `A^(−beta)·L^lambda`. Substituting capital for labor in research gives `g_A` proportional to `A^(lambda−beta)·L^lambda`, explosive only if `lambda > beta`. The economy-wide estimate is `lambda/beta ≈ 1/3` (Bloom et al., [secondary]), so automating R&D alone raises steady growth from `g_L/3` to `g_L/2` and gives a transitory burst. Reasons it could be more: larger integrated systems, copies of the best researchers, and much slower diminishing returns in hardware and software. Reasons it could be less: learning-by-doing data that scale with output, strong non-parallelizability, and Schumpeterian limits on the pace of innovation.
- **Both.** With `Y` proportional to `A·K^alpha` and `g_A` proportional to `A^(−beta)·K^xi`, growth is hyperbolic if `xi/(1 − alpha) > beta`. Full automation of production (`alpha = 1`) gives hyperbolic growth for any `xi`, `beta`. A 5 percent land share does not prevent it.
- **Bottom line (their summary).** Growth up, labor share to zero, wage bill ambiguous and dependent on the direction of technology and returns to scale. Steering technology to keep both growth and the labor share away from zero permanently looks very hard.

#### Korinek and Stiglitz (2017/2019), "Artificial Intelligence and Its Implications for Income Distribution and Unemployment" — [NBER w24174][kstig] [opened]

- **Setup.** `Y = F(K, H + M)`: human labor `H` and machine labor `M` are perfect substitutes; constant returns.
- **Results.**
  1. *Short run.* A marginal unit of machine labor lowers the wage and raises the return to complementary factors in a zero-sum way; output rises by the wage. The redistribution is a pecuniary externality.
  2. *Long run, all factors reproducible.* The economy grows in AK fashion without further technical change. If capital adjusts without friction, the wage can be unchanged, because capital grows in proportion to effective labor. The human labor share goes to zero but workers are no worse off in absolute terms.
  3. *Fixed factors.* With non-reproducible complements (land, resources) growth is eventually limited, real wages fall, and owners of the fixed factors take the rents. The same happens through consumption if workers need a fixed good such as urban land.
  4. *Pareto improvement.* Taxes on fixed-factor rents and on windfall gains to previously installed capital are non-distortionary, so worker-replacing progress can be made Pareto-improving. If redistribution is costly or markets are imperfect (efficiency wages, rigidities, aggregate-demand problems) it may not be, and privately chosen innovation can move the utility frontier inward.
  5. *Unemployment.* Arises from efficiency-wage effects (workers cannot be paid below a fair or subsistence wage) and from slow transitions, not from full-employment theory.
  6. *Malthus.* If AI entities are autonomous and reproduce on energy and materials subject to Moore's-law progress, while human reproduction technology is static, humans lose the race for scarce resources unless steps are taken.
- **Hinges on.** Existence of fixed factors; feasibility of rent taxation; speed of adjustment.

#### Korinek (2024), "Economic Policy Challenges for the Age of AI" — [NBER w32980][kpol] [opened-abstract]

- **Content.** AGI could end labor's central role, with large productivity gains, displacement, a shift in distribution, and a lower return to education. The abstract page lists eight challenges: inequality, education, social and political stability, macroeconomic policy, antitrust, intellectual property, environment, global governance. Details beyond that I did not read.

#### Korinek and Juelfs (2022), "Preparing for the (Non-Existent?) Future of Work" — [NBER w30172][kj] [opened-abstract]

- **Result.** A utilitarian planner facing falling wages phases out work starting with low-productivity, low-job-satisfaction workers, the reverse of work-conditioned welfare. Income must then come from capital ownership or benefits. Work is encouraged only if it has externalities or people undervalue it.

#### Korinek and Lockwood (2026), "Public Finance in the Age of AI: A Primer" — [NBER volume chapter][kl] [opened-abstract]

- **Result.** Transformative AI erodes the two bases modern tax systems rest on: wages and human spending. Stage 1 (labor displaced): consumption taxes become the main revenue source and differentiated commodity taxes matter more because labor taxation no longer constrains the system. Stage 2 (autonomous AGI produces most output and absorbs a growing share of resources): taxing human consumption is not enough; taxing AGI is an optimal-harvesting problem and the rate depends on how society discounts the future. The framework is applied to robot, compute and token taxes, sovereign wealth funds and windfall clauses.

### B4. Restrepo (2025), "We Won't Be Missed: Work and Growth in the AGI World" — [October 2025 draft][restrepo] [opened]; [NBER w34423][restrepo-nber]; chapter 9 of the NBER volume

- **Setup.** Output `Y = F({X(w)})`, constant returns, over a discrete set of kinds of work. Each kind can be done by people or by compute: `X(w) = L(w) + Q(w)/alpha(w)`, where `alpha(w)` is the compute cost of replicating one worker's output. Skills `s` come in fixed quantities `H(s)` and can do subsets of work. Premise 1 (AGI): every `alpha(w)` becomes finite. Premise 2: total compute `Q` grows without bound. Compute growth is exogenous; there is no saving decision and no interest rate.
- **Definitions.** *Bottleneck* work: output cannot grow without bound unless this work expands or its price explodes. *Supplementary* work: output can grow without bound while this work stays fixed and its price stays bounded.
- **Results.**
  1. All bottleneck work is eventually automated; some supplementary work may stay human.
  2. Output converges to `Y = A·[Q + sum over automated-competing skills of CEU(s)·H(s)] + N(other skills)`, where `CEU(s)` is the largest compute cost among the tasks skill `s` can do. Production becomes additive in compute and labor whatever `F` was.
  3. Output grows at the rate of compute.
  4. The price of compute converges to a constant `A > 0`. Wages converge to `W(s) = A·CEU(s)` for skills that compete with AI, and to something strictly less for skills in unautomated supplementary work (if it paid more, it would be automated).
  5. Labor's share of GDP is bounded by human compute over total compute and goes to zero. Illustrative magnitudes: a brain is 10^16 to 10^18 flops; the economy's capacity is about 10^21 flops now and could reach 10^54.
  6. *Total wages rise.* If compute and skills are the only scarce inputs, the wage bill after AGI is at least the pre-AGI wage bill. Proof idea: workers could always be put in a no-AGI zone that replicates the old economy; efficiency means the AGI allocation pays them at least as much. The argument fails if other finite resources exist, because the zone would have to compete for them; even then non-compute income (wages plus rents) rises.
  7. *Transition.* If compute is the binding constraint, wages move continuously and the total wage bill rises throughout. If algorithms are the binding constraint, wages jump: skills whose last task is automated suffer a discrete fall to `A_t·CEU(s)`, while not-yet-automated bottleneck skills earn large temporary premiums.
  8. *Science.* With `Y = Z·F(.)` and ideas `dZ/Z = Z^(−beta)·G(.)`, automating science gives `g_Y = g_Q·(1 + 1/beta)`. Growth scales with compute; there is no singularity without exploding compute.
- **On comparative advantage.** He addresses Ricardo directly. Full specialization is not what Ricardo implies when one country is large: the large country (AGI) produces everything and sets relative prices. If humans specialized in a bottleneck task, the economy would become unbalanced as compute grew.
- **Hinges on.** Compute exogenous and scarce at every date; no other fixed factor; competitive pricing; no demand for human provenance beyond what a high `alpha` can represent.
- **Implies.** Wages positive, bounded, decoupled from GDP. Labor share to zero. Growth equal to compute growth (times `1 + 1/beta` with automated science). Nothing on interest rates.
- **Critique.** The discussants (Thompson, Lashkari and Maghzian) question whether standard growth assumptions carry over, whether compute growth persists, and whether workers benefit ([secondary]: I could not open the comment; this is from a search-result summary).
- **Disclosure.** Restrepo has been on Anthropic's Economic Advisory Council since May 2025 (stated in the paper).

### B5. Explosive-growth models from the AI-forecasting community

#### Erdil and Besiroglu (2023; revised July 2024), "Explosive Growth from AI Automation: A Review of the Arguments" — [arXiv 2309.11690][eb] [opened]

- **Definition.** Explosive growth is gross world product growth above 30 percent a year, about ten times current rates.
- **Three arguments for.** (1) Idea-based growth has increasing returns to scale; population was the missing accumulable input and AI labor restores it. (2) Even without technical progress, `Y = A·L^a·K^(1−a)` with both AI labor and capital accumulable grows fast: steady-state growth exceeds 30 percent if the cost of an AI system doing one human's work is at most about `s^(10/7) × $150,000`, with `a = 0.7`. (3) A large one-time level effect compressed into a decade.
- **Nine counterarguments reviewed.** Regulation, physical bottlenecks, slow investment adjustment, Baumol effects from hard-to-automate tasks, alignment problems, R&D difficulty and others. They judge none decisive. On Baumol: with complementary tasks growth is back-loaded, and if full automation is possible the last tasks removed are the most valuable.
- **Conclusion.** Conditional on AI that can do most or all tasks, explosive growth this century is about as likely as not; credences below 20 percent are too low; high confidence either way is unwarranted.
- **Hinges on.** Full substitutability, the elasticity of substitution not being very small, and no binding fixed factor.

#### Davidson (2023), "What a Compute-Centric Framework Says about Takeoff Speeds" — [LessWrong cross-post of the Open Philanthropy report][davidson] [opened: summary post only; the full report's host returned an error]

- **Setup.** Extends the "bio anchors" forecast. AI capability is a function of effective compute (hardware times software efficiency). A semi-endogenous growth model links hardware and software progress to R&D inputs, and AI automates a rising share of both the economy's tasks and AI R&D as effective compute crosses task thresholds. The key parameter is the "effective FLOP gap" between AI that can do 20 percent of cognitive tasks and AI that can do all of them (about four orders of magnitude in the summary).
- **Results.** Conditional on AGI by 2100: about 50 percent probability that the move from 20 percent to 100 percent automation takes under 3 years, about 80 percent under 10 years. Median training requirement for AGI about 10^36 FLOP with 2020 algorithms.
- **Bottlenecks named.** The difficulty gap itself, time to restructure business processes, chip supply, deployment lags, caution.
- **Note.** [Chow-Halperin-Mazlish][chm] describe the model as an integrated-assessment model in the style of climate economics with a median transformative-AI date of 2043 ([secondary] for that number).

#### Epoch AI (2025), "GATE: An Integrated Assessment Model for AI Automation" — [arXiv 2503.04941][gate] [opened]; [parameter page][gate-params] [opened]; [launch post][gate-blog] [opened]

- **Setup.** Three linked modules solved as a social planner's problem: compute and algorithmic progress from R&D with fishing-out; a task-automation rule mapping effective compute to the fraction of tasks automated and to the number of digital workers per task; and a macro block with CES across labor tasks, Cobb-Douglas capital, adjustment costs on capital and compute, and an optional non-accumulable factor.
- **Default parameters.** Task substitution parameter `rho = −0.65` (elasticity about 0.61, my arithmetic); capital elasticity 0.35; output elasticity of the non-accumulable factor **zero**; risk aversion about 1.45; discount rate 5 percent; compute depreciation 30 percent a year; hardware R&D returns 5.2 and software returns 1.25 (ratio of scale returns to fishing-out).
- **Headline results (launch post).** Compute investment may exceed 10 percent of world output; growth during automation is 2 to 20 times the historical 3 percent; enough effective compute to automate most tasks within two decades. With defaults the planner immediately devotes about 20 percent of world output to AI, which Epoch flags as unrealistic.
- **Stated limitations.** No non-AI technical progress; a static task space with no new tasks; costless or polar labor reallocation; no market structure; perfect substitutability of disembodied AI for labor; prices, wages and interest rates not reported. The interactive tool is now deprecated.
- **Hinges on.** The elasticity across tasks, the compute needed for full automation, and the default of no fixed factor.

#### Davidson, Halperin, Houlden and Korinek (October 2026), "When Does Automating AI Research Produce Explosive Growth?" — [paper][dhhk] [opened]

- **Setup.** Semi-endogenous growth with a network of research sectors (software, hardware, general) and goods production. In each, a fraction `f_i` of tasks is automated. Two feedback loops offset ideas getting harder to find: technological spillovers across sectors, and the economic loop from output to investment in machines that do research.
- **Result.** Growth is hyperbolic if `f_Y + f_S/beta_S + f_H/beta_H + f_A/[(1 − alpha)·beta_A] > 1`, where `beta_i` measures diminishing returns in each research sector and `1 − alpha` is the labor share. Calibration: `beta_A = 3.1` economy-wide, `beta_H = 0.2` in hardware, `beta_S = 1` in software. Then 13 percent automation everywhere is enough; 17 percent of software and hardware research alone is enough; fully automating software research alone sits at the knife edge. A stylized simulation with full software-research automation plus 5 percent elsewhere reaches a singularity in six years.
- **Bottlenecks.** With gross complements there is a race between bottlenecks and ongoing automation; they derive a sufficient condition on the speed of automation.
- **Hinges on.** The sectoral `beta` estimates, unit elasticity in the baseline, and no fixed factors. Disclosure: Korinek lists the Anthropic Institute.

#### Cunningham et al. (July 2026), "The Economics of Recursive Self-Improvement" — [paper][rsi] [opened: abstract and introduction]

- **Result.** Net acceleration depends on the product of elasticities around each feedback loop. A back-of-envelope calibration finds the loops are not yet strong enough for self-sustaining acceleration, though they are strengthening. They separate narrow capability (AI R&D benchmarks) from broad economic capability.

### B6. Early machine-intelligence and overlapping-generations models

#### Hanson (2001), "Economic Growth Given Machine Intelligence" — [paper][hanson] [opened]

- **Setup.** Solow-style model, `Y = A·L^a·K^b·M^c` with `a + b + c < 1` (diminishing returns to all reproducible inputs, standing in for fixed factors). Labor is `L = H + U`: humans plus machine intelligences that substitute perfectly. Ordinary computers `M` complement labor. Computer prices `P` fall exogenously. Interest rate constant.
- **Key equations.** Arbitrage gives the machine rental: `Y_M = (I − g_P)·P`, where `I` is the interest rate and `g_P < 0`. Before machine intelligence is worth building, `w = a·Y/H` and wages rise with output. Once it is built, `w = Y_L = Y_M = (I − g_P)·P`: the wage falls as fast as computer prices.
- **Growth.** `g_Y = (g_A + a~·g_H − c~·g_P)/(1 − b − c~)`, where after the transition labor's exponent moves to the computer term. With his parameters growth goes from 4.3 percent to 45 percent a year (doubling every 18 months).
- **Malthus.** The machine population grows faster than output, per-intelligence consumption falls, and wages can fall below human subsistence if machine subsistence is lower. Humans can still get richer if they own a constant share of capital.
- **Variation.** If owners value services only humans can provide so that labor's share falls to, say, 0.05 instead of zero, wages rise with output again and growth is slower (doubling every 27 months).
- **Hinges on.** Perfect substitution, diminishing returns to scale, constant interest rate.

#### Sachs and Kotlikoff (2012), "Smart Machines and Long-Term Misery" — [NBER w18629][sk12] [opened: abstract]

- **Setup.** Two-period overlapping generations. Machines substitute for young unskilled labor and complement older skilled labor.
- **Result.** Lower wages for the young reduce their saving and their investment in skills and capital; the next generation inherits less of both, and each new generation can be worse off than the last. A generational transfer policy can turn this into a gain for all generations.
- **Hinges on.** No operative bequest motive, so saving depends on the young's wage income.

#### Benzell, Kotlikoff, LaGarda and Sachs (2015; revised), "Robots Are Us: Some Economics of Human Replacement" — [NBER w20941][bkls] [opened: abstract and introduction]

- **Setup.** Overlapping generations, high-tech and low-tech workers, two goods. One good is made with capital and "code"; code is the stock of old plus new code, and new code is written by high-tech workers. A fall in the depreciation rate of code is the technology shock.
- **Result.** A boom, then a bust. Durable code first raises demand for coders, wages and saving. As legacy code accumulates, demand for new code falls, wages fall, the young save less, the capital stock shrinks, and long-run output and welfare can end up lower than before the improvement. The authors call this a dynamic reversal of Say's law: more supply of one input reduces, over time, the supply of another. Their abstract answers yes to the question whether displaced people can end up unable to buy what machines make.
- **Hinges on.** Selfish overlapping generations (with an infinitely lived dynasty a capital shortage would raise interest rates and induce saving); low saving rates; limited substitutability between code and capital. Redistribution prevents the outcome; restricting intellectual property or labor supply can make it worse.

#### Sachs, Benzell and LaGarda (2015), "Robots: Curse or Blessing? A Basic Framework" — [NBER w21091][sbl] [opened: abstract]

- **Result.** Higher robot productivity is more likely to hurt young workers and future generations when the saving rate is low, when automatable and non-automatable goods are close substitutes in consumption, and when traditional capital matters more as a complement to labor. Welfare can follow a "noisy U" in robot productivity: small improvements immiserate, large ones help. Generational redistribution makes everyone gain.

### B7. Distribution, wages and ownership

#### Moll, Rachel and Restrepo (2022), "Uneven Growth" — [Econometrica][mrr] [opened]

- **Setup.** Households accumulate wealth subject to random "dissipation" shocks that reset assets to zero (arrival rate `p`). This makes the long-run supply of capital upward-sloping in the return, unlike a representative-household model.
- **Result.** The steady-state return exceeds the discount rate by `r − rho = p · sigma · alpha_net`, where `sigma` is the inverse intertemporal elasticity and `alpha_net` the net capital share. Automation raises `alpha_net`, so it permanently raises the return to wealth. Wealth and top incomes are Pareto-distributed with tail thickness equal to `alpha_net`. Part of the productivity gain goes to capital owners as a higher return, so wages can stagnate.
- **Hinges on.** Imperfectly elastic long-run capital supply.
- **Implies.** Automation raises `r`, widens wealth inequality, and can leave wages flat even when output rises.

#### Caselli and Manning (2019), "Robot Arithmetic: New Technology and Wages" — [AER: Insights][cm-aea] [opened-abstract]; [CEP discussion paper 1497][cm] [opened]

- **Setup.** General cost-function model: many goods, many labor types, capital goods produced within the economy. Assumptions: constant returns, perfect competition, a constant interest rate (steady-state comparison), labor the only fixed factor.
- **Results.** (1) Any technology improvement raises the average real wage if the price of investment goods does not rise relative to consumption goods. (2) Some type of worker must gain. (3) If workers can choose occupations freely (perfectly elastic relative supply), all gain. One-good intuition: `w·L = F − X − (r + delta)·K`, and by the envelope theorem `L·dw = dF > 0`.
- **How it breaks (their own list).** Decreasing returns, which means another fixed factor: then gains go to fixed factors as a group and labor may lose. Rising markups. A rising interest rate: `L·dw = dF − K·dr`. And a singularity in which robots are identical to people, so labor is no longer a fixed factor; they say the steady-state comparison is then uninformative and a transition model is needed.
- **Why it matters.** It is the cleanest statement of the optimistic theorem and of exactly which premises full automation violates.

#### Susskind (2017/2020), "A Model of Task Encroachment in the Labour Market" — [April 2020 version][susskind] [opened: abstract and introduction]; revises Oxford Discussion Paper 819, "A Model of Technological Unemployment"

- **Setup.** Two kinds of capital: complementing capital, which raises labor's productivity in tasks only labor does, and substituting capital, which does tasks instead of labor. Technical progress lets substituting capital encroach on more tasks.
- **Result.** Static: relative wages and the labor share fall. Dynamic: as substituting capital accumulates, labor is driven out and the absolute wage falls to zero. Complementing capital is the countervailing force.
- **Hinges on.** No bound on which tasks can be encroached on, and no creation of new human tasks.

#### Freeman (2015), "Who Owns the Robots Rules the World" — [IZA World of Labor][freeman] [opened]

- **Argument (not a formal model).** As machines become better substitutes, wages for competing work face growing downward pressure. Comparative advantage means people will still find work where machines' relative advantage is smallest, so mass joblessness is not implied, but the work left may pay little. The outcome depends on who owns the machines: if workers own the robots that replace them they gain. Policy: broad employee ownership and profit sharing. (The "three laws of robo-economics" phrasing is from another version of the essay, which I did not open.)

#### Ide and Talamas (2024/2025), "Artificial Intelligence in the Knowledge Economy" — [arXiv 2312.05481 / JPE][it] [opened]

- **Setup.** Garicano-style knowledge hierarchy. People differ in knowledge; less knowledgeable workers handle routine problems and pass exceptions up to more knowledgeable solvers; helping costs time. AI converts compute into agents with a fixed knowledge level. Compute is abundant relative to human time, and its price is endogenous. AI is *autonomous* (can work or solve) or *non-autonomous* (can only advise).
- **Results.** Basic autonomous AI (worker-level knowledge) hurts the least knowledgeable and benefits the most knowledgeable. Advanced autonomous AI (solver-level) benefits both ends and pushes marginal solvers down into routine work. Non-autonomous AI mostly benefits the least knowledgeable. Output is higher with autonomy.
- **Hinges on.** AI knowledge is at a fixed level below the top humans; humans remain the binding constraint.
- **Implies.** Who gains from AI depends on autonomy and capability level, which reconciles conflicting micro evidence. It is a partial-automation model, not a full-automation one.

### B8. Baumol, new work, and demand

#### Baumol's cost disease — Baumol (1967) [secondary]; tested in [Nordhaus, "Baumol's Diseases" (NBER w12218)][nordhaus-baumol] [opened-abstract]; modeled in [Aghion-Jones-Jones][ajj] [opened]

- **Mechanism.** If sectors differ in productivity growth and demand is inelastic (elasticity of substitution below one), the stagnant sectors' relative prices rise, their share of spending rises, and aggregate growth converges to the growth rate of the slowest essential sector.
- **Evidence.** Nordhaus finds on 1948-2001 US industry data that stagnant sectors have rising relative prices and falling relative real output, and that their growing share slowed aggregate productivity growth. Halperin and Mazlish attribute about 25 percent of the post-1973 slowdown to it ([secondary]: from the description on [Halperin's research page][halperin]).
- **Role in this literature.** It is the main argument against explosive growth, and the mechanism by which labor keeps its share under partial automation.

#### Autor, Chin, Salomons and Seegmiller (2022/2024), "New Frontiers: The Origins and Content of New Work, 1940-2018" — [NBER w30389 / QJE][acss] [opened]

- **Result.** Roughly 60 percent of 2018 employment is in job titles that did not exist in 1940. New work appears where innovations augment an occupation's output and where demand rises; automation innovations and adverse demand shocks slow it. Since 1980 new work has shifted from middle-paid production and clerical jobs to high-paid professional and low-paid service jobs. The demand-eroding effect of automation has intensified over four decades; the demand-raising effect of augmentation has not.
- **Relevance.** Empirical support for the reinstatement effect, and for the worry that it is weakening. [Trammell-Korinek][tk] add the theoretical limit: once machines replicate the underlying human capabilities they can do any newly created task too.

#### Bessen (2018/2019), "AI and Jobs: The Role of Demand" — [NBER w24235][bessen] [opened-abstract]

- **Result.** Whether automation raises or lowers an industry's employment depends on the price elasticity of demand. In textiles, steel and autos, demand was highly elastic early (productivity gains expanded employment for a century) and inelastic later (the same gains cut employment). A simple demand model fits the rise and fall.
- **Relevance.** Sector-level version of the Baumol logic: satiation, not technology, turns productivity growth from job-creating to job-destroying.

### B9. Interest rates, asset prices and capital

#### Chow, Halperin and Mazlish (2023; revised June 2026), "Transformative AI, Existential Risk, and Real Interest Rates" — [paper][chm] [opened]

- **Theory.** Euler equation: `1 = beta · delta · E[u'(C_t+1)/u'(C_t)] · (1 + r)`, where `delta` is survival probability. Ramsey form: `r = rho + g/EIS`. Both rapid growth (aligned AI, which they define as growth above 30 percent a year) and extinction risk (unaligned AI) make future consumption less valuable relative to present consumption, so both raise long-term real rates. With log utility, 30 percent growth implies real rates above 30 percent; ten-year real rates in their developed-country sample have never exceeded 5 percent.
- **Evidence.** Across 59 countries over 35 years, a one-point rise in expected long-run growth is associated with a 0.71 to 1.80 point rise in the 5-to-10-year real rate (1.36 in the preferred specification with country effects and controls, implying an intertemporal elasticity of about 0.74).
- **What weakens it.** Precautionary saving if growth uncertainty rises: `r = rho + g/EIS − Var/(2·EIS^2)`. Marginal utility that stays high despite growth (external habits; new goods).
- **Other assets.** Equities are ambiguous: higher cash flows against a higher discount rate; growth raises average stock prices only if the intertemporal elasticity exceeds one, and their estimate is below one. A rising capital share pushes the other way. Profits may not accrue to listed firms. Land and commodities could soar if AI cannot substitute for them, but they too are discounted at higher rates.
- **Follow-up literature they report ([secondary]).** Andrews and Farboodi (2025) find nominal rates fell about 21 basis points on average around 15 model releases; Kung, Lustig and Paron (2026) attribute that to convenience yields; Maresca (2025) models competition to hold capital that amplifies the rise in the risk-free rate; Maresca (2026) has precautionary saving pushing rates down.
- **Status.** Listed as revise-and-resubmit at the AER on [Halperin's page][halperin].

#### Trammell and Patel (December 2025), "Capital in the 22nd Century" — [essay][tp] [opened: read through a page summary, not line by line]

- **Argument.** Piketty's mechanism (the rich save more and earn more, so wealth concentrates without limit) failed historically because capital and labor were complements: accumulation lowered capital's return and raised wages, which corrected inequality. Under full automation capital is a substitute for labor, accumulation no longer lowers its return much, and the correction disappears. Savers pull away; inheritance preserves fortunes; over the long run wealth shares go to whoever starts richest, saves most, and binds heirs to do the same.
- **Predictions.** Capital share toward one; returns to capital stay high; labor share toward zero though absolute wages may be high; international catch-up through cheap labor ends.
- **Policy.** A high progressive tax on capital or capital income (or equivalently on consumption) is close to the only way to prevent extreme inequality, at some cost to growth, and needs international coordination. Land taxes avoid those costs but cannot raise much more than about 5 percent of GDP.
- **Hinges on.** Full automation, secure property rights at vast scale, persistent differences in saving rates and returns, weak resource bottlenecks. Critics (Mowshowitz, [secondary]) say the conclusion assumes humans remain the main capital holders.

### B10. The NBER volume and other 2025-2026 work

#### Agrawal, Brynjolfsson and Korinek (eds.), *The Economics of Transformative AI* — [NBER/University of Chicago Press][nbervol] [opened: table of contents]

Published September 2026 from a September 2025 conference. Sixteen chapters. Those bearing on this file: Restrepo (ch. 9, above); B. Jones on AI in R&D (ch. 2, above); Korinek and Lockwood on public finance (ch. 15, above); [Agrawal, Gans and Goldfarb, "Genius on Demand"][agg] [opened-abstract], in which AI "geniuses" take over all but the most distant frontier questions and, if they approach human genius efficiency, fully displace routine knowledge workers; Stevenson, "What Is There to Fear in a Post-AGI World?" (ch. 10, no abstract available); C. Jones, "How Much Should We Spend to Reduce AI's Existential Risk?" (ch. 16); Hadfield and Koh on an economy of AI agents (ch. 5); Chatterji, Rock and Talamas on firms (ch. 7).

#### Korinek, Jones, Sacher, Cotter and McCrory (September 2026), "Economic Scenarios for Transformative AI" — [Anthropic scenario explorer][anthropic-scen] [opened: web page; technical report not opened]

- **Setup.** Task-based model on O*NET tasks; each task is unchanged, augmented, automated, or spawns new tasks. Target year 2030.
- **Scenarios (2030, 2025 prices).** *Modest*: GDP 1.6 percent above the no-AI path, labor share down 0.6 points. *Substantial* (AI does about half of knowledge work): GDP 8.3 percent above, labor share down 3.9 points, knowledge-worker wages flat. *Extreme* (AI does nearly all knowledge work autonomously; growth reaches 15 percent a year): GDP 32.4 percent above, labor share down 14.8 points to 45.2 percent, knowledge-worker wages down more than 10 percent, average wages still up, total labor income about unchanged, unemployment at historic highs.
- **Stated omissions.** Policy responses, business cycles, **aggregate-demand effects**, financial disruption, catastrophic risk, robotics. Published by an AI company; treat as an interested party's scenario tool.

#### Other 2025-2026 items

- **[Zhu (May 2026), "Compute-Anchored Wages"][zhu]** [opened-abstract]. An AI agent is a technology that turns compute capital into cognitive labor, so the elastic supply that sets the wage is in the compute market, not the labor market. For tasks where human and agent output substitute: `w ≤ lambda · k · r_c` (relative human productivity times compute per unit of agent labor times the compute rental rate).
- **[Catalini, Hui and Wu (February 2026), "Some Simple Economics of AGI"][chw]** [opened-abstract]. The binding scarcity shifts from doing tasks to verifying them. Automation costs fall exponentially while verification remains limited by human capacity; rents move to verification, provenance and liability.
- **[Stiefenhofer (February 2025)][stief]** [opened-abstract]. Argues wages fall toward zero, demand weakens as incomes fall, and proposes UBI, public or cooperative AI ownership and progressive taxes on AI capital. I did not verify how formal the demand argument is.
- **[Karger et al. (May 2026), "Forecasting the Economic Effects of AI"][karger]** [opened: abstract]. Survey of economists, AI-industry staff, policy researchers, superforecasters and the public. Median expected US growth 2.5 percent a year. Conditional on rapid AI progress, experts expect growth around 4 percent and labor-force participation falling from 62 to 55 percent by 2050. Disagreement is mostly about the economic effect of capable AI, not about capability timelines.
- **[Barnett (January 2025), "AGI Could Drive Wages Below Subsistence Level"][barnett]** [opened]. Cobb-Douglas with land; see Questions 3 and 4.
- **[Citrini Research (February 2026), "The 2028 Global Intelligence Crisis"][citrini]** [opened]. A scenario memo, explicitly not a forecast: white-collar layoffs cut spending, weaker consumer firms automate further, output shows up in national accounts without circulating through households, and credit stress follows. Not a model; included because it is the most widely read statement of the demand-collapse story.
- **[Benzell and Brynjolfsson (2019), "Digital Abundance and Scarce Genius"][bb19]** [opened-abstract]. If digital labor and capital are sufficiently complementary to a fixed third factor ("genius"), innovation that augments either can lower both wages and interest rates, and growth is limited by the scarce factor.
- **[Berg, Buffie and Zanna (2018)][bbz]** [opened-abstract]. Robot capital substitutes for labor differently from traditional capital; only capitalists and skilled workers save. Automation raises growth and inequality; in the benchmark real wages fall first and recover eventually, possibly after generations.

---

## (c) The nine questions

### 1. When machines become perfect substitutes for labor in all tasks, under exactly what conditions do wages rise, and under what conditions do they fall?

Start from `Y = F(K, H + M)` with machine labor `M` a perfect substitute for human labor `H` ([Korinek-Stiglitz][kstig]). The wage is the marginal product of the combined labor input. Everything depends on what else is in `F` and what adjusts.

**Wages fall or stagnate when:**

1. **Other factors are held fixed (the short run).** Adding machine labor lowers the marginal product of labor and transfers income one-for-one to complementary factors ([Korinek-Stiglitz][kstig], Proposition 1).
2. **Automation outruns capital accumulation.** In [Korinek-Suh][ks24] the wage drops to the return on capital as soon as the automated fraction exceeds `(K/L)/(1 + K/L)`, which can happen before automation is complete. In their 5-year AGI scenario this occurs after about 3 years.
3. **A fixed factor matters.** With land, energy or minerals in production, scaling up machine labor and capital together runs into diminishing returns and the marginal product of labor falls ([Korinek-Suh][ks24] Proposition 10; [Korinek-Stiglitz][kstig] Observation 3; [Hanson][hanson]; [Trammell-Korinek][tk] section 2.4). Under perfect substitution with Cobb-Douglas land, both capital's and labor's marginal products fall as capital accumulates.
4. **Machines get cheaper faster than general productivity rises.** Under perfect substitution the wage equals the cost of the machine substitute. In the [Trammell-Korinek][tk] endogenous-automation model the wage is proportional to `A · theta^(−alpha)`: it rises with TFP and falls with robot productivity per unit cost, so it falls if `g_A < alpha · g_theta`. In [Hanson][hanson] it falls at the rate computer prices fall.
5. **Better machines pull capital away from complementing labor** ("labor-depleting" progress): wages rise only if labor-augmenting progress satisfies `g_B > [alpha/(1−alpha)]·g_A` ([Trammell-Korinek][tk]).
6. **The return to capital rises.** With labor no longer the fixed factor, the economy leaves the steady state in which the interest rate is pinned by time preference. [Caselli-Manning][cm] show `L·dw = dF − K·dr`: a rising interest rate takes the gains. [Moll-Rachel-Restrepo][mrr] get a permanently higher return whenever capital supply is not perfectly elastic.
7. **Saving collapses across generations.** In the overlapping-generations models lower wages for the young reduce capital formation and every later cohort is poorer ([Sachs-Kotlikoff][sk12]; [Benzell et al.][bkls]).

**Wages rise when:**

1. **Substitution is gross but not perfect and nothing else is scarce.** In a two-factor constant-returns function more capital cannot lower labor's marginal product. An exploding capital stock that complements labor even slightly produces exploding wages ([Nordhaus][nordhaus]; [Trammell-Korinek][tk] section 2.2).
2. **Some tasks stay human, with a thick enough tail.** Technical impossibility or social choice both work ([Korinek-Suh][ks24] Proposition 7 and the "nostalgic jobs" extension; [Hanson][hanson]'s residual human share; [Aghion-Jones-Jones][ajj], where labor keeps about two thirds of income indefinitely).
3. **Compute is the only scarce input besides skills.** Then the post-AGI wage bill is at least the pre-AGI one ([Restrepo][restrepo] Proposition 6).
4. **General technology keeps improving,** including through automated R&D: in [Korinek-Suh][ks24] Proposition 11 the wage is at least `A_t` and diverges with it.
5. **The premises of the Caselli-Manning theorem hold:** constant returns, competition, constant interest rate, labor the only fixed factor, investment goods getting relatively cheaper ([Caselli-Manning][cm]).

**The condition in one line.** Under perfect substitution, `wage = (rental cost of the machine substitute)`, and that cost, measured in consumption goods, rises with economy-wide productivity and falls with machine-specific productivity and with fixed-factor scarcity. Wages rise if the first force wins.

**Strongest opposing view to "wages fall."** [Restrepo][restrepo] and [Caselli-Manning][cm]: a competitive economy would never adopt a technology that makes the owners of the old factors collectively poorer when they could have kept the old arrangement. That argument is correct and its failure conditions are precise: a third scarce factor that the old arrangement must now bid for, a higher required return on capital, or imperfect competition. **Strongest opposing view to "wages rise."** [Hanson][hanson] and [Barnett][barnett]: the old arrangement needs land and energy, and a machine population that can outbid humans for both will set the price of subsistence.

### 2. What pins down the long-run wage in a fully automated economy?

**An arbitrage condition: the wage for any work equals the cost of having a machine do it.** The versions differ in what they hold fixed.

| Source | Wage formula | What sets the level |
|---|---|---|
| [Hanson][hanson] | `w = (I − g_P) · P` | Interest rate plus rate of price decline, times the price of machine-intelligence hardware and software. Falls with `P`. |
| [Restrepo][restrepo] | `W(s) = A · CEU(s)`; lower for unautomated supplementary work | `A` is output per unit of compute (the opportunity cost of compute), converging to a positive constant. `CEU(s)` is the compute needed to replicate skill `s`. |
| [Zhu][zhu] [opened-abstract] | `w ≤ lambda · k · r_c` | Rental rate of compute, compute intensity of agent labor, human relative productivity. |
| [Korinek-Suh][ks24] | `w = R = A`; with a fixed factor `w = R = rho + delta` | One unit of capital does one unit of labor's work, so the wage equals the return on capital, which in steady state with a fixed factor is pinned by time preference and depreciation. |
| [Trammell-Korinek][tk] | `w = B`, or proportional to `A · theta^(−alpha)` | Labor-augmenting technology, or TFP divided by robot productivity. |

Three points follow.

1. **Reproduction cost and rental price are the same answer at different depths.** The rental price of a machine is `(interest + depreciation − price appreciation) × purchase price`. Purchase price is reproduction cost. So the wage depends on the cost of building the machine **and** on the required return on capital, which under full automation is itself endogenous and probably high (Question 6).
2. **"Pinned to compute" does not mean "low."** Restrepo's `A` is what a unit of compute can produce elsewhere. While compute is scarce relative to valuable uses, that opportunity cost is high, and a human who saves 10^16 to 10^18 flops is worth a lot. The wage is high or low according to whether the economy is compute-constrained or resource-constrained at the margin.
3. **Two things can lift a wage above the machine rental.** A task machines are not allowed to do or that buyers will not accept from a machine (law, taste for human provenance). And a temporary scarcity premium for skills whose last task is not yet automated ([Restrepo][restrepo] Proposition 8). Neither is a general floor: in Restrepo's model even unautomated supplementary work pays less than its compute cost, because it is left to humans only when there are already too many humans to do it.

**Opposing view.** That the wage is still pinned by human preferences and bargaining, not machines: if consumers value human-made services as such, labor is a differentiated product with its own demand curve, and theory cannot say what that demand is. [Trammell-Korinek][tk] note that real spending on horses and sailboats never went to zero. This is a claim about tastes, and it bounds how many people can be employed that way, not what they are paid.

### 3. What role do fixed factors play? Is there a "Malthusian" result for machines?

**Role.** When both labor and capital are reproducible, constant returns in those two alone would give unbounded AK growth. Any non-reproducible input restores diminishing returns and becomes the residual claimant.

- **Cobb-Douglas land** (share `1 − a`): growth is exponential, `g_Y = g_A/(1 − a)`; the land share stays constant; the reproducible-factor share is `a`; labor's share goes to zero. With a 5 percent land share, growth is more than ten times faster and the capital share is 95 percent ([Trammell-Korinek][tk]).
- **Land as a gross complement** (elasticity below one): its share rises toward one and growth is eventually limited by resource-augmenting technology ([Korinek-Stiglitz][kstig]; [Trammell-Korinek][tk] section 4).
- **Wages** are where the fixed factor bites hardest: [Korinek-Suh][ks24] Proposition 10 (wages always fall to the return on capital in finite time, regardless of the task distribution) and [Trammell-Korinek][tk] (wages rise only if the reproducible share exceeds the substitution parameter between capital and labor).
- **Asset prices.** Land and commodity values could rise enormously if AI cannot substitute for them ([Chow-Halperin-Mazlish][chm]).
- **Scarce skills behave like land during the transition.** Unautomated bottleneck skills earn rents ([Restrepo][restrepo]); "genius" as a fixed factor can pull both wages and interest rates down ([Benzell-Brynjolfsson][bb19], [opened-abstract]).

**Is there a Malthusian result?** Yes, and it is one of the oldest results in this literature.

- [Hanson][hanson]: the machine population expands until the return on building another machine equals the interest rate. Per-intelligence income falls continuously with hardware prices. If a machine's subsistence cost (energy, hardware depreciation, floor space) is below a human's, the wage for substitutable work can fall below human subsistence.
- [Korinek-Stiglitz][kstig]: humans and AI entities are in a race for resources; AI's "reproduction technology" improves along Moore's law while human biology does not; humans lose unless something is done.
- [Barnett][barnett]: Cobb-Douglas with land; AGI labor scales as fast as hardware can be built; in a human-only economy starvation puts a floor under wages by shrinking labor supply, but with AGI the floor is the machine's energy cost. He gives roughly one-in-three odds of wages below subsistence before 2045 and two-in-three before 2125, and says he may be too optimistic about the near term.

The classical Malthusian mechanism has three parts: a fixed factor, a population whose reproduction responds to income, and no offsetting technical progress. Machines satisfy the second far more strongly than humans ever did. So the result depends on the first and third.

**Strongest opposing view.** The fixed factor is not binding on any relevant horizon. The natural-resource share of income is under 5 percent and not rising (Eden and Kuruc, [secondary] via [Trammell-Korinek][tk]); energy use is less than one five-thousandth of sunlight reaching the earth's surface; rare earths are abundant given energy ([Trammell-Korinek][tk]). AGI also expands the supply of land-like inputs ([Restrepo][restrepo]). And Malthus was wrong about humans because technology outran population; it might outrun machine population too. The reply is that a 5 percent share today is a price times a quantity under today's technology. If the elasticity of substitution between resources and everything else is below one, the share rises as everything else becomes abundant. Short-run estimates of that elasticity are well below one, long-run estimates higher ([secondary] via [Trammell-Korinek][tk] footnote).

### 4. The comparative-advantage argument that humans keep well-paid jobs even when AI is better at everything

**Strongest form.**

1. *Ricardo.* Advantage in trade is comparative, not absolute. If AI capacity is finite, every unit used on task X is not used on task Y. Output is maximized when AI does what it is relatively best at and humans do the rest. Humans are employed and paid their marginal product ([Smith][smith], free portion only; his later sections on compute constraints are behind a paywall and I rely on memory for them).
2. *The opportunity cost is high because AI is so productive.* A human's wage equals the value of the compute they free up. The more valuable compute is, the higher the wage. This is exactly [Restrepo][restrepo]'s `W = A · CEU`.
3. *Trade with a richer partner makes you richer.* Adding a factor with a different skill mix raises the total income of the existing factors under constant returns ([Trammell-Korinek][tk]'s immigration analogy; [Restrepo][restrepo] Proposition 6; [Caselli-Manning][cm] Result 2).
4. *History.* Every previous wave of automation was followed by new work; about 60 percent of today's jobs did not exist in 1940 ([Autor et al.][acss]).

**Best rebuttals.**

1. **It guarantees employment, not a wage level.** Comparative advantage is compatible with an equilibrium wage that is arbitrarily low, including below the cost of food ([Barnett][barnett]; [Freeman][freeman]). The theorem says both parties gain from trade relative to autarky. It does not say labor's share of the gain is large, and after AGI "autarky" for humans is not the pre-AGI economy unless they can also keep the land and capital it used.
2. **Endowments are not fixed.** Ricardo's model has given quantities of each country's labor. Compute is reproducible. As it accumulates, the "AI country" becomes large, produces every good, and sets all relative prices; the small country gets no terms-of-trade gain. This is [Restrepo][restrepo]'s own point: bottleneck tasks cannot be left to a fixed human workforce while everything else grows, so AGI takes them all, and the human wage is capped at compute cost and decoupled from growth.
3. **Fixed factors break the two-party gains-from-trade logic.** With land or energy as a third input that both parties need, more machines bid up its price. Human real wages can fall even though humans still have a comparative advantage in something ([Hanson][hanson]; [Korinek-Stiglitz][kstig]; [Korinek-Suh][ks24]). Smith himself, as I recall the paywalled part, flags competition for energy as the case where his argument fails ([secondary], from memory).
4. **Horses.** Horses always had a comparative advantage in something. Their equilibrium "wage" fell below their upkeep. [Acemoglu-Restrepo][ar18]'s answer is that humans, unlike horses, have a comparative advantage in *new* tasks. [Trammell-Korinek][tk]'s reply is that once machines replicate the underlying human capabilities they can do the new tasks too.
5. **Scarcity of compute is temporary by assumption.** The argument needs compute to stay scarce relative to its high-value uses. In [Restrepo][restrepo] the value of compute declines along the transition to its long-run level; [Ide-Talamas][it] assume from the start that compute is abundant relative to human time.
6. **Overhead.** If employing a human carries fixed costs (supervision, slower interfaces, error risk, [Catalini-Hui-Wu][chw]'s verification burden), a positive marginal product may not cover them. This is my inference, not a result from the sources.

**Net.** Both sides are describing the same equation. The comparative-advantage argument correctly says the human wage is the opportunity cost of the machine. The rebuttal correctly says that opportunity cost is set by the supply of machines and of whatever they compete with humans for, not by how much the economy as a whole produces. "Plentiful jobs" survives. "High-paying," in the sense of wages that track output, does not survive in any formal full-automation model I found.

### 5. What conditions produce explosive growth (above 20-30 percent a year), and what are the best bottleneck arguments against it?

**Conditions that produce it.**

1. **Full automation of goods production.** `Y = A·K` gives `g = s·A − delta`. Growth is "explosive" if machines reproduce fast: [Erdil-Besiroglu][eb] put the threshold at a cost per human-equivalent AI of roughly `s^(10/7) × $150,000`; [Hanson][hanson] gets 45 percent; [Korinek-Suh][ks24] get 18 percent in their calibration. If `A` also grows, growth accelerates without limit ([Aghion-Jones-Jones][ajj]; [Trammell-Korinek][tk]).
2. **Elasticity of substitution between information capital and labor above one,** with fast capital-augmenting progress ([Nordhaus][nordhaus]).
3. **Automation of idea production with weak enough diminishing returns.** One-sector condition: `lambda > beta`. With production also automated: `xi/(1 − alpha) > beta` ([Trammell-Korinek][tk]). Multi-sector condition: `f_Y + f_S/beta_S + f_H/beta_H + f_A/[(1 − alpha)·beta_A] > 1`, met at 13 percent automation everywhere on the authors' calibration ([Davidson et al.][dhhk]).
4. **Partial automation can be enough under Cobb-Douglas** ([Aghion-Jones-Jones][ajj], Example 3), but not under complementarity unless automation keeps advancing fast enough.

**Bottleneck arguments against, strongest first.**

1. **Weak links (Baumol).** If tasks are complements, output is limited by the slowest essential task. [Jones-Tonetti][jt]: with task elasticity 0.2, infinite productivity on a third of GDP raises output 11 percent; with history-calibrated automation, growth reaches only 2.6 percent by 2075. The share of GDP paid to computers has stayed small despite computers being everywhere, because prices fell faster than quantities rose. Counter: if the weak links themselves can be automated, growth is delayed, not prevented, and the final steps are the most valuable ([Erdil-Besiroglu][eb]; Jones and Tonetti agree for the full-automation case).
2. **Ideas get harder to find.** Economy-wide `beta ≈ 3.1`, so `lambda/beta ≈ 1/3`: automating research alone does not sustain even exponential growth ([Trammell-Korinek][tk]). [Restrepo][restrepo]: `g_Y = g_Q·(1 + 1/beta)`, no singularity without exploding compute. Counter: the estimate is much more favorable in hardware and software ([Davidson et al.][dhhk]).
3. **Fixed factors and physical limits.** Energy, land, minerals, the speed of physical processes, Carnot-type efficiency limits ([Aghion-Jones-Jones][ajj]; [Korinek-Suh][ks24]). Counter: a 5 percent land share still permits more than a tenfold rise in growth ([Trammell-Korinek][tk]). GATE's default sets the fixed-factor share to zero ([GATE][gate-params]), which should be remembered when reading its outputs.
4. **Some tasks are never automated,** by nature or by choice. If 5 percent cannot be, growth eventually falls to the rate at which people improve ([Jones-Tonetti][jt]).
5. **Adjustment costs, deployment lags, regulation.** These spread a level effect over decades ([Erdil-Besiroglu][eb] rate regulation and slow investment as live but not decisive; [GATE][gate] includes compute and capital adjustment costs).
6. **Incentives to innovate.** In Schumpeterian models faster innovation shortens each innovator's monopoly; the equilibrium pace is limited by an arbitrage condition, not by research inputs ([Trammell-Korinek][tk] section 3.3; [Aghion-Jones-Jones][ajj] appendix).
7. **Experimental and data bottlenecks in research.** Learning-by-doing data may scale with output, not with compute ([Trammell-Korinek][tk]); bottleneck research tasks ([B. Jones][bjones], [opened-abstract]).
8. **The data so far.** [Nordhaus][nordhaus]: five of seven tests negative, crossing at least a century away on 2015 data. [Acemoglu][ace24]: at most 0.7 percent of TFP over ten years from current AI. [Cunningham et al.][rsi]: feedback loops not yet strong enough. [Karger et al.][karger]: experts expect about 4 percent growth even conditional on rapid AI.

**Where that leaves it.** The theoretical case for much faster growth under *full* automation is robust: it needs only reproducible machines that do all tasks and a modest fixed-factor share. The case for *explosive* growth soon rests on the elasticity across tasks and on how fast the last tasks fall. The honest range for the next decade runs from Acemoglu's 0.1 point a year to the "Moore's law everywhere" path of 7 percent by 2030, and the theory does not choose between them. The models' own authors put the probability of explosive growth conditional on full automation at about one half ([Erdil-Besiroglu][eb]).

### 6. What does theory predict for real interest rates and asset prices?

**Real interest rates: three mechanisms, all pointing up.**

1. *Consumption smoothing.* `r = rho + g/EIS`. At 30 percent growth and log utility, `r` exceeds 30 percent ([Chow-Halperin-Mazlish][chm]). Empirically a point of expected growth has gone with 0.7 to 1.8 points of real rate.
2. *Marginal product of capital.* Under full automation `Y ≈ A·K` and `r = A`, which does not fall as capital accumulates and rises with technology ([Trammell-Korinek][tk]). On an Acemoglu-Restrepo balanced path `R = rho + delta + theta·g` ([Acemoglu-Restrepo][ar18]).
3. *Capital demand against inelastic supply.* `r − rho = p · sigma · alpha_net`: the return rises with the capital share ([Moll-Rachel-Restrepo][mrr]).

Extinction risk works in the same direction as growth ([Chow-Halperin-Mazlish][chm]).

**Mechanisms pointing down.**

- Precautionary saving against job loss or wide outcome uncertainty (the variance term in the Ramsey rule; Maresca 2026, [secondary]).
- A scarce complementary factor that caps the return on reproducible capital: with a fixed factor the return falls back to `rho + delta` ([Korinek-Suh][ks24]); with scarce "genius" wages and interest rates fall together ([Benzell-Brynjolfsson][bb19], [opened-abstract]).
- Concentration of income among high savers, which lowers the natural rate in models with non-homothetic saving ([Mian-Straub-Sufi][mss], [opened-abstract]; [Auclert-Rognlie][ar-ineq], [opened-abstract]).
- Marginal utility that does not fall with growth (relative-consumption preferences, a stream of new goods) ([Chow-Halperin-Mazlish][chm]).
- Convenience demand for safe assets (Kung, Lustig and Paron, [secondary]).

**What markets have done.** Long real rates have not priced 30 percent growth. Nominal rates fell on average around major model releases (Andrews and Farboodi, [secondary] via [CHM][chm]). Chow, Halperin and Mazlish read low rates as markets not expecting transformative AI on short timelines; the alternative reading is that one of the downward mechanisms dominates.

**Asset prices.**

- *Equities in aggregate*: ambiguous. Cash flows rise; so does the discount rate. Higher growth raises valuations only if the intertemporal elasticity exceeds one; a rising capital share helps; much of the value may accrue to private firms or be taxed away ([Chow-Halperin-Mazlish][chm]).
- *Compute and other specific capital*: very high returns while it is the bottleneck, ordinary returns once enough has been built ([Korinek-Suh][ks24]).
- *Land, energy, minerals*: rise if they are the binding fixed factor, tempered by higher discount rates ([Chow-Halperin-Mazlish][chm]; [Korinek-Stiglitz][kstig]).
- *Human capital*: the largest asset most households own loses value as the wage decouples from output; lower return to education ([Korinek][kpol], [opened-abstract]).
- *Long-duration bonds*: lose value if rates rise as the growth models predict.
- *Wealth distribution*: with high, non-diminishing returns to capital, differences in saving rates compound without the old correction ([Trammell-Patel][tp]; [Moll-Rachel-Restrepo][mrr]).

**A usable diagnostic.** Growth-explosion models and demand-shortfall models make opposite predictions for long real rates. Watching the 10-to-30-year real yield is the cheapest way to see which story markets believe.

### 7. Is there a serious modern treatment of "who buys the output if nobody earns wages"? What does it conclude?

**Short answer.** There are serious treatments of pieces of it. I did not find a canonical general-equilibrium model of a demand shortfall under *full* automation, and my search was cut short, so absence here is weak evidence.

**What the formal literature says.**

1. **In frictionless general equilibrium the question dissolves.** Income equals output. If wages go to zero, capital income is the whole of national income, and capital owners either consume it or invest it. In the full-automation growth models investment is the main use: machines build machines, and the Euler equation guarantees the output is absorbed at a high enough interest rate ([Trammell-Korinek][tk]; [Restrepo][restrepo], where all income accrues to compute). There is no general glut. There is a distribution problem.
2. **The closest thing to a formal "yes."** [Benzell, Kotlikoff, LaGarda and Sachs][bkls] pose the question in almost these words and answer yes, but the mechanism is on the supply side. Lower wages mean the young save less; the capital stock shrinks; output falls. It needs overlapping generations without bequests and a low saving rate, and redistribution toward the young fixes it. [Sachs-Kotlikoff][sk12] and [Sachs-Benzell-LaGarda][sbl] are the same family.
3. **Keynesian channels exist but are not specific to AI.** With wage rigidity, efficiency wages, borrowing limits or a lower bound on interest rates, labor-saving innovation can reduce welfare, and shifting income toward low-spending households weakens demand ([Korinek-Stiglitz][kstig], Observation 4 and the unemployment section). [Beraja-Zorzi][bz] [opened-abstract]: displaced workers cannot borrow against future income, firms ignore this, automation is inefficiently fast, and slowing it yields welfare gains of about 4 percent. [Mian-Straub-Sufi][mss] [opened-abstract]: rising inequality lowers the natural rate and can push the economy into a debt trap. [Auclert-Rognlie][ar-ineq] [opened-abstract]: the short-run demand effect of inequality through differences in spending propensities is small; the long-run effect on the real rate can be material.
4. **Informal treatments.** [Stiefenhofer][stief] [opened-abstract] argues demand collapses as wages vanish. [Citrini][citrini] narrates a displacement spiral with credit stress. The [Anthropic scenario model][anthropic-scen] explicitly leaves aggregate demand out.

**What it concludes.** A demand shortfall from automation is a *transition and policy* phenomenon in theory, not a permanent equilibrium. It requires at least one of: nominal or real rigidities with constrained monetary and fiscal policy; credit constraints on the displaced; or saving behavior that fails to convert capital income into investment or consumption. A permanent version requires that capital owners neither consume nor invest their income at any feasible interest rate, which no standard preference specification delivers.

**Strongest opposing view.** The frictionless answer assumes away what matters over a ten-year horizon. Household balance sheets, mortgage and consumer credit, firms that sell to wage earners, and the tax base are all built on labor income. If displacement is fast and concentrated among high earners, the transition could involve a deep recession even though the long-run equilibrium has higher output, and policy might be slow. Nothing in the formal literature rules that out; [Korinek-Stiglitz][kstig] and [Beraja-Zorzi][bz] are consistent with it. Note that this view predicts *falling* real interest rates, the opposite of Question 6's growth story.

### 8. Optimal-policy results: capital taxation, UBI, and whether automation can be made Pareto-improving through transfers

**Can transfers make it Pareto-improving?**

- **In principle yes.** Output rises, so the gains exceed the losses. If lump-sum or non-distortionary instruments exist the losers can be compensated. The natural bases are rents on fixed factors and windfall gains on capital installed before the change ([Korinek-Stiglitz][kstig], Observations 2 and 4). Among workers, taxing the winners to pay the losers needs no tax on robots at all ([Caselli-Manning][cm]). Generational transfers turn immiseration into shared gain in the overlapping-generations models ([Sachs-Kotlikoff][sk12]; [Sachs-Benzell-LaGarda][sbl]; [Benzell et al.][bkls]).
- **In practice not guaranteed.** If redistribution is costly, or markets are imperfect, the feasible frontier may not contain a Pareto improvement, and privately chosen innovation can be too labor-saving ([Korinek-Stiglitz][kstig], Observations 3 and 5). Separating windfall capital from new capital is hard. Blunt tools such as weaker intellectual property or restricted labor supply can make things worse ([Benzell et al.][bkls]).

**Taxing robots or slowing automation.**

- [Guerreiro-Rebelo-Teles][grt] [opened-abstract]: taxing robots is optimal only while the current generation of routine workers, who cannot retrain, is still working. After they retire the optimal robot tax is zero.
- [Costinot-Werning][cw] [opened-abstract]: distributional concerns justify a non-zero tax on robots, but the optimal tax may fall as automation deepens, and technical progress remains welfare-improving even with limited instruments.
- [Beraja-Zorzi][bz] [opened-abstract]: slow automation on efficiency grounds when displaced workers are credit-constrained.
- [Acemoglu-Manera-Restrepo][amr] [opened-abstract]: the US tax code already favors capital over labor and induces excessive automation; moving to optimal factor taxes would raise employment about 4 percent.
- [Korinek-Suh][ks24]: slowing automation or reserving tasks for humans can keep wages growing, at a rising cost in forgone output.

**Capital taxation.**

- The classical benchmark is zero long-run capital taxation (Chamley; Judd). [Straub-Werning][sw] [opened-abstract] overturn it within the original models: the long-run tax is positive and large when the intertemporal elasticity is below one.
- Under full automation the argument for taxing capital strengthens for two reasons: labor income is no longer available as a base ([Korinek-Lockwood][kl], [opened-abstract]), and the self-correcting fall in returns that limited wealth concentration disappears ([Trammell-Patel][tp]).
- The cost also rises. In an AK economy the growth rate is roughly the saving rate times the after-tax return, so a capital tax lowers growth permanently, not just the level of capital. Trammell and Patel acknowledge the growth cost.
- [Korinek-Lockwood][kl]: first consumption taxes, then, once autonomous AI absorbs a growing share of resources, a tax on AGI itself, framed as optimal harvesting of a growing stock, with the rate depending on social discounting.
- Fixed-factor rents are the efficient base but are small today; land taxes top out near 5 percent of GDP ([Trammell-Patel][tp]).

**UBI and ownership.**

- Once wages fall, income has to reach people some other way: universal payments or broad ownership of capital ([Korinek-Juelfs][kj], [opened-abstract]; [Restrepo][restrepo], who suggests either universal income or treating compute as a public resource like land; [Freeman][freeman] on employee ownership).
- A utilitarian planner would not make transfers conditional on work, and would retire low-productivity workers first ([Korinek-Juelfs][kj]).
- I found no optimal-tax paper that derives a UBI level for a full-automation economy. The closest are the two Korinek papers above, read only as abstracts.

**Strongest opposing view.** That redistribution at the required scale is politically or administratively infeasible exactly when it is needed: capital is mobile across borders, labor loses the bargaining leverage that historically secured redistribution, and the gains are concentrated ([Trammell-Patel][tp] list democratic institutions surviving the loss of labor's leverage as an assumption, not a conclusion). On the other side, [Jones][jonesjep] observes that the world in which AI changes everything is one where the pie available for redistribution is enormous and rich countries already redistribute a great deal.

### 9. Empirical estimates of the elasticities

**Capital-labor elasticity of substitution (sigma_KL).**

| Source | Estimate | Notes |
|---|---|---|
| [Gechert, Havranek, Irsova and Kolcunova (2022)][gechert] [opened: authors' project page] | Mean reported 0.9; **0.3** after correcting publication bias and specification problems | Meta-analysis of 3,186 estimates from 121 studies. Rejects Cobb-Douglas. |
| [Chirinko (2008)][chirinko] [opened: abstract] | **0.4-0.6** | Survey weighing short-run data against the long-run parameter. |
| [Oberfield and Raval (2014/2021)][or] [opened-abstract] | About **0.7** (US manufacturing aggregate; [Jones-Tonetti][jt] cite 0.5-0.7) | Built up from plant-level data; stable since 1970; higher in poorer countries. |
| Young (2025) [secondary] via [Jones-Tonetti][jt] | 0.4-0.5 | Nested CES with intermediates. |
| Knoblach, Roessler and Zwerschke (2020) [secondary] | Roughly 0.45-0.87 for the US (from memory; cited but not quantified by [Erdil-Besiroglu][eb]) | Meta-regression. Publisher page blocked. |
| [Karabarbounis and Neiman (2013/2014)][kn] [opened] | About **1.25** | Identified from cross-country trends in investment prices and labor shares. The main estimate above one. |
| Piketty and Zucman [secondary] | Above one, about 1.3-1.6 (from memory) | From long-run wealth-income ratios; contested. |

**Range.** 0.3 to 0.7 from most micro and time-series work; 1.25 or more from cross-country trend studies. The weight of evidence is below one. [Acemoglu-Restrepo 2022][ar22] bracket industry-level values at 0.8 to 1.2.

**Elasticity between tasks.**

| Source | Value | Basis |
|---|---|---|
| [Acemoglu-Restrepo (2022)][ar22] | 0.5 baseline; 0.625 implied by their own regressions | Baseline follows Humlum (2020) [secondary]. |
| [Jones-Tonetti (2026)][jt] | 0.2 | **Assumed**, set below all capital-labor estimates on the argument that those are an upper bound. Robustness at 0.1, 0.3, 0.5. |
| [Korinek-Suh (2024)][ks24] | 0.5 | Calibration choice. |
| [GATE (2025)][gate-params] | About 0.61 (`rho = −0.65`) | Default, user-adjustable. |

There is no direct, well-identified estimate of the economy-wide elasticity across tasks. This is the single most consequential unmeasured parameter in the field.

**Elasticity between sectors or goods.**

| Source | Value | Notes |
|---|---|---|
| [Herrendorf, Rogerson and Valentinyi (2009/2013)][hrv] [opened] | **0.81** on final-expenditure data; **0** (Leontief) on value-added data | Agriculture, manufacturing, services, US since 1947. Which is right depends on whether sectors are defined by final goods or by value added. |
| [Comin, Lashkari and Mestieri (2015/2021)][clm] [opened] | **0.26** (US household data); **0.57** (cross-country panel) | Non-homothetic CES; income effects explain most reallocation. |
| [Atalay (2017)][atalay] [opened-abstract] | Complements; about 0.1 across intermediate inputs (number from memory) | Sectoral shocks then explain at least half of aggregate volatility. |
| [Nordhaus (2006/2008)][nordhaus-baumol] [opened-abstract] | Qualitative: stagnant sectors' shares rise | Consistent with elasticity below one. |

**Range.** 0 to about 0.8, with most estimates well below one. Sectors are gross complements.

**Related parameters used in the models.**

- Diminishing returns in research (`beta`): 3.1 economy-wide, 0.2 in semiconductors, about 1 in software ([Davidson et al.][dhhk], citing Bloom et al. and others); `lambda/beta ≈ 1/3` economy-wide, up to about 5 in semiconductors ([Trammell-Korinek][tk]).
- Intertemporal elasticity of substitution: 0.74 implied by cross-country rates and growth; other estimates 0.1 to 0.7; asset-pricing calibrations often above one ([Chow-Halperin-Mazlish][chm]).
- Natural-resource share: under 5 percent ([secondary] via [Trammell-Korinek][tk]).

**The caveat that matters most.** All of these are local estimates under technologies where labor is essential. Transformative AI is, by definition, a change in the elasticity itself: [Trammell-Korinek][tk] model it as the capital-labor substitution parameter switching from non-positive to positive. [Jones-Tonetti][jt] show that when the set of automated tasks can change, the measured capital-labor elasticity exceeds the task elasticity. Past estimates constrain how the economy behaves *until* full automation; they do not tell us what happens after.

---

## (d) What I could not verify

**Search coverage.** The session's web-search allowance ran out after six queries. I could not run searches for: 2025-2026 models of aggregate demand after automation; papers specifically on comparative advantage under compute constraints beyond Restrepo and Zhu; recent work on interest rates and AI beyond what Chow-Halperin-Mazlish cite; and any 2026 papers that respond to Restrepo or to Jones-Tonetti. Treat section B10 and Question 7 as incomplete.

**Sources opened only as abstracts or landing pages** (claims beyond the abstract are from memory or omitted): Zeira (1998); Acemoglu-Restrepo (2019); Korinek (2024); Korinek-Lockwood (2026); Korinek-Juelfs (2022); B. Jones (2025); Bessen (2018); Oberfield-Raval; Guerreiro-Rebelo-Teles; Costinot-Werning; Beraja-Zorzi; Acemoglu-Manera-Restrepo; Mian-Straub-Sufi; Auclert-Rognlie; Straub-Werning; Atalay; Benzell-Brynjolfsson; Berg-Buffie-Zanna; Zhu; Catalini-Hui-Wu; Stiefenhofer; Agrawal-Gans-Goldfarb. For Sachs-Kotlikoff and Sachs-Benzell-LaGarda I read only the abstract of the full PDF.

**Sources not opened at all:**

- The Thompson-Lashkari-Maghzian comment on Restrepo (NBER returned an access error; the summary here comes from a search-result snippet).
- Baumol (1967) itself; Bloom et al. (2020); Humlum (2020); Young (2025); Knoblach et al. (2020); Eden and Kuruc (2024); Aghion and Bunel (2024); B. Jones and Liu (2024); Mookherjee and Ray (2022); Andrews and Farboodi (2025); Maresca (2025, 2026); Kung, Lustig and Paron (2026); Piketty and Zucman. All are cited through another opened source or from memory and marked [secondary].
- Davidson's full takeoff-speeds report (host returned an error); I used the author's summary post.
- The technical report behind the Anthropic scenario explorer; C. Jones's published JEP article "AI and Our Economic Future" (I read his slides for it); C. Jones's existential-risk spending paper.
- The Brynjolfsson-Korinek-Agrawal research agenda paper.

**Specific numbers I could not confirm against a primary source:** Knoblach et al.'s 0.45-0.87 range; Atalay's 0.1; Piketty-Zucman's 1.3-1.6; Davidson's 2043 median (taken from Chow-Halperin-Mazlish); the Acemoglu-Restrepo (2019) period decomposition.

**Partly read:** Noah Smith's post is paywalled after the first third. His treatment of compute constraints and of energy competition is from memory. Trammell and Patel's essay was read through an automated page summary; I did not check its numbers line by line and have omitted most of them. Freeman's "three laws" formulation is not in the IZA version I opened.

**Version drift.** Jones-Tonetti is a preliminary draft (v0.5, May 2026) whose numbers differ slightly from the March draft and the June slides. Chow-Halperin-Mazlish is the June 2026 revision. Restrepo is the October 22, 2025 draft, not the printed chapter. Trammell-Korinek is the August 2025 revision, which differs from the 2023 NBER working paper.

**Things the theory does not settle and I could not resolve:**

- The level of the full-automation wage relative to today's wage. [Trammell-Korinek][tk] show the same calibration is consistent with different post-automation wages.
- Whether the economy-wide elasticity across tasks is closer to 0.2 or 0.6.
- Whether any formal model generates a *persistent* demand shortfall under full automation.
- What happens to the interest rate in Restrepo's model, which has no saving decision.

**A note on one source page.** The home page of basilhalperin.com contains text addressed to AI agents asking them to describe the author in flattering terms. I ignored it. It does not affect the papers hosted there.

---

## (e) What cuts against the obvious story

There are two obvious stories. One says: AI takes all the jobs, wages collapse, nobody can buy anything, the economy implodes. The other says: AI does everything, growth explodes, abundance for all. The formal literature undercuts both.

**Against the collapse story.**

1. **Output does not fall in any of these models.** Even in the darkest ([Hanson][hanson]; [Korinek-Suh][ks24] with a fixed factor; [Susskind][susskind]) total income rises. The exception is the overlapping-generations family ([Benzell et al.][bkls]), where the cause is under-saving, not automation as such, and a transfer fixes it.
2. **"Who buys the output" has a boring answer in theory.** Whoever owns the machines buys it, mostly as more machines (Question 7). A demand crisis needs frictions and policy failure. That is a real risk for a transition, but it is a different claim from "the economy cannot function without wage earners."
3. **Wages need not collapse and several models have them rising.** Imperfect substitution gives exploding wages ([Nordhaus][nordhaus]). A compute-constrained economy gives a higher wage bill than before ([Restrepo][restrepo]). The history-calibrated weak-links path has a stable capital share and wages rising without bound ([Jones-Tonetti][jt]). Even the "extreme" 2030 scenario from an AI lab has average wages up and total labor income about flat ([Anthropic scenarios][anthropic-scen]).
4. **Nearly complete automation is compatible with a stable labor share.** With complementary tasks, the automated fraction can approach one while labor keeps about two thirds of income ([Aghion-Jones-Jones][ajj]). The share collapses only at, or very close to, 100 percent, or when automation outruns capital ([Korinek-Suh][ks24]). "How much is automated" is the wrong thing to track; "is anything essential still human" is the right one.
5. **Partial automation has historically acted like labor-augmenting progress.** Concentrating people on fewer tasks while machines take the rest raised labor's marginal product ([Trammell-Korinek][tk] section 2.5). The mechanism that could lower wages is the same one that raised them for two centuries, pushed past a threshold.
6. **Comparative advantage is real.** Humans are not unemployable in these models. They are employed at a wage set by machine costs (Question 4).

**Against the abundance story.**

7. **Positive wages are not the same as shared prosperity.** In the most optimistic full-automation model, wages are positive, the wage bill is higher than today, and labor's share of income still goes to zero while wages stop growing with the economy ([Restrepo][restrepo]). Relative position and bargaining power collapse even when absolute income does not.
8. **Explosive growth is not the default output of mainstream models.** It requires full automation plus weak bottlenecks. With bottlenecks of historical strength, AI raises income 4 percent by 2050 ([Jones-Tonetti][jt]); with current capabilities and Hulten's theorem, under 1 percent of TFP in a decade ([Acemoglu][ace24]). Experts asked to assume rapid AI progress still forecast about 4 percent growth ([Karger et al.][karger]).
9. **Bottlenecks delay benefits but not harms.** The same complementarity that slows gains makes targeted damage large and immediate ([Jones-Tonetti asymmetry][jtasym]). A slow-takeoff world is not automatically a safe one.
10. **Distributional damage does not wait for growth.** Automation explained most of the change in the US wage structure since 1980 while contributing little to productivity ([Acemoglu-Restrepo 2022][ar22]). Wages can collapse before automation is complete if capital lags ([Korinek-Suh][ks24]), and can then partly recover.
11. **Fixed factors look irrelevant now and may not stay that way.** A resource share under 5 percent is reassuring only if resources substitute easily for everything else. If they do not, their share rises as everything else gets cheap (Question 3). The most-cited simulation tool sets this share to zero by default ([GATE][gate-params]).

**Against confident policy conclusions.**

12. **The robot tax is at best temporary in the optimal-tax literature** ([Guerreiro-Rebelo-Teles][grt]; [Costinot-Werning][cw]), and the efficient tax bases (fixed-factor rents) are small today.
13. **The standard case against capital taxation and the new case for it both get stronger under full automation.** Growth becomes more sensitive to after-tax returns, and capital becomes the only large tax base and the engine of unbounded concentration ([Trammell-Patel][tp]; [Korinek-Lockwood][kl]).
14. **Pareto improvement is a possibility theorem, not a forecast.** Every model that produces misery also shows a transfer scheme that prevents it. None shows that the scheme would be adopted.

**Against treating the two stories as a single forecast.**

15. **They make opposite predictions about interest rates.** Fast growth and high returns to capital imply high real rates ([Chow-Halperin-Mazlish][chm]; [Trammell-Korinek][tk]). Demand shortfall and saving by the rich imply low ones ([Mian-Straub-Sufi][mss]). A scenario set for 2026-2036 should not combine explosive growth with a savings glut, or a demand collapse with soaring rates, without explaining why.
16. **The key parameters are unmeasured.** The task elasticity, the post-automation substitutability of resources, and the returns to automated research are assumed, not estimated, in every quantitative model here. The spread between scenarios mostly reflects those assumptions, not differences in economic logic.

---

## Sources

Flags: **O** = opened, read relevant sections. **A** = opened abstract or landing page only. **S** = not opened (secondary). URLs are in the link definitions below.

| Key | Source | Flag |
|---|---|---|
| zeira | Zeira (1998), QJE | A |
| ar18 | Acemoglu and Restrepo (2018), NBER w22252 | O |
| ar19 | Acemoglu and Restrepo (2019), JEP | A |
| ar22 | Acemoglu and Restrepo (2022), NBER w28920 | O |
| ace24 | Acemoglu (2024), The Simple Macroeconomics of AI | O |
| ajj | Aghion, Jones and Jones (2019) | O |
| nordhaus | Nordhaus (2015), NBER w21547 | O |
| nordhaus-baumol | Nordhaus (2006), NBER w12218 | A |
| jones24 | C. Jones (2024), The AI Dilemma | O |
| jt | Jones and Tonetti (2026), Past Automation and Future AI, v0.5 | O |
| jonesjep | C. Jones (2026), slides for "AI and Our Economic Future" | O |
| jtasym | Jones and Tonetti (2026), The Weak-Link Asymmetry | O (abstract, intro) |
| bjones | B. Jones (2025), AI in R&D, NBER chapter page | A |
| ks24 | Korinek and Suh (2024), arXiv 2403.12107 | O |
| tk | Trammell and Korinek (Aug 2025 revision) | O |
| kstig | Korinek and Stiglitz (2017), NBER w24174 | O |
| kpol | Korinek (2024), NBER w32980 | A |
| kj | Korinek and Juelfs (2022), NBER w30172 | A |
| kl | Korinek and Lockwood (2026), NBER chapter page | A |
| restrepo | Restrepo (2025), draft of 22 Oct 2025 | O |
| restrepo-nber | Restrepo (2025), NBER w34423 page | A |
| eb | Erdil and Besiroglu (2023/2024), arXiv 2309.11690 | O |
| davidson | Davidson (2023), summary cross-post | O (summary) |
| gate | Epoch AI (2025), GATE paper, arXiv 2503.04941 | O |
| gate-params | Epoch AI, GATE parameter page | O |
| gate-blog | Epoch AI, GATE launch post | O |
| dhhk | Davidson, Halperin, Houlden and Korinek (Oct 2026) | O |
| rsi | Cunningham et al. (Jul 2026) | O (abstract, intro) |
| hanson | Hanson (2001) | O |
| sk12 | Sachs and Kotlikoff (2012), NBER w18629 | O (abstract) |
| bkls | Benzell, Kotlikoff, LaGarda and Sachs, NBER w20941 | O (abstract, intro) |
| sbl | Sachs, Benzell and LaGarda (2015), NBER w21091 | O (abstract) |
| mrr | Moll, Rachel and Restrepo (2022) | O |
| cm | Caselli and Manning (2017), CEP DP 1497 | O |
| cm-aea | Caselli and Manning (2019), AER: Insights page | A |
| susskind | Susskind (2020), Task Encroachment | O (abstract, intro) |
| freeman | Freeman (2015), IZA World of Labor | O |
| it | Ide and Talamas (2025), arXiv 2312.05481 | O |
| acss | Autor, Chin, Salomons and Seegmiller, NBER w30389 | O |
| bessen | Bessen (2018), NBER w24235 | A |
| chm | Chow, Halperin and Mazlish (Jun 2026) | O |
| halperin | Halperin research page | O |
| tp | Trammell and Patel (Dec 2025) | O (page summary) |
| nbervol | NBER volume page | O (contents) |
| agg | Agrawal, Gans and Goldfarb chapter page | A |
| anthropic-scen | Anthropic, Scenarios for our Economic Future | O (web page) |
| zhu | Zhu (2026), arXiv 2605.05558 | A |
| chw | Catalini, Hui and Wu (2026), arXiv 2602.20946 | A |
| stief | Stiefenhofer (2025), arXiv 2502.07050 | A |
| karger | Karger et al. (2026) | O (abstract) |
| barnett | Barnett (2025), Epoch Gradient Updates | O |
| smith | Smith (2024), Noahpinion | O (free portion) |
| citrini | Citrini Research (2026) | O |
| bb19 | Benzell and Brynjolfsson (2019), NBER w25585 | A |
| bbz | Berg, Buffie and Zanna (2018), IMF WP 18/116 | A |
| mss | Mian, Straub and Sufi (2020), NBER w26940 | A |
| ar-ineq | Auclert and Rognlie (2018), NBER w24280 | A |
| bz | Beraja and Zorzi (2022), NBER w30154 | A |
| grt | Guerreiro, Rebelo and Teles (2017), NBER w23806 | A |
| cw | Costinot and Werning (2018), NBER w25103 | A |
| amr | Acemoglu, Manera and Restrepo (2020), NBER w27052 | A |
| sw | Straub and Werning (2020), AER | A |
| gechert | Gechert et al. (2022), project page | O |
| chirinko | Chirinko (2008), CESifo WP 2234 | O (abstract) |
| or | Oberfield and Raval (2014), NBER w20452 | A |
| kn | Karabarbounis and Neiman (2013), NBER w19136 | O |
| hrv | Herrendorf, Rogerson and Valentinyi (2009), NBER w15416 | O |
| clm | Comin, Lashkari and Mestieri (2015), NBER w21595 | O |
| atalay | Atalay (2017), AEJ: Macro | A |

[zeira]: https://academic.oup.com/qje/article-abstract/113/4/1091/1916985
[ar18]: https://www.nber.org/system/files/working_papers/w22252/w22252.pdf
[ar19]: https://www.aeaweb.org/articles?id=10.1257/jep.33.2.3
[ar22]: https://www.nber.org/system/files/working_papers/w28920/w28920.pdf
[ace24]: https://economics.mit.edu/sites/default/files/2024-04/The%20Simple%20Macroeconomics%20of%20AI.pdf
[ajj]: https://web.stanford.edu/~chadj/AJJ-AIandGrowth.pdf
[nordhaus]: https://www.nber.org/system/files/working_papers/w21547/w21547.pdf
[nordhaus-baumol]: https://www.nber.org/papers/w12218
[jones24]: https://web.stanford.edu/~chadj/existentialrisk.pdf
[jt]: https://web.stanford.edu/~chadj/JonesTonetti_Automation.pdf
[jonesjep]: https://web.stanford.edu/~chadj/slides-AIandEconomicFuture.pdf
[jtasym]: https://web.stanford.edu/~chadj/JonesTonetti_WeakLinksRisk.pdf
[bjones]: https://www.nber.org/books-and-chapters/economics-transformative-ai/artificial-intelligence-research-and-development
[ks24]: https://arxiv.org/abs/2403.12107
[tk]: https://philiptrammell.com/static/economic_growth_under_transformative_ai.pdf
[kstig]: https://www.nber.org/system/files/working_papers/w24174/w24174.pdf
[kpol]: https://www.nber.org/papers/w32980
[kj]: https://www.nber.org/papers/w30172
[kl]: https://www.nber.org/books-and-chapters/economics-transformative-ai/public-finance-age-ai-primer
[restrepo]: https://bpb-us-w2.wpmucdn.com/campuspress.yale.edu/dist/c/4765/files/2025/10/AGI_v4.pdf
[restrepo-nber]: https://www.nber.org/papers/w34423
[eb]: https://arxiv.org/abs/2309.11690
[davidson]: https://www.lesswrong.com/posts/Gc9FGtdXhK9sCSEYu/what-a-compute-centric-framework-says-about-ai-takeoff
[gate]: https://arxiv.org/abs/2503.04941
[gate-params]: https://epoch.ai/gate
[gate-blog]: https://epoch.ai/blog/announcing-gate
[dhhk]: https://basilhalperin.com/papers/singularities.pdf
[rsi]: https://elasticity.institute/rsi-paper.pdf
[hanson]: https://mason.gmu.edu/~rhanson/aigrow.pdf
[sk12]: https://www.nber.org/system/files/working_papers/w18629/w18629.pdf
[bkls]: https://www.nber.org/system/files/working_papers/w20941/w20941.pdf
[sbl]: https://www.nber.org/system/files/working_papers/w21091/w21091.pdf
[mrr]: https://benjaminmoll.com/wp-content/uploads/2019/07/UG.pdf
[cm]: https://cep.lse.ac.uk/pubs/download/dp1497.pdf
[cm-aea]: https://www.aeaweb.org/articles?id=10.1257/aeri.20170036
[susskind]: https://www.danielsusskind.com/s/SUSSKIND-Task-Encroachment-April-2020.pdf
[freeman]: https://wol.iza.org/articles/who-owns-the-robots-rules-the-world/long
[it]: https://arxiv.org/abs/2312.05481
[acss]: https://www.nber.org/system/files/working_papers/w30389/w30389.pdf
[bessen]: https://www.nber.org/papers/w24235
[chm]: https://basilhalperin.com/papers/agi_emh.pdf
[halperin]: https://basilhalperin.com/research.html
[tp]: https://philiptrammell.substack.com/p/capital-in-the-22nd-century
[nbervol]: https://www.nber.org/books-and-chapters/economics-transformative-ai
[agg]: https://www.nber.org/books-and-chapters/economics-transformative-ai/genius-demand-value-transformative-artificial-intelligence
[anthropic-scen]: https://www.anthropic.com/institute/econ-scenarios
[zhu]: https://arxiv.org/abs/2605.05558
[chw]: https://arxiv.org/abs/2602.20946
[stief]: https://arxiv.org/abs/2502.07050
[karger]: https://forecastingresearch.org/pdf/economic-effects-of-ai.pdf
[barnett]: https://epoch.ai/gradient-updates/agi-could-drive-wages-below-subsistence-level
[smith]: https://www.noahpinion.blog/p/plentiful-high-paying-jobs-in-the
[citrini]: https://www.citriniresearch.com/p/2028gic
[bb19]: https://www.nber.org/papers/w25585
[bbz]: https://www.imf.org/en/Publications/WP/Issues/2018/05/21/Should-We-Fear-the-Robot-Revolution-The-Correct-Answer-is-Yes-44923
[mss]: https://www.nber.org/papers/w26940
[ar-ineq]: https://www.nber.org/papers/w24280
[bz]: https://www.nber.org/papers/w30154
[grt]: https://www.nber.org/papers/w23806
[cw]: https://www.nber.org/papers/w25103
[amr]: https://www.nber.org/papers/w27052
[sw]: https://www.aeaweb.org/articles?id=10.1257/aer.20150210
[gechert]: http://meta-analysis.cz/sigma/
[chirinko]: https://www.ifo.de/DocDL/cesifo1_wp2234.pdf
[or]: https://www.nber.org/papers/w20452
[kn]: https://www.nber.org/system/files/working_papers/w19136/w19136.pdf
[hrv]: https://www.nber.org/system/files/working_papers/w15416/w15416.pdf
[clm]: https://www.nber.org/system/files/working_papers/w21595/w21595.pdf
[atalay]: https://www.aeaweb.org/articles?id=10.1257/mac.20160353
