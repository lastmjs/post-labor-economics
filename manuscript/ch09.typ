#import "template.typ": *

= Who decides <ch-power>

Part II ended with an economy that produces abundantly and a majority with no claim on the product. The market does not supply the missing claim. So the outcome depends on a decision, and this chapter asks who is in a position to make it.

At the end of @ch-history I listed three ways in which a population of people differs from a population of horses: people are customers, owners and citizens. Two of the three have now been examined and found wanting. Being a customer gives no protection, because production follows income, wherever the income is (@p-no-paradox). Being an owner protects those who own, and most people own little (@p-default). That leaves the third. People govern themselves, and governments can tax and transfer. What is that worth?

== Why majorities have had a share

Start with an uncomfortable axiom.

#axiom([Shares follow leverage])[
  Over the long run, a group's share of what a society produces reflects what that group is able to withhold from others or impose on them. Entitlements that are not backed by some form of leverage tend to erode.
] <a-leverage>

This is a claim about how societies have in fact behaved, and the reader should want evidence for it. There is a good deal.

*Wars that needed everyone.* The great expansions of voting rights, progressive taxation and social insurance in the rich countries cluster around the two world wars, when states needed the mass of the population as soldiers and as workers in war industries. A study of twenty countries over two centuries found that steeply progressive taxes arrived with mass mobilization for war, and did not arrive with democracy or with inequality alone @scheve-stasavage-2016. The top rate of American income tax was 7 percent in 1913, 77 percent in 1918 and 94 percent in 1944. Britain widened the vote in 1918 and built its welfare state after 1945.

*Workers who could stop production.* Bismarck created the first national social insurance in the 1880s, by his own account to draw workers away from the socialists. The American New Deal followed waves of strikes. The golden age of rising wages after 1945 was also the high-water mark of union membership. In each case, concessions were made to people who could shut things down.

*Plagues that made labor scarce.* After the Black Death killed a third or more of Europe's population, the wages of the survivors rose for generations despite laws passed to hold them down. The historian Walter Scheidel, surveying inequality across several thousand years, found that it has fallen substantially only after mass-mobilization wars, revolutions, state collapses and catastrophic plagues: events that either made ordinary people's labor scarce or put weapons in their hands @scheidel-2017.

*States that do not need their people's work.* The clearest evidence is the reverse case. Where a government draws its revenue from oil and not from taxing the work of its citizens, it has less need of their consent, and such states are on average less democratic and less accountable. The finding is debated at the edges; it is firmest for petroleum, and for the period since governments, and no longer foreign companies, have held the revenue @ross-2015 @notes-history. The slogan of the American Revolution runs in both directions: no taxation without representation, and little representation without taxation.

So the working majority of the industrial countries has had three sources of leverage. They could withhold their work, which is the strike. The state needed them to fight and to pay taxes, which made governments attentive. And they could vote, with the implied possibility of disorder if votes were ignored.

== What automation does to leverage

#proposition([Automation removes the leverage of being needed], from: [@a-leverage, @p-share-zero])[
  Under the premise, the first source of leverage disappears by definition: work that is not needed cannot be withheld. The second weakens as armies and police forces automate and as the state's revenue stops coming from wages. What remains to the majority is the third: its formal political rights, and the willingness of institutions to honor them.
] <p-leverage-lost>

A group of writers has named this prospect "the intelligence curse," by analogy with the resource curse of the oil states: if a country's income flows from machines and not from its people's work, those who control the state have less reason to invest in the people or to listen to them @drago-laine-2025.

The point is easy to overstate, and precision matters here. Formal rights are powerful. Courts, constitutions, elections and a free press are real constraints, and in the countries that have them they have survived severe tests. The claim is narrower. Until now, wherever democracy has existed, it has existed alongside an economy that needed the majority's work. We have no example of a democracy lasting for generations in which most citizens were economically unnecessary. The oil states are the nearest examples of unnecessary majorities, and most of them are not democracies. Nobody knows whether formal rights alone can hold a fair distribution in place indefinitely. They have never had to.

There is also an encouraging pattern in the same evidence. Where strong institutions were in place _before_ the windfall arrived, the windfall was shared. Norway found oil as an established democracy and put the proceeds into a public fund that is now worth more than \$350,000 per citizen. Alaska created a public fund from its oil revenue in 1976, and every resident has received a dividend from it each year since 1982 @alaska-pfd. Nigeria, Angola and Venezuela found oil with weaker institutions, and the proceeds were captured. The lesson is about order. Institutions that are settled before the money flows tend to keep the money flowing to the public. Institutions that are built afterward have to be extracted from those who already hold it.

#proposition([The window], from: [@a-leverage, @p-leverage-lost, @p-cliff])[
  The majority's leverage is greatest before automation is complete, while its work is still needed, its taxes still fund the state and its numbers still fill the army. It declines as automation proceeds. Whatever lasting claim the majority is to have on the output of the machine economy therefore has to be established during the transition. The period in which the claim is most needed is the period in which it is hardest to win.
] <p-window>

@p-cliff adds a complication. During the transition, average wages may be rising and statistics may look healthy, which is when the case for acting seems weakest. By the time the need is obvious, part of the leverage is gone.

== The state has its own problem

It would be a mistake to treat the government as an umpire standing outside the game. It is a player with a budget, and the premise wrecks that budget.

#proposition([The state must find a new tax base], from: [@p-share-zero, @p-wage-system])[
  The United States government draws 86 percent of its revenue from the income tax on individuals and the payroll taxes that fund Social Security and Medicare, and most of what those taxes fall on is wages. As the wage share of income falls, that revenue falls with it, at the same time as the demands on public support rise. The state must then tax capital, land, consumption or machine labor directly, or own income-producing assets itself, or borrow and create money without limit.
] <p-fiscal>

#plot("../figures/federal_receipts.svg", [
  *Where the federal government's money comes from.* Receipts in the fiscal year that ended in September 2026, by source. Total: \$5.4 trillion.
], source: [US Treasury, Monthly Treasury Statement. `models/fig_receipts.py`]) <fig-receipts>

The dollars that stop being paid as wages do not vanish; they turn up as profits and rents (@p-identity). But the tax system treats them very differently. By one careful estimate, income from work is taxed in the United States at 25 to 30 percent, and income from equipment and software at 5 to 10 percent @acemoglu-manera-restrepo-2020. So every dollar that moves from wages to profits costs the Treasury a fifth of a dollar or so under present law. And the payroll taxes that support Social Security and Medicare fall on wages alone.

This cuts in two directions, and both matter for the forecasts.

It means the transition will squeeze the public finances whether or not politicians wish to address inequality. Falling payroll-tax receipts will threaten Social Security and Medicare, the two most popular programs in American government, on which the most reliable voters depend. The state will be forced to go where the money is, because it will have no alternative. So there will be taxes on the machine economy. The open question is what is done with the proceeds.

It also means the state changes its nature. A government that lives on taxes paid by a hundred and sixty million workers has to care, at least a little, whether those workers prosper. A government that lives on taxes paid by a few hundred firms that own the machines is a different kind of thing. It has every reason to care whether those firms prosper, and its concern for everyone else rests on the vote alone. This is the mechanism behind the resource curse, and it does not require anyone to be wicked.

There is one more fact, and it is favorable. The machine economy is unusually easy to tax. A great deal of twenty-first-century wealth has been hard for governments to reach because it is intangible and mobile: a patent can be moved to Ireland with a signature. The capital of the machine economy is the opposite. It consists of data centers the size of towns, power plants, chip factories and fleets of robots. It sits on land, draws power from a grid, needs permits, and can be seen from orbit. It also depends on the state at every turn, for land, power, security and law. A government that wants to tax it or take a share of it can.

== Sharing is affordable

Suppose the political will existed. Could a post-labor economy afford to provide for everyone? The arithmetic is short.

There are about 270 million adults in the United States. To pay every one of them \$1,000 a month would cost about \$3.2 trillion a year. That is roughly a tenth of the present output of the economy, and less than the federal government already collects in taxes on work. Part of it would replace existing programs. If the economy doubled in size, as even cautious forecasts of the premise allow, the same payment would take a twentieth of output. And @p-prices says that what the payment buys would grow over time, because the things machines make get cheaper.

#proposition([Providing for everyone takes a small and shrinking share of output], from: [@p-output-rises, @p-prices])[
  In a post-labor economy, an income sufficient for material comfort can be given to every person at a cost that is a modest fraction of total output and that falls as the economy grows. The obstacle to providing for everyone is not a shortage of resources.
] <p-affordable>

This is the most hopeful result in the guide, and it should be given its full weight. In every earlier society, lifting everyone out of want would have required the better-off to give up a great deal, because there was not enough to go round. In the post-labor economy the owners of the machines could provide for everyone else out of a small part of the _growth_ in their income, and still become richer every year than anyone has ever been. Self-interest alone gives them reasons to do it: a population with nothing is a threat to property, and a tenth of output is a modest price for peace. Historically, though, elites have often failed to make cheap concessions in time, and the cheapness of sharing does not guarantee that it happens.

== Who owns the machine economy?

A final fact shapes the politics. "The owners" are not five men in California.

Ownership of the leading AI companies and of the firms that supply them is held through the stock market and private funds, and so belongs mostly to the same households that own everything else: about half to the wealthiest 1 percent and most of the rest to the next 9 percent (@tab-wealth). That upper tenth is some thirteen million households. They vote and donate at much higher rates than everyone else. They are the default beneficiaries of the premise.

But many of them are also among its first casualties. The upper tenth of American households is full of lawyers, doctors, engineers, managers, consultants and financial professionals, people sometimes called the working rich, whose wealth is real and whose current income is mostly a salary. @ch-two-transitions will show that mental work is automated before physical work. So the first large group to lose its earning power will be the most educated, articulate, organized and politically connected class in the country, and its members will have enough assets to feel what they are losing and too few to live on.

That is a very different political event from the decline of factory towns after 2000, which fell on people with little voice and was ignored for fifteen years. It is the main reason I expect the political response to automation to come faster, and to be more forceful, than the response to earlier shocks.

#checkpoint[
  - Majorities have had a share of output because they were needed, as workers, soldiers and taxpayers (@a-leverage). Automation removes that need (@p-leverage-lost), leaving formal political rights to do work they have never had to do alone.
  - Leverage is greatest early. Lasting claims have to be established during the transition (@p-window), when average statistics may still look fine.
  - The state will be forced to tax the machine economy to survive (@p-fiscal), and the machine economy is physically easy to tax. What it does with the proceeds is not forced.
  - Providing for everyone would take a small share of output (@p-affordable). The constraint is political.
  - The first to lose their earnings will be the professional class, which has unusual political weight.
  - The next chapter sets out the choices.
]
