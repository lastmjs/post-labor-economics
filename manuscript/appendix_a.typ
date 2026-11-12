#import "template.typ": *

= Appendix A: The models <app-models>

The main text argues in words. This appendix gives the mathematics behind the statements about wages, so that a reader who wants to check the logic can do so. Everything here is implemented in `models/economy.py` in the repository, and the closed-form solutions are tested there against a numerical optimizer.

== The task economy

There is one final good. It is produced from a continuum of tasks indexed by $i$ between 0 and 1:

$ Y = A dot X, quad X = (integral_0^1 y(i)^rho dif i)^(1 slash rho), quad rho = (sigma - 1) / sigma. $

Here $A$ is the general level of technology and $sigma$ is the elasticity of substitution between tasks. When $sigma < 1$ the tasks are complements: all are needed, and a shortage of one cannot be made up by plenty of another (@a-complements). The simulations use $sigma = 0.5$.

A share $I$ of the tasks can be done by machines. In those tasks machines and people are perfect substitutes, and one unit of machine capital does the work of $gamma$ people. The remaining tasks can be done only by people:

$ y(i) = gamma k(i) + ell(i) quad "for" i <= I, wide y(i) = ell(i) quad "for" i > I. $

The economy has $K$ units of machine capital and $L$ people. Markets are competitive, so the allocation of machines and people to tasks is the one that maximizes output, and each input is paid its marginal product.

== Two regimes

Let $m = gamma K slash I$ be the amount of machine work per automated task, and $h = L slash (1 - I)$ the amount of human work per non-automated task if all the people work there.

*Regime 1: machines are plentiful ($m >= h$).* People work only in the tasks that machines cannot do. Then

$ X = (I m^rho + (1 - I) h^rho)^(1 slash rho), $

and the wage and the income of a unit of machine capital are

$ w = A (X / h)^(1 slash sigma), wide R = A gamma (X / m)^(1 slash sigma). $

The first expression is @p-bottleneck in a formula. The wage is the technology level $A$ multiplied by a _scarcity premium_, $(X slash h)^(1 slash sigma)$, which is larger the scarcer human-only tasks are relative to the average task. As machines accumulate, $m$ and therefore $X$ grow while $h$ does not, and the premium grows without limit. With $sigma < 1$ and unlimited machines, output is capped by the human tasks at $Y = A L (1 - I)^(-1 slash (1 - sigma))$, and the whole of it is paid as wages.

*Regime 2: machines are scarce, or everything is automated ($m < h$ or $I = 1$).* People also work in automated tasks, alongside machines. Every task then receives the same amount of work, $gamma K + L$, and

$ Y = A (gamma K + L), wide w = A, wide R = A gamma. $

The scarcity premium is gone. An hour of human work is paid exactly what the equivalent amount of machine capital earns: $w = R slash gamma$. This is @p-ceiling holding with equality in every task.

== The cliff

Hold everything fixed except $I$ and let machines be plentiful. For any $I < 1$ the economy is in Regime 1 and the wage is $A$ times a premium that can be very large. At $I = 1$ the economy is in Regime 2 and the wage is $A$. That discontinuity in the limit is @p-cliff. In a simulation where $I$ rises smoothly, the wage first rises, then falls as the people crowd into a vanishing set of tasks ($h$ grows as $1 - I$ shrinks, until $h$ overtakes $m$), and settles at $A$.

In @fig-cliff the economy starts with $I = 0.5$ and a labor share of 58 percent, which implies a starting wage of $1.35 A$. The automated share rises along a smooth curve from year 4 to year 30. Machine productivity $gamma$ grows 5 percent a year. Owners reinvest a constant share of output, chosen so that without automation or better machines the economy would stand still; every movement in the figure is therefore caused by automation. Capital depreciates at 6 percent a year.

The level at which the wage settles, $A$ against a starting wage of $1.35 A$, is the reason the right-hand panel ends 26 percent below its start. It reflects one modeling choice that should be stated plainly: the general level of technology $A$ is held constant. If AI also raised $A$, the settled wage would rise in proportion. The next section explains why this does not rescue the wage in the long run.

== A fixed factor, and the long-run wage

Now add an input that cannot be accumulated: land, or more broadly natural resources, in fixed quantity $N$. Let final output be

$ Y = A X^alpha N^(1 - alpha), $

and consider full automation, so $X = gamma K + L$. The marginal products are

$ w = alpha Y / X, wide R = gamma w. $

Machines are built as long as one more unit of machine capital earns more than it costs to hold. If a unit of capital costs one unit of output to build, depreciates at rate $delta$, and investors require a return $r$, accumulation continues until $R = r + delta$. At that point

$ w^* = (r + delta) / gamma. $

This is @p-at-cost and the last objection of @ch-wages in a formula. In the long run the wage equals the cost of holding the amount of machine capital that does one person's work. It does not depend on the level of technology $A$ or on the amount of land $N$. A higher $A$ or more land raises the number of machines the economy supports and raises the rent paid to land, which is $(1 - alpha) Y$, and leaves the wage where it was. A higher $gamma$, meaning better machines, _lowers_ the wage.

This is Ricardo's and Malthus's result about a population that multiplies on a fixed base of land, with machines as the population. Its force in practice depends on how far the economy is from that long-run point. With a small land share and easy substitution, machines must multiply enormously before the limit binds, and during that long approach the wage is $alpha Y slash X$, which can be high. This is the formal content of the objection that "machines will stay scarce." The reply in the main text is quantitative: for mental work, $gamma$ is already so large relative to the cost of a chip that $w^*$ is far below a living wage at any plausible rental price of chips.

== The identity for human-required work

Suppose a fraction $h$ of all spending goes to human-required work (@d-human-required) and that this is the only work paid for. Total income equals total spending, $Y$. Wages are $h Y$, and so the wage share is $h$. If the people who do this work number $n$, the average wage is $h Y slash n$. This is @p-residual-share. The wage level rises with the size of the economy and with the taste for human service, and falls with the number competing to provide it.

== What these models leave out

They have one kind of worker, so they cannot show inequality among workers, though the text discusses it. They assume workers move between tasks without cost or delay, which makes the transition look smoother than it would be. They have no money, debt or unemployment, so they cannot show the slump of @p-slump. And they treat the automated share $I$ as given from outside. They are meant to do one job, which is to show that the wage results follow from standard assumptions and to make clear which assumption each result depends on.
