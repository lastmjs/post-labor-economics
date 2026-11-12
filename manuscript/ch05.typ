#import "template.typ": *

= What happens to the price of work <ch-wages>

This chapter is the center of the argument. It takes the premise of @ch-premise, a machine that can do the work, and the rules about prices from @ch-economy, and derives what happens to wages. There are four results. A machine substitute puts a ceiling on the wage. The height of that ceiling depends on whether machines are scarce or plentiful. Along the way there is a race, in which wages can rise for a long time before they fall. And at the end the wage comes loose from the growth of the economy. A fifth result, about how low the wage goes, rests on evidence as well as logic, and I mark it as such.

One point of method first. A wage means nothing until you say what it is measured against. Throughout this guide a wage is "high" or "low" measured against the whole of what a person has to buy, including the things that machines cannot multiply: land to live on, energy, and the time of other people. Measured only against what machines can make, an hour of work will turn out to buy as much as ever. The shirt economy shows why both statements are true at once.

== Step one: the ceiling

#proposition([The wage ceiling], from: [@a-substitution, @p-price, @d-machine-labor])[
  In any task that a machine can do as well as a person, no employer will pay a person more than it costs to hire the machine. The price of hiring the machine, which I will call the _machine price_, is a ceiling on the wage for that task.
] <p-ceiling>

This is @p-price with the word "input" replaced by "work." It needs no assumption about greed or about the intentions of any company. An employer who paid people more than the machine price for the same result would have higher costs than a competitor who did not, and would in time lose customers to that competitor (@a-substitution).

Return to the shirt economy of @ch-history. After the cutting machine arrived, a hundred workers sewed, each earned one shirt per hour of work, and a shirt traded for one loaf of bread. Now add a second invention.

#aside([The shirt economy, continued])[
  Someone invents a sewing machine that needs no operator. Building and running it takes energy and materials, which come from the land: for every shirt it sews, the machine uses up what would otherwise have been a fifth of a loaf of bread.

  Shirts can now be made in any quantity for a fifth of a loaf each, so that is what a shirt sells for. A human sewer still sews one shirt an hour, as well as ever, and can still sell it, for a fifth of a loaf.

  #v(4pt)
  #datatable(
    columns: (1.6fr, 1fr, 1fr, 1fr),
    align: (left, right, right, right),
    header: ([], [At the start], [After the cutting machine], [After the sewing machine]),
    [Shirts made each hour], [50], [100], [300],
    [Price of a shirt, in loaves], [2], [1], [0.2],
    [A worker's hourly pay, in shirts], [0.5], [1], [1],
    [A worker's hourly pay, in loaves], [1], [1], [0.2],
    [What a worker ends up with], [¼ shirt, ½ loaf], [½ shirt, ½ loaf], [½ shirt, #box[1⁄10 loaf]],
    [What the landowners end up with], [25 shirts, 50 loaves], [50 shirts, 50 loaves], [250 shirts, 50 loaves],
  )
  #v(4pt)

  Measured in shirts, the sewer's pay has not changed: an hour of work still earns a shirt. Measured in bread it has fallen by four fifths, and bread is the thing she cannot make. She has as many shirts as before and a fifth as much to eat.

  The economy makes three times as many shirts. Two thirds of them are sewn by machines, which use up 40 loaves' worth of what the land yields; the bread that used to feed the workers is, in effect, feeding the machines. The landowners have five times the shirts they had and as much bread as ever.

  The first machine left the workers better off. The second cut their pay by four fifths in the thing they most needed. They were the same kind of invention in the same economy. The only difference is that after the first machine there was still a task that only people could do, and after the second there was not.
]

The example is small, but every number in it follows from the stated rules, and it already contains the three lessons of this chapter. The wage is capped by the machine. The cap holds against things machines make and bites against things they do not. And how much it hurts depends on how much of a life is made of things that machines cannot multiply. In the shirt economy that is half. For a real household it is the rent, the heating bill, and the price of everything else whose supply is fixed.

== Step two: what it costs to hire a machine

The ceiling is only as low as the machine price. So what determines that price? The answer has two parts, and it depends on a question of fact about the industry that makes the machines.

#hypothesis([Machine labor will be supplied competitively])[
  Machines that can do the work will be made and offered by enough rival suppliers, with enough freedom for others to enter, that no supplier can hold their price far above cost for long. _My confidence: about two in three for mental machine labor over the next decade, higher for robots._
] <h-competitive>

The evidence for it in 2026 is that several laboratories are within months of one another, that capable models are published openly and can be run by anyone with the chips, and that the price of a fixed level of capability falls about tenfold a year. The evidence against is that training a frontier model costs billions of dollars, that the most capable tier has been getting more expensive, and that one company makes most of the chips. @ch-now gives the detail. If the hypothesis fails, the machine price stays above cost, the ceiling on wages is higher, machine-made goods are less cheap, and the difference is collected by the suppliers of machine labor. The conclusions of this chapter about wages are softened in that case, and the conclusions of @ch-distribution about concentration are sharpened.

#proposition([The machine price: scarcity first, then cost], from: [@a-competition, @a-production, @h-competitive])[
  While machines are scarce relative to the uses for them, a machine is hired for what it can earn, and that can be a great deal. As more are built and capacity catches up with the uses, the machine price falls toward what it costs to build and run a machine, including the cost of the energy, materials and land it needs. That cost falls as the technology improves.
] <p-at-cost>

This is the deepest difference between human work and machine work. The number of working people cannot be expanded to order. When demand for work rises, the supply of people cannot respond, so the wage rises instead. That is a large part of why economic growth has made workers richer: tools and knowledge piled up much faster than people did, and the scarcer input was paid more.

Machine work has no such limit. If demand for it rises, factories make more chips and more robots, supply responds in quantity, and by @a-competition the price is pulled back toward cost. @fig-supply shows the two cases in one picture. Before, the supply of work is a vertical line at the number of people, and the wage is wherever demand crosses it. After, anyone can add to the supply of work at the machine price, so the supply of work is a horizontal line, and the wage is wherever that line sits.

#plot("../figures/supply_of_work.svg", [
  *A substitute turns the supply of work from a vertical line into a horizontal one.* When only people can do the work, its price is set by how much work is wanted and how few people there are. When machines can do it, any amount of work is available at the machine price, which becomes the ceiling on the wage. As machines grow plentiful and cheaper, the ceiling falls and the amount of work done grows. The diagram is conceptual and has no units.
]) <fig-supply>

The first half of the proposition matters a great deal for timing. Building chip factories, power plants and robot plants takes years. While machine capacity is short of what is wanted, machine work is priced by its scarcity, above its cost, and wages in the affected work can stay high or even rise. The speed at which the ceiling comes down is therefore set by the speed at which machine capacity can be built relative to the uses for it. @ch-two-transitions shows that this is very different for mental work, where the capacity already exists, and for physical work, where it does not.

== Step three: the race, and the last task

The first two steps apply task by task. A real economy has thousands of kinds of tasks, and machines do not learn them all on the same day. What happens along the way?

We already have the pieces. By @p-bottleneck, the people who do the tasks that machines cannot yet do gain from scarcity. They are also joined by everyone displaced from the automated tasks, which pulls their pay down. So there is a race. On one side, machines pile up and make the remaining human tasks more valuable. On the other, tasks are handed over to machines and people crowd into fewer and fewer of them.

To see how the race runs, I built the smallest model that contains both sides. It has many tasks that are complements, machines that can do a growing share of the tasks and that improve every year, people who move freely to wherever they are still needed, and owners who reinvest a share of output in more machines. It is a stripped-down version of the model that the economists Anton Korinek and Donghyun Suh published in 2024, and it reproduces their main finding @korinek-suh-2024. Its equations and the checks on them are in #link(<app-models>)[Appendix A], and the code is in the repository.

@fig-cliff shows the model run in two worlds. They follow exactly the same path until machines can do 90 percent of tasks. In the first world automation stops there. In the second it goes on to 100 percent. In each world the wage is drawn three times, for owners who reinvest a small, a medium and a large share of output in more machines.

#plot("../figures/cliff.svg", [
  *The race between automation and the building of machines.* Left: automation stops at 90 percent of tasks. The remaining tasks are a bottleneck for an ever larger machine economy, and the faster machines are built, the higher wages climb. Right: automation reaches 100 percent. Wages rise for a time, peak, and fall to the machine price. With slow building of machines the peak is low and early: the wage peaks when machines do about 70 percent of tasks and is at the machine price by 95 percent. With fast building the peak is very high and the fall comes only at the very end. The level of the machine price in this figure, about a quarter below the starting wage, reflects an assumption that technology in general stands still; if it improves, that level rises with it. Model output; an illustration of a mechanism and not a forecast.
], source: [`models/fig_cliff.py`]) <fig-cliff>

#proposition([The race and the last task], from: [@p-bottleneck, @p-ceiling, @p-at-cost])[
  While necessary tasks remain that only people can do, wages rise if machines multiply faster than tasks are handed over, and fall if automation outruns the building of machines. When no necessary task remains that only people can do, the extra pay that scarcity commanded is gone whatever the pace, and human work is worth the machine price.
] <p-cliff>

Four things follow from the race, and each will matter for the forecasts in Part IV.

*The statistics can look healthy until late.* In every run on the right of @fig-cliff, wages rise for years, in one case nearly fifty-fold, before they fall. Anyone watching average wages in that period would conclude, correctly from the data and wrongly about the future, that automation was good for workers.

*The fall can come well before the end.* When machines are built slowly, the wage in the model peaks when machines do about 70 percent of tasks and reaches the machine price at about 95 percent. Nothing guarantees that the turn waits for the last task.

*The premium goes only to those who can do what is left.* The model assumes that every worker can move into the remaining tasks. In life, as the set of remaining tasks shrinks, it comes to need rarer abilities, credentials or positions. The premium is then collected by fewer and fewer people, and the rest are in the right-hand panel even while the economy as a whole is still in the left-hand one. For an individual, the question that matters is whether there remains a necessary task that machines cannot do and that _this person_ can.

*A last necessary human task is not a place to rest.* The left-hand panel looks like a happy ending, with wages rising without limit. But a task on which the whole economy waits is the single most valuable thing left to automate, and every incentive points at it. The most careful recent analysis concludes that under the premise all such bottleneck work is eventually automated, and that the work which stays human is work the economy can do without @restrepo-2025.

== Step four: the wage comes loose from growth

Now suppose the premise holds completely: there is no task that only people can do.

#proposition([The wage comes loose from growth], from: [@d-premise, @p-ceiling, @a-production])[
  Under the premise, the wage for any work a machine can do equals the machine price. Because machines can be built to order, that price is set by what it takes to supply them and no longer rises in step with the economy's output. As machines multiply, the share of income paid as wages falls toward the share of spending that buyers direct to people as people, which @ch-residual examines.
] <p-share-zero>

This proposition does not lean on @h-competitive. If the suppliers of machine labor compete, the machine price is their cost. If they do not, it is their cost plus whatever margin they can hold. In both cases it is a price fixed by the business of making machines, and the size of the economy does not enter into it. The hypothesis decides how high the ceiling sits. It does not decide whether there is one.

This result holds in nearly every formal model of full automation that economists have written down, and those models differ on a great deal else @trammell-korinek-2025 @restrepo-2025 @notes-theory. It is the result on which the rest of this guide stands, and I hold it with near certainty, given the premise.

It is enough, alone, to break the wage system as a way of distributing output (@p-wage-system). Suppose wages stayed exactly where they are today in what they can buy. An economy that grew tenfold while paying its workers the same total would be paying them a tenth of the share they receive now, and the other nine tenths of that share would go elsewhere. People would be no poorer than today in absolute terms, and they would be bystanders to everything that happened afterward.

== How low is the machine price?

The four steps so far were logic, given that machines can be built to order. Whether the machine price ends up above or below today's wages, or above or below what it costs to live, is a different kind of question. Economic theory leaves it open: the formal models produce either answer, depending on how scarce machines remain and on whether land and energy become the binding limit @trammell-korinek-2025. It has to be settled by evidence about costs, and the evidence is incomplete.

#hypothesis([Plentiful machines cost less than people])[
  Once machines that can do a given kind of work have become plentiful, hiring one costs less than supporting a person. Machines that do mental work become plentiful within a few years of becoming capable, because they run on chips that are already made by the tens of millions. Machines that do physical work become plentiful only when robots have been built in very large numbers. _My confidence: about nine in ten for mental work; about three in four for physical work by 2040. If this is wrong, the wage ceiling settles above what a person needs to live on, and working people keep a living while still losing their share of the growth._
] <h-upkeep>

Here is the evidence in money, as it stood in late 2026 @bls-oews-2025 @bls-ecec-2026 @notes-ai @notes-robots.

An adult living alone at the federal poverty line in the United States has \$15,960 a year. Spread over a full-time working year of 2,080 hours, that is \$7.67 for every hour worked, and it buys a hard life. The average hourly wage across all occupations was \$33.54 in 2025, and with benefits and payroll taxes the average private-sector worker costs an employer about \$47 an hour.

For mental work the comparison is already lopsided. On tasks that AI agents can complete, the bill for the computing needed to do an hour of an expert's work is, by my estimate from published figures, somewhere between twenty cents and five dollars. In one documented case, a piece of software that engineers judged to be between two and seventeen weeks of work was rebuilt by an agent for about \$150. The price of a fixed level of AI capability has been falling about tenfold a year @epoch-price-2026. These are today's prices, and they already include whatever premium the present shortage of chips commands. The chips to run such agents by the hundred million have been made (@ch-two-transitions), and no body has to be built for each worker replaced, so this is work for which machines can be made plentiful within a few years of being capable.

For physical work the comparison does not yet favor the machine. At the prices that one American maker of humanoid robots has filed with regulators, a robot costs between \$13 and \$55 for each hour it runs, and it works at about half a person's speed @agility-2026. Per unit of work that comes to somewhere between about the \$37 an hour that employers pay the workers it would replace and three times as much. But most of that is the price of an early product. The hardware is not inherently expensive: the accounts of a leading Chinese maker imply that a small humanoid costs about \$10,000 to build. At the prices expected around 2030, my estimates in research note 04 put the machine itself at \$3 to \$14 for each hour it runs, with a share of a human supervisor on top. A robot bought for \$30,000 that lasted five years and worked sixteen hours a day would cost about a dollar an hour in purchase price.

The same comparison can be made in the physical things that neither a person nor a machine can do without. These figures are rough, and I offer them for their size, not their precision @notes-compute. Feeding one American takes on the order of an acre of cropland. A machine mind running around the clock on solar power, and doing the hours of four full-time workers, needs a few hundredths of an acre of panels. An hour of work by a frontier AI agent uses two or three kilowatt-hours of electricity, which, counting the fuel burned to generate it, is a tenth to a twentieth of the energy that the American economy uses for each hour its people work. The machine needs much less of what is scarce, for the same reason the truck needed less than the horse.

Putting the pieces together gives the stronger result, which is the horse lemma (@p-horse) applied to people.

#proposition([Where machines are plentiful, work stops paying for a life], from: [@d-premise, @p-ceiling, @p-at-cost, @h-upkeep, @p-horse])[
  Under the premise, the wage for work a machine can do falls below what a person needs to live on, wherever and whenever machines that do that work have become plentiful. This arrives in three phases: for mental work soon after machines can do it; for physical work only when robots have been built in very large numbers; and for all work, finally, when the machine economy presses against the limits of land, energy and materials.
] <p-wages-fall>

The three phases are worth spelling out, because the next ten years fall almost entirely inside the first.

- *Minds plentiful, hands scarce.* Mental machine labor becomes abundant quickly. The wage for mental work that a machine can do falls toward the cost of computing. Physical work is now the bottleneck for everything, so by @p-bottleneck it is in demand and well paid.
- *Hands being built.* Robots are scarce for years after they are capable, so a robot is hired for what it can earn, which is roughly what the worker beside it earns. Physical wages hold up, and sink only as robots multiply.
- *Machines pressing on nature.* When machines of both kinds are plentiful, what limits production is energy, materials and land. Machines and people are then both paid what a machine costs in those scarce things. This is the shirt economy after the second machine.

I hold the first phase with high confidence, given the premise, and the second and third with less. One economist who has modeled the third phase puts the chance of wages below subsistence before 2045 at about one in three @barnett-2025. My own view of the whole proposition is that it is more likely true than not on any timescale, and very likely true for mental work within a few years of the premise holding for it. The rest of the guide needs only @p-share-zero.

Notice what neither proposition says. Neither says that there will be nothing for people to do, or that people will be forbidden to work. Anyone may still offer work at the machine price. In practice the result would be recorded mostly as people leaving the labor force, since minimum-wage laws forbid, and few people accept, work at a dollar or two an hour. Here people differ from horses in a way that makes things worse. Horses whose work no longer paid were not bred. People whose work no longer pays are still here.

Nor does either say that the price of every kind of human work falls to the machine price. Where a buyer wants the work done _by a person_, and a machine is therefore not a substitute at all, @p-ceiling does not apply. @ch-residual measures how much that exception is worth.

== Seven objections

The conclusions are unwelcome, and there are well-known arguments against them. Each deserves its strongest statement.

#objection([Comparative advantage guarantees people a job])[
  David Ricardo showed in 1817 that even if Portugal makes both wine and cloth more efficiently than England, both countries gain when each specializes in what it does _relatively_ best. In the same way, even if machines are better than people at everything, machine capacity is limited, so machines should be used where their advantage is greatest and people will be employed in the rest. Some economists conclude that people will keep well-paid work however capable machines become @smith-2024.
]

The logic of comparative advantage is sound, and it guarantees less than it seems to. It shows that there will be _some_ wage at which it pays to employ a person. It does not show what that wage is. In Ricardo's own example the less productive country is the poorer one. What a person is paid for a task under comparative advantage is what it would cost to have the machine do that task, which is @p-ceiling again.

The argument also rests on an assumption that holds for countries and fails for machines. Portugal cannot be copied. Ricardo's theorem takes the quantity of each country's resources as fixed. Machine capacity is manufactured. If there is any task for which paying a person is cheaper than building one more machine, the gap is an invitation to build the machine. Comparative advantage therefore keeps wages _high_ only for as long as machine capacity is scarce, which is the first half of @p-at-cost. That period is real, for physical work it may last a decade or more, and it is part of the scenarios in Part IV.

Finally, the horse had a comparative advantage too. There were always tasks, on steep ground or on small plots, where the tractor's edge over the horse was smallest. That did not keep the value of a horse's work above the cost of its hay.

#objection([New kinds of jobs will appear, as they always have])[
  Most of today's jobs did not exist a century ago. Nobody in 1900 could have predicted the web designer or the MRI technician. It is a failure of imagination to assume that this time no new work will appear.
]

New tasks will certainly appear. A richer and more complicated economy will want things done that nobody has yet thought of. The question is who will do them. New tasks went to people in the past because people were the only general-purpose learners available (@a-generality). Under the premise there is a second general-purpose learner, and it learns a new task once and then copies the skill to every machine at no cost, while a person takes years to train. The objection assumes the first of the three conditions of @p-three-conditions, that something is left. The premise is exactly that this condition fails.

#objection([Prices will fall, so even a small wage will buy a great deal])[
  If machines make everything cheaply, the cost of living collapses. A wage that looks tiny in today's dollars might buy a comfortable life.
]

Half of this is right, and the shirt economy shows which half. Measured in machine-made things, the wage holds: the sewer could buy as many shirts after the second machine as before. Prices of such things will indeed fall, which is very good news for anyone who has an income from any source (@ch-distribution returns to it). But a person does not live on machine-made things alone. Somewhere to live, energy, and anything whose supply is fixed do not get cheaper as machines multiply, and the machine economy bids for some of them. Measured against those, the wage falls. A person paid the machine price can afford what a machine needs, and people need more than machines do.

#objection([People working with AI will always beat AI alone])[
  The best results come from human judgment combined with machine speed. Machines will be tools that make workers more productive, as computers did.
]

Where this is true, it describes a remaining human task, namely directing and checking the machine, and @p-bottleneck applies: the people who do it will be well paid. It is an accurate description of much work in 2026. But it is a claim about each task at a given moment, and it can stop being true. In chess, for some years after a computer first beat the world champion in 1997, the strongest play came from teams of a person and a computer. Today the person adds nothing. The premise of this guide is the situation after that point, for every task.

#objection([Human wants are unlimited, so there will always be more work to do])[
  The "lump of labor" is a fallacy. There is no fixed amount of work. A richer society finds new things to want.
]

Agreed on every point (@a-scarcity). Unlimited wants guarantee unlimited demand for _output_. They guarantee demand for human work only if human work is the cheapest way to produce the output. The fallacy lies in assuming a fixed amount of work. The argument of this chapter assumes nothing of the kind: in @fig-supply the amount of work done grows enormously. It is done by machines.

#objection([Workers could always go on as before, so they cannot end up worse off])[
  Nothing forces anyone to use the new machines. Workers and the firms that employ them could simply carry on producing and trading with one another exactly as they do today. Since that option always remains, competition can only make them better off. Several formal results in economics say exactly this: under the right conditions, a new technology cannot lower the total income of the inputs that existed before it @caselli-manning-2019.
]

The theorem is correct, and its conditions tell us exactly where to look. The economy of today does not run on work alone. It runs on work combined with factories, offices, land, energy and materials, and the workers do not own those. Their owners are free to put them to whatever use pays best. If land is worth more under a data center than under a factory, and electricity is worth more running machines than lighting an office, then "carrying on as before" is no longer on offer to someone who owns only their work, because the other half of the old arrangement has left. In the shirt economy the workers could not go back to the old terms because the land's yield now had a better use than feeding them. What the theorem really guarantees is that the owners of the old inputs _taken together_ do not lose. It is silent on how the gain is divided between the people who supplied the work and the people who supplied everything else. In the most careful recent model of this kind, by Pascual Restrepo, the total paid in wages does not fall when computing power is the only scarce thing, and yet the wage share of income still goes to zero and wages stop growing with the economy @restrepo-2025. That is @p-share-zero.

#objection([Machines will stay scarce, so their work will stay expensive])[
  In an economy growing very fast, machines are enormously productive, and the return on owning one is very high. If human work is paid what an equivalent machine earns, and machines earn a great deal, then human wages could stay high or even rise.
]

This is the most serious objection in economic theory, and it is half right. It is the first half of @p-at-cost: while machines are scarce relative to their uses, the machine price is high, and human wages can be high with it. Several formal models produce exactly this result, for a time or for good @trammell-korinek-2025 @restrepo-2025.

The reply is that it applies to the two kinds of work very differently. Mental machine labor is short today only in the way any fast-growing manufactured product is short, and it will not stay short, because the chips are already being made in tens of millions and no body has to be built for each worker replaced. Even at today's prices, shortage included, what a person can earn for mental work is the hire of the small fraction of a computer chip that could replace them, and each year better software shrinks the fraction. So the objection gives no shelter to mental work. For physical work it has real force. Robots have to be manufactured in the hundreds of millions before they are plentiful, and until then a capable robot will be hired at something like a worker's wage. That is why this guide expects physical wages to hold up for a decade or more after mental ones have fallen.

In the very long run the question is whether the machine economy runs into the limits of land, energy and materials. Economists since Ricardo have understood what happens to a population that can multiply without limit on a fixed base of land. Its members end up earning their own cost of reproduction, and the surplus goes to whoever owns the land. Machines are such a population. If that limit binds, their work is priced at what it costs to build and run them, and so is any human work that competes with theirs. If it does not bind, because energy and materials turn out to be effectively unlimited, wages for machine-substitutable work could stay well above subsistence indefinitely, while still falling as a share of an exploding economy.

#checkpoint[
  - A machine substitute caps the wage at the machine price (@p-ceiling). That price is set by scarcity while machines are few and by cost once they are plentiful (@p-at-cost), provided their makers compete (@h-competitive).
  - While necessary tasks remain that only people can do, there is a race between the building of machines, which raises wages, and the handing over of tasks, which lowers them (@p-cliff). Average wages may rise for a long time and are a poor warning signal.
  - Under the premise the wage comes loose from the growth of the economy, and labor's share of income falls toward the share spent on people as people (@p-share-zero). The guide rests on this.
  - Plentiful machines very probably cost less than a person's upkeep (@h-upkeep), so work that machines can do stops paying for a life: soon for mental work, later for physical work (@p-wages-fall).
  - The economy has not become poorer. One of the three channels of income (@d-income) is closing. The next two chapters ask what happens to production, and then who receives it.
]
