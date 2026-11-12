#import "template.typ": *

= The models <app-models>

The main text argues in words. This appendix gives the mathematics behind the statements about wages, so that a reader who wants to check the logic can do so. Everything here is implemented in `models/economy.py` in the repository, and the closed-form solutions are tested there against a numerical optimizer.

== The task economy

There is one final good. It is produced from a continuum of tasks indexed by $i$ between 0 and 1:

$ Y = A dot X, quad X = (integral_0^1 y(i)^rho dif i)^(1 slash rho), quad rho = (sigma - 1) / sigma. $

Here $A$ is the general level of technology and $sigma$ is the elasticity of substitution between tasks. When $sigma < 1$ the tasks are complements: all are needed, and a shortage of one cannot be made up by plenty of another (@a-complements). The simulations use $sigma = 0.5$.

A share $theta$ of the tasks can be done by machines (the code calls it `I`). In those tasks machines and people are perfect substitutes, and one unit of machine capital does the work of $gamma$ people. The remaining tasks can be done only by people:

$ y(i) = gamma k(i) + ell(i) quad "for" i <= theta, wide y(i) = ell(i) quad "for" i > theta. $

The economy has $K$ units of machine capital and $L$ people. Markets are competitive, so the allocation of machines and people to tasks is the one that maximizes output, and each input is paid its marginal product.

== Two regimes

Let $m = gamma K slash theta$ be the amount of machine work per automated task, and $q = L slash (1 - theta)$ the amount of human work per non-automated task if all the people work there.

*Regime 1: machines are plentiful ($m >= q$).* People work only in the tasks that machines cannot do. Then

$ X = (theta m^rho + (1 - theta) q^rho)^(1 slash rho), $

and the wage and the income of a unit of machine capital are

$ w = A (X / q)^(1 slash sigma), wide R = A gamma (X / m)^(1 slash sigma). $

The first expression is @p-bottleneck in a formula. The wage is the technology level $A$ multiplied by a _scarcity premium_, $(X slash q)^(1 slash sigma)$, which is larger the scarcer human-only tasks are relative to the average task. As machines accumulate, $m$ and therefore $X$ grow while $q$ does not, and the premium grows. With $sigma < 1$ and unlimited machines, output is capped by the human tasks at $Y = A L (1 - theta)^(-1 slash (1 - sigma))$, and the whole of it is paid as wages.

*Regime 2: machines are scarce, or everything is automated ($m < q$ or $theta = 1$).* People also work in automated tasks, alongside machines. Every task then receives the same amount of work, $gamma K + L$, and

$ Y = A (gamma K + L), wide w = A, wide R = A gamma. $

The scarcity premium is gone. An hour of human work is paid exactly what the equivalent amount of machine capital earns: $w = R slash gamma$. This is @p-ceiling holding with equality in every task.

== The race

Hold everything fixed except $theta$ and let machines be plentiful. For any $theta < 1$ the economy is in Regime 1 and the wage is $A$ times a premium that can be very large. At $theta = 1$ the economy is in Regime 2 and the wage is $A$. That is the second half of @p-cliff. Along the way two things pull against each other. Capital accumulates and machines improve, so $m$ rises, which raises the premium. And $theta$ rises, so people crowd into fewer tasks and $q$ rises, which lowers it. If $q$ overtakes $m$ the economy drops into Regime 2 and the wage is $A$, even though some tasks are still done only by people.

In @fig-cliff the economy starts with $theta = 0.5$ and a labor share of 58 percent, which implies a starting wage of $1.35 A$. The automated share then follows a smooth S-shaped curve that begins to rise in year 4 and would reach 1 in year 30. The two worlds in the figure share that curve. In one it stops when it reaches 0.9, and in the other it runs to 1. Each unit of machine capital does 5 percent more work every year. Owners reinvest a constant share of output in new machine capital, 5, 10 or 20 percent in the three runs, and capital wears out at 6 percent a year. The general level of technology $A$ is held constant.

#figure(
  datatable(
    columns: (1.3fr, 1fr, 1.2fr, 1.2fr, 1fr),
    align: (left, right, right, right, right),
    header: ([Share of output reinvested], [Peak wage (start = 1)], [Automated share at the peak], [Automated share when the wage reaches $A$], [Final wage if automation stops at 90%]),
    [5 percent], [1.8], [72%], [95%], [34],
    [10 percent], [6.6], [93%], [above 99%], [57],
    [20 percent], [48], [98%], [100%], [66],
  ),
  caption: [Results of the runs drawn in @fig-cliff. In every run that reaches full automation the wage ends at $A$, which is 0.74 of its starting level.],
)

The level at which the wage settles, $A$ against a starting wage of $1.35 A$, is the reason the right-hand panel ends 26 percent below its start. That number is a consequence of holding $A$ constant and should not be read as a forecast. If $A$ grew 1 percent a year, the wage after forty years would be about a tenth above its starting level, and at 2 percent a year it would never fall below it. What the figure establishes is the shape: the scarcity premium, which had multiplied the wage many times over, disappears, and the wage is left tied to the productivity of machines and no longer to the size of the economy. The next section shows why, once a fixed factor is allowed for, growth in $A$ does not hold the wage up in the long run either.

== A fixed factor, and the long-run wage

Now add an input that cannot be accumulated: land, or more broadly natural resources, in fixed quantity $N$. Let final output be

$ Y = A X^alpha N^(1 - alpha), $

and consider full automation ($theta = 1$), so $X = gamma K + L$. The marginal products are

$ w = alpha Y / X, wide R = gamma w. $

Machines are built as long as one more unit of machine capital earns more than it costs to hold. If a unit of capital costs one unit of output to build, depreciates at rate $delta$, and investors require a return $r$, accumulation continues until $R = r + delta$. At that point

$ w^* = (r + delta) / gamma. $

This is @p-at-cost and the last objection of @ch-wages in a formula. In the long run the wage equals the cost of holding the amount of machine capital that does one person's work. It does not depend on the level of technology $A$ or on the amount of land $N$. A higher $A$ or more land raises the number of machines the economy supports and raises the rent paid to land, which is $(1 - alpha) Y$, and leaves the wage where it was. A higher $gamma$, meaning better machines, _lowers_ the wage.

This is Ricardo's and Malthus's result about a population that multiplies on a fixed base of land, with machines as the population. Its force in practice depends on how far the economy is from that long-run point. With a small land share and easy substitution, machines must multiply enormously before the limit binds, and during that long approach the wage is $alpha Y slash X$, which can be high. This is the formal content of the objection that "machines will stay scarce." The reply in the main text is an empirical one (@h-upkeep): for mental work, $gamma$ is already so large relative to the cost of a chip that $w^*$ is far below a living wage at any plausible rental price of chips. For physical work the same is expected and has not yet been shown.

== The identity for human-required work

Suppose a fraction $h$ of all spending goes to human-required work (@d-human-required) and that this is the only work paid for. Total income equals total spending, $Y$. Wages are $h Y$, and so the wage share is $h$. If the people who do this work number $n$, the average wage is $h Y slash n$. This is @p-residual-share. The wage level rises with the size of the economy and with the taste for human service, and falls with the number competing to provide it.

== The scenario accounting

The scenarios of @ch-scenarios are run through a separate, simpler piece of bookkeeping, implemented in `models/scenarios.py`. Work is divided into three kinds, with their shares of American jobs and of American wages:

#figure(
  datatable(
    columns: (1fr, auto, auto),
    align: (left, right, right),
    header: ([Kind of work], [Share of jobs], [Share of wages]),
    [Screen-based: can be done entirely from home, which in practice means at a computer], [37%], [46%],
    [Physical: the nine mainly physical occupation groups], [42%], [29%],
    [In-person: the remainder, face-to-face and mixed], [21%], [25%],
  ),
  caption: [The three kinds of work in the scenario accounting. Sources: Dingel and Neiman (2020) for screen-based work; US Bureau of Labor Statistics, May 2025, for physical work.],
)

Each scenario is an assumption about the share of each kind of work that machines do in each year, in the sense defined in @ch-speed, drawn as an S-shaped curve from its 2026 level toward a ceiling. Write $M$ for the machine share of all work weighted by jobs and $M_w$ for the share weighted by wages. Three relations then give the outputs.

Hours of human work, relative to a path with no AI:
$ H = 1 - M (1 - a (1 - M)) + "jobs created by policy" - "recession". $
Here $a$ is the share of displaced hours that find other work while machines are still rare. It is an assumption, set at 0.85 in the central scenario and lower in the fast ones. Reabsorption fades as $M$ rises, because less and less work remains that machines cannot also do.

Output, relative to a trend of 1.9 percent a year:
$ Y = (1 + 1.6 M_w^2) dot e^(kappa C), $
where $C$ is the cumulative machine share of physical work and $kappa$ captures the extra growth that comes when machines can build machines. It is zero or small except in the takeoff scenario.

Labor's share of income:
$ s = 53.0% times H times (1 - 0.5 (1 - H)). $
This says that while people are still needed, pay per hour keeps pace with output per person, less a discount for slack in the labor market. It is Regime 1 of the task model, written as bookkeeping.

With $a = 0.85$ these relations roughly match the three scenarios for 2030 that Anthropic published in September 2026 with Korinek, Jones and coauthors @anthropic-scenarios-2026. Those authors describe their middle and upper cases as AI doing about half, and nearly all, of knowledge work. The level of about a fifth for their lowest case is my own assumption. The fit is close for output, where one coefficient was chosen to fit three points, and loose for labor's share, where the model overstates the fall in the two lower cases.

#figure(
  datatable(
    columns: (1.6fr, 1fr, 1fr, 1fr, 1fr),
    align: (left, right, right, right, right),
    header: ([AI share of screen-based work], [Output gain, here], [Output gain, published], [Labor share, here], [Labor share, published]),
    [About a fifth ("modest")], [1.4%], [1.6%], [−1.4], [−0.6],
    [About half ("substantial")], [8.5%], [8.3%], [−5.0], [−3.9],
    [Nearly all ("extreme")], [31.9%], [32.4%], [−13.9], [−14.8],
  ),
  caption: [The scenario accounting against the published scenarios it was fitted to. Changes in labor's share are in percentage points from a base of 60 percent, as in the published work.],
)

Everything beyond those levels of automation, and everything concerning physical work, is my extrapolation. The parameters of each scenario are listed in the code.

The accounting has one property that limits what it can show. Because pay per hour keeps pace with output per person, the total paid for work stays within a tenth of its no-AI path in every scenario and every year, and the pay of those still in work rises as their number falls: by about 9 percent against trend in The squeeze by 2036, by about 30 percent in Rentier drift, and nearly threefold in Takeoff. That is the behavior of an economy in which the remaining human tasks are a bottleneck. The published scenarios have the same property. It is a reasonable description of the first decade of the central scenario. It is not a description of an economy near the premise, where the wage ceiling of @p-ceiling binds, and for that reason the figures for labor's share in the two fast scenarios are upper limits. The accounting also has nothing to say about how pay is divided among workers, which is where much of the hardship in the scenarios lies.

== What these models leave out

They have one kind of worker, so they cannot show inequality among workers, though the text discusses it. They assume workers move between tasks without cost or delay, which makes the transition look smoother than it would be. They have no money, debt or unemployment, so they cannot show the slump of @p-slump. And they treat the automated share $theta$ as given from outside. They are meant to do one job, which is to show that the wage results follow from standard assumptions and to make clear which assumption each result depends on.
