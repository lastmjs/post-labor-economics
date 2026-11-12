#import "template.typ": *

= What happens to the price of work <ch-wages>

This chapter is the center of the argument. It takes the premise of @ch-premise, a machine that can do the work, and the rule about prices from @ch-economy, and derives what happens to wages. The derivation has four steps. Machines put a ceiling on the wage. The ceiling tends toward the cost of making and running the machine. While some tasks still need people, wages can rise, but when none do they fall to the ceiling. And the ceiling is lower than the cost of keeping a person.

== Step one: the ceiling

#proposition([The wage ceiling], from: [@a-substitution, @p-price, @d-machine-labor])[
  In any task that a machine can do as well as a person, no employer will pay a person more than it costs to have the machine do it. The price of the machine's work is a ceiling on the wage for that task.
] <p-ceiling>

This is @p-price with the word "input" replaced by "work." It needs no assumption about greed or about the intentions of any company. An employer who paid people more than the machine price for the same result would have higher costs than a competitor who did not, and would lose customers to that competitor (@a-substitution).

Return to the shirt economy of @ch-history. After the cutting machine arrived, a hundred workers sewed, and each earned about one shirt per hour of work. Now add a second invention.

#aside([The shirt economy, continued])[
  Someone invents a sewing machine that needs no operator. Building and running it uses up resources worth one fifth of a shirt for every shirt it sews.

  A human sewer still sews one shirt an hour, as well as ever. But a shirt's worth of sewing can now be bought from the machine for a fifth of a shirt, so nobody will pay a person more than that for it. The sewer's pay falls from one shirt an hour to *a fifth of a shirt an hour*, a cut of 80 percent.

  Meanwhile the economy can make as many shirts as it has machines. Output is no longer limited by its hundred workers at all.

  The first machine doubled the workers' pay. The second cut it by four fifths. They were the same kind of invention in the same economy. The only difference is that after the first machine there was still a task that only people could do, and after the second there was not.
]

== Step two: what sets the price of machine work

The ceiling is only as low as the price of machine work. So what determines that price?

#proposition([Machine work is supplied at cost], from: [@a-production, @a-substitution, @d-machine-labor])[
  Machine work is a manufactured product. Whenever its price is above the cost of producing it, including a normal return on the money invested, it pays to build more machines, and the extra supply pushes the price down. Over time the price of machine work tends toward its cost of production, and that cost falls as the technology improves.
] <p-at-cost>

This is the deepest difference between human work and machine work, and it is easy to miss. The number of people is, for economic purposes, fixed. When demand for work rises, the supply of people cannot respond, so the wage rises instead. That is the entire reason economic growth has made workers richer: capital and knowledge piled up, people did not, and the scarce input was paid more.

Machine work has no such limit. If demand for it rises, factories make more chips and more robots. Supply responds in quantity, and price returns to cost. @fig-supply shows the two cases in one picture. Before, the supply of work is a vertical line at the number of people, and the wage is wherever demand crosses it. After, anyone can add to the supply of work at machine cost, so the supply of work is a horizontal line, and the wage is wherever that line sits.

#plot("../figures/supply_of_work.svg", [
  *A substitute turns the supply of work from a wall into a floor.* When only people can do the work, its price is set by how much work is wanted and how few people there are. When machines can do it, any amount of work is available at machine cost, and that cost becomes the price. As machine cost falls, the wage follows it down the demand curve while the amount of work done grows. The diagram is conceptual and has no units.
]) <fig-supply>

One qualification matters a great deal for timing. "Tends toward cost" is a statement about the long run. Building chip factories, power plants and robot plants takes years. While machine capacity is still short of what is wanted, machine work is priced by its scarcity, above its cost, and wages in the affected tasks can stay high. The speed at which wages fall is therefore set by the speed at which machine capacity can be built. @ch-two-transitions shows that this speed is very different for mental work and for physical work.

== Step three: before the last task, and after

The first two steps apply task by task. A real economy has thousands of kinds of tasks, and machines do not learn them all on the same day. What happens along the way?

We already have the answer for the tasks machines cannot yet do. By @p-bottleneck, those tasks become the bottleneck, and the people who do them are paid more. So during a period of partial automation, two forces act on workers at once. Workers in automated tasks hit the ceiling (@p-ceiling). Workers in the remaining tasks gain from scarcity (@p-bottleneck), though they are also joined by everyone displaced from the automated tasks, which pulls their pay down again.

To see how these forces add up, I built the smallest model that contains all of them. It has many tasks that are complements, machines that can do a growing share of the tasks and that improve every year, people who move freely to wherever they are still needed, and owners who reinvest a constant share of income. It is a stripped-down version of the model that the economists Anton Korinek and Donghyun Suh published in 2024, and it reproduces their central result @korinek-suh-2024. Its equations and the checks on them are in #link(<app-models>)[Appendix A], and the code is in the repository. @fig-cliff shows two runs of the model. They are identical in every respect but one. In the first run, automation stops when machines can do 90 percent of tasks. In the second it goes on to 100 percent.

#plot("../figures/cliff.svg", [
  *The same economy with and without a last human task.* In both runs machines improve by 5 percent a year and the share of tasks they can do rises over 26 years. On the left the share stops at 90 percent: the wage stalls while displaced workers crowd into the remaining tasks, then climbs steeply once those tasks are the bottleneck for a much larger economy. On the right the share reaches 100 percent: the wage peaks about a third above its starting level and then falls to the machine price, 26 percent _below_ where it started, while output grows 46-fold. Model output; an illustration of the mechanism and not a forecast.
], source: [`models/fig_cliff.py`]) <fig-cliff>

#proposition([The cliff], from: [@p-bottleneck, @p-ceiling])[
  The effect of automation on wages changes sign between "nearly all tasks" and "all tasks." While any necessary task remains that only people can do, the people who do it can capture a large share of a growing economy. When no such task remains, that share disappears, and human work is worth what machine work costs.
] <p-cliff>

Three things follow from the cliff, and each will matter for the forecasts in Part IV.

*The statistics can look healthy until late.* On the right-hand side of @fig-cliff, wages _rise_ for the first eleven years of the transition. Anyone watching average wages in that period would conclude, correctly from the data and wrongly about the future, that automation was good for workers.

*The premium goes only to those who can do what is left.* The model assumes that every worker can move into the remaining tasks. In life, as the set of remaining tasks shrinks, it comes to need rarer abilities, credentials or positions. The bottleneck premium is then collected by fewer and fewer people, and the rest are in the right-hand panel even while the economy as a whole is still in the left-hand one. For an individual, the question that matters is whether there remains a necessary task that machines cannot do and that _this person_ can.

*"Almost everything" and "everything" are different worlds.* A forecast that machines will do 90 percent of today's tasks and a forecast that they will do all of them sound similar and have opposite implications for workers. Much of the disagreement among economists about AI comes down to this: the optimists expect that some necessary human task will always remain, and the pessimists accept the premise of this guide. Given their respective premises, both camps reason correctly.

== Step four: the ceiling is below the cost of living

Suppose, then, that the premise holds completely and there is no last task. Human work is paid the machine price, and the machine price tends to machine cost. How low is that?

The first three steps were logic, and every formal model of full automation agrees with them. This step is different. Economic theory does not say whether the machine price is high or low. That is a question of fact about engineering and costs, and it has to be answered with numbers.

#proposition([The upkeep comparison], from: [@p-at-cost, @d-machine-labor])[
  A machine that does the work of a person needs fewer resources to build and run than a person needs in order to live. For the mental tasks that machines can already perform, this is true today by a wide margin. For physical tasks it is true of the machine itself, and not yet of the machine together with the people who must still supervise it. The gap widens every year, because the cost of machines falls and the needs of a human body do not.
] <p-upkeep>

Here are the numbers in money, as they stood in late 2026 @bls-oews-2025 @bls-ecec-2026 @notes-ai @notes-robots.

An adult living alone at the federal poverty line in the United States has \$15,960 a year. Spread over a full-time working year of 2,080 hours, that is \$7.67 for every hour worked, and it buys a hard life. The average American employee is paid about \$33.50 an hour, and with benefits and payroll taxes costs an employer about \$47.

Now the machines. On tasks that AI agents can complete, the bill for the computing needed to do an hour of an expert's work is typically somewhere between twenty cents and five dollars. In one documented case, a piece of software that engineers judged to be between two and seventeen weeks of work was rebuilt by an agent for about \$150. The price of a fixed level of AI capability has been falling about tenfold a year @epoch-price-2026.

Robots are at an earlier stage. At the prices that one American maker of humanoid robots has filed with regulators, an hour of robot work costs between \$13 and \$55 today, which is more than the worker it replaces. Most of that is the price of an early product and the cost of the people who supervise it. The machine itself is not expensive to make: the accounts of the largest Chinese maker imply that a small humanoid costs about \$10,000 to build. A robot that cost \$30,000, lasted five years and worked sixteen hours a day would cost about a dollar per hour of work to own, plus a few cents of electricity.

Neither machine can yet do everything the person can. That is the premise, and whether it will come true is the subject of Part IV. The point here is narrower: _where_ a machine can do the work without supervision, the cost of its work is a fraction of what it costs to keep a person alive in the United States, let alone what a person is paid.

The same comparison can be made without money, in physical resources, and this version does not depend on any price. A person needs, at the very least, food, water, shelter and warmth, every hour of every day, whether working or not, for about twenty years before any useful work is done and for all the years after it stops. The energy flowing through the American economy on behalf of each resident is about 9,000 watts around the clock, which comes to roughly 94 kilowatt-hours behind every hour that an American works. An AI agent at the frontier uses two or three kilowatt-hours for an hour of work. A working humanoid robot uses less than half of one @notes-compute. The machine is the cheaper way to turn energy and materials into work, by a wide margin, for the same reason that the truck was a cheaper way than the horse to turn them into haulage.

Combine the four steps. The first three give a result that holds in every formal model of full automation that economists have written down.

#proposition([The wage stops carrying the output], from: [@p-ceiling, @p-at-cost, @p-cliff])[
  If machines can perform every task that people perform for pay, the wage for human work equals the price of machine work. It no longer rises as the economy grows, and the share of national income paid as wages tends toward zero. This happens while total output rises.
] <p-share-zero>

This alone is enough to break the wage system as a way of distributing output (@p-wage-system). Even if wages stayed exactly where they are today in what they can buy, an economy that grew tenfold with a constant wage would be paying its workers a tenth of the share they receive now, and the rest would go elsewhere.

Adding the fourth step gives the stronger result, which is the horse lemma (@p-horse) applied to people.

#proposition([Work stops paying for life], from: [@p-share-zero, @p-upkeep, @p-horse])[
  Because machine work costs less than it costs to support a person, the wage under full automation falls below what a person needs to live on. Selling work can then no longer be the way most people earn a living.
] <p-wages-fall>

I hold the first of these two propositions with near certainty, given the premise. I hold the second with less, perhaps four chances in five, because it depends on magnitudes that the last objection below disputes. The rest of the guide needs only the first.

Notice what neither proposition says. Neither says that there will be nothing for people to do, or that people will be forbidden to work. Anyone may still offer work at the machine price. In practice the result would be recorded mostly as people leaving the labor force, since minimum-wage laws forbid, and few people accept, work at a dollar or two an hour.

Nor does either say that the price of every kind of human work falls to the machine price. Where a buyer wants the work done _by a person_, and a machine is therefore not a substitute at all, @p-ceiling does not apply. @ch-residual measures how much that exception is worth.

== Seven objections

The conclusion is unwelcome, and there are well-known arguments against it. Each deserves its strongest statement.

#objection([Comparative advantage guarantees people a job])[
  David Ricardo showed in 1817 that even if Portugal makes both wine and cloth more efficiently than England, both countries gain when each specializes in what it does _relatively_ best. In the same way, even if machines are better than people at everything, machine capacity is limited, so machines should be used where their advantage is greatest and people will be employed in the rest. Some economists conclude that people will keep well-paid work however capable machines become.
]

The logic of comparative advantage is sound, and it guarantees less than it seems to. It shows that there will be _some_ wage at which it pays to employ a person. It does not show what that wage is. In Ricardo's own example the less productive country is the poorer one. What a person is paid for a task under comparative advantage is what it would cost to have the machine do that task, which is @p-ceiling again.

The argument also rests on an assumption that holds for countries and fails for machines. Portugal cannot be copied. Ricardo's theorem takes the quantity of each country's resources as fixed. Machine capacity is manufactured (@p-at-cost). If there is any task for which paying a person is cheaper than building one more machine, the gap is an invitation to build the machine. Comparative advantage therefore protects wages only for as long as machine capacity cannot be expanded, which is to say during the build-out. That period is real, it may last years, and it is part of the scenarios in Part IV. It is a transition, though, and the argument gives no reason to expect it to last.

Finally, the horse had a comparative advantage too. There were always tasks, on steep ground or on small plots, where the tractor's edge over the horse was smallest. That did not keep the value of a horse's work above the cost of its hay.

#objection([New kinds of jobs will appear, as they always have])[
  Most of today's jobs did not exist a century ago. Nobody in 1900 could have predicted the web designer or the MRI technician. It is a failure of imagination to assume that this time no new work will appear.
]

New tasks will certainly appear. A richer and more complicated economy will want things done that nobody has yet thought of. The question is who will do them. New tasks went to people in the past because people were the only general-purpose learners available (@a-generality). Under the premise, there is a second general-purpose learner, and it learns a new task once and then copies the skill to every machine at no cost, while a person takes years to train. The objection assumes that the new tasks will belong to the first of @p-three-conditions's three conditions, "something was left." The premise is exactly that this condition fails.

#objection([Prices will fall, so even a small wage will buy a great deal])[
  If machines make everything cheaply, the cost of living collapses. A wage that looks tiny in today's dollars might buy a comfortable life.
]

Prices of machine-made things will indeed fall, and this is very good news for anyone who has an income (@ch-distribution returns to it). But it does not rescue the wage, because under the premise human work is itself priced as a machine-made thing. The wage falls in step with the price of machine work. Goods made entirely by machines fall in price about as fast, so an hour of human work buys no more of them than before. And things that are not made by machines at all, above all land in places where people want to live, become more expensive relative to the wage, because the machine economy and its owners are bidding for them too. A person paid the machine price can afford what a machine needs. People need more than machines do.

#objection([People working with AI will always beat AI alone])[
  The best results come from human judgment combined with machine speed. Machines will be tools that make workers more productive, as computers did.
]

Where this is true, it describes a remaining human task, namely directing and checking the machine, and @p-bottleneck applies: the people who do it will be well paid. It is an accurate description of much work in 2026. But it is a claim about each task at a given moment, and it can stop being true. In chess, for a decade or more after a computer first beat the world champion in 1997, the strongest play came from teams of a person and a computer. Today the person adds nothing. The premise of this guide is the situation after that point, for every task.

#objection([Human wants are unlimited, so there will always be more work to do])[
  The "lump of labor" is a fallacy. There is no fixed amount of work. A richer society finds new things to want.
]

Agreed on every point (@a-scarcity). Unlimited wants guarantee unlimited demand for _output_. They guarantee demand for human work only if human work is the cheapest way to produce the output. The fallacy lies in assuming a fixed amount of work. The argument of this chapter assumes nothing of the kind: in @fig-supply the amount of work done grows enormously. It is done by machines.

#objection([Workers could always go on as before, so they cannot end up worse off])[
  Nothing forces anyone to use the new machines. Workers and the firms that employ them could simply carry on producing and trading with one another exactly as they do today. Since that option always remains, competition can only make them better off. Several formal results in economics say exactly this: under the right conditions, a new technology cannot lower the total income of the inputs that existed before it.
]

The theorem is correct, and its conditions tell us exactly where to look. The economy of today does not run on work alone. It runs on work combined with factories, offices, land, energy and materials, and the workers do not own those. Their owners are free to put them to whatever use pays best. If land is worth more under a data center than under a factory, and electricity is worth more running machines than lighting an office, then "carrying on as before" is no longer on offer to someone who owns only their work, because the other half of the old arrangement has left. What the theorem really guarantees is that the owners of the old inputs _taken together_ do not lose. It is silent on how the gain is divided between the people who supplied the work and the people who supplied everything else. In the most careful recent model of this kind, by Pascual Restrepo, the total paid in wages does not fall when computing power is the only scarce thing, and yet the wage share of income still goes to zero and wages stop growing with the economy @restrepo-2025. That is @p-share-zero.

#objection([Machines will stay scarce, so their work will stay expensive])[
  In an economy growing explosively, machines are enormously productive, and the return on owning one is very high. If human work is paid what an equivalent machine earns, and machines earn a great deal, then human wages could stay high or even rise.
]

This is the most serious objection in economic theory, and several formal models produce exactly this result, for a time or for good @trammell-korinek-2025 @restrepo-2025. A survey of the theory concludes that whether wages end up above or below today's level is not settled by the models, and depends on how scarce machines remain and on whether land and energy become the binding limit. The reply is therefore about magnitudes. What a person can earn is the rental price of the _amount of machinery needed to replace that person_. For mental work this is a small fraction of one computer chip, and each year better software shrinks the fraction. Even if the rental price of chips doubled or tripled because of scarcity, the cost of replacing an hour of a person's mental work would still be far below that person's cost of living, and falling. For physical work the objection has more force, because robots have to be manufactured in the hundreds of millions before they are plentiful, and that will take longer. It is one reason this guide expects physical wages to hold up longer than mental ones.

There is a further limit even in the long run. A machine economy that keeps growing eventually presses against what cannot be manufactured: land, sunlight, minerals. Economists since Ricardo have understood what happens to a population that can multiply without limit on a fixed base of land. Its members end up earning their own cost of reproduction, and the surplus goes to whoever owns the land. Machines are such a population. In the long run their work is priced at what it costs to build and run them, and so is any human work that competes with theirs.

#checkpoint[
  - A machine substitute caps the wage at the price of machine work (@p-ceiling), and that price tends toward the cost of building and running machines (@p-at-cost).
  - While necessary tasks remain that only people can do, those people gain; when none remain, the gain reverses (@p-cliff). Average wages may therefore rise during the transition and are a poor warning signal.
  - Machine cost is below the cost of supporting a person (@p-upkeep).
  - Under the premise, therefore, the wage stops carrying the economy's output to most people (@p-share-zero), and very probably stops covering the cost of living (@p-wages-fall), although output is higher than ever.
  - The economy has not become poorer. One of the three channels of income (@d-income) has closed. The next two chapters ask what happens to production, and then who receives it.
]
