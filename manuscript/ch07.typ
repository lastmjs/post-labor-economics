#import "template.typ": *

= Who receives the output <ch-distribution>

We now have an economy that can produce more than ever (@ch-growth) and in which the wage no longer carries that output to the people who work (@ch-wages). This chapter asks where the output goes. It also takes up the oldest objection to the whole line of thought, the one most people raise first: _if nobody earns a wage, who will buy the products?_

== The default: income follows ownership

Recall that income can come only from work, from ownership or from transfers (@d-income). Shrink the first and two remain.

#proposition([Without wages, income follows ownership], from: [@d-income, @p-identity, @p-share-zero])[
  Under the premise, nearly all of the economy's income is paid to the owners of machines, land, natural resources and legal rights. The exception is whatever is paid for work that buyers want from a person. Apart from that, a person's claim on output is the return on what they own plus whatever is transferred to them.
] <p-ownership>

So the question "who receives the output?" becomes "who owns things?" The answer for the United States is on record, in the Federal Reserve's accounts of who holds the nation's wealth @fed-dfa-2026.

#figure(
  datatable(
    columns: (1fr, auto, auto),
    align: (left, right, right),
    header: ([Group of households, ranked by wealth], [Share of all household wealth], [Share of all company shares]),
    [Wealthiest 1%], [32.5%], [50.9%],
    [Next 9%], [36.4%], [37.2%],
    [Middle 40% (50th to 90th percentile)], [28.8%], [11.4%],
    [Less wealthy half], [2.3%], [0.6%],
  ),
  caption: [Who owns what in the United States, second quarter of 2026. Company shares are corporate equities and mutual fund shares, including those held in retirement accounts. Total household net worth was \$186 trillion. Source: Federal Reserve, Distributional Financial Accounts.],
) <tab-wealth>

Income today is unequal, but it is much less unequal than wealth, and the reason is wages. Most people own little (@a-labor-only) and nonetheless receive a real share of output, because they sell work. Take the wage away and the distribution of income moves toward the distribution of ownership.

#proposition([The default distribution], from: [@p-ownership, @a-labor-only])[
  If the law stays as it is, the distribution of market income in a post-labor economy moves toward the distribution of wealth, which is several times more concentrated than the distribution of income is today, and may move beyond it. The less wealthy half of American households, who now receive a meaningful share of national income, own about a fortieth of national wealth.
] <p-default>

"May move beyond it" because the forces that have limited the concentration of wealth weaken under the premise. In the past, when the rich saved and built more capital, the extra capital needed workers, which raised wages and lowered the return on capital. That brake depends on capital needing workers. Without it, those who start with more and save more pull steadily away @trammell-patel-2025. "If the law stays as it is" because existing transfers, such as Social Security, would continue; they are part of the default too, for as long as they are funded.

The position of a typical household is worse than its share of wealth suggests, for two reasons. First, most of what a middle household owns is its house and its retirement accounts. A house provides shelter but pays no cash. Second, most households carry debts that were taken on in the expectation of wages: a mortgage, a car loan, student loans. A household with a home worth \$400,000, a mortgage of \$250,000 and a retirement account of \$100,000 is comfortably middle class today. With no wage it has payments to make and a few thousand dollars a year of investment income to make them with.

That is the default. It is what the rules of a market economy produce if they are simply left running under the premise. Whether they will be left running is the subject of Part III.

#objection([If machines are that cheap, everyone can own one])[
  A robot that does a person's work and costs as much as a used car is within reach of most households. Why would the result be a small class of owners? Each family could buy a few machine workers and live on what they earn.
]

This is the first thing a practical person asks, and the answer comes from @p-at-cost and @p-rents. A machine that anyone can buy earns only what it costs. If a \$30,000 robot could reliably earn its owner \$30,000 a year, everyone would buy robots, and the price of robot work would fall until a robot earned about what a savings account pays on \$30,000. Owning a commonly available machine is like owning a delivery van today: it is a way to do work, and it produces income only if you have customers, whose business is competed for by every other van. The income that lasts goes to what the machine cannot do without and what cannot be copied: the land it stands on, the energy it runs on, the permits and positions that keep rivals out. Those are what is concentrated. So broad ownership is a real answer to the distribution problem, but it has to be ownership of the scarce things, or of a share in everything. A robot in every garage is not enough.

== "But who will buy the products?"

Here is the objection in its strongest form.

#objection([An economy without wage earners has no customers])[
  Workers are also consumers. If machines replace workers, the workers have no income; if they have no income, they cannot buy what the machines make; if nobody buys, the firms that own the machines have no revenue and the machines have no value. So mass automation is self-defeating. Either it will stop short, or firms will have to keep paying people, or the whole system will seize up.
]

There is a story, probably invented, that a Ford manager once showed the union leader Walter Reuther a line of new automatic machines and asked how he planned to collect union dues from them, and that Reuther asked how Ford planned to get them to buy cars. The exchange is quoted because it feels unanswerable. It has an answer in two steps.

The first step is @p-identity. Every dollar paid for output is somebody's income, with or without workers. If a factory sells \$1 billion of goods and pays no wages, the \$1 billion does not vanish. It is paid to the factory's suppliers and owners. _They_ now have the income that the workers used to have. A firm does not care whose dollars it receives.

The second step is what those people do with the income, and this is a matter of behavior, which no identity can settle. "The owners are few, and a few people cannot eat a million loaves of bread." True, and so the economy stops making a million loaves for them. There are two things they can do with their income.

They can _consume_: larger houses, private aircraft, staff, art, medical care at the frontier, security, travel, political influence. Wants are unlimited (@a-scarcity), for the rich as for everyone.

Or they can _invest_: use the output to build more machines, more power plants, more data centers. Under the premise this is very attractive, because there is a great deal of profitable building to do (@p-growth-limit). An economy can direct a large part of its output to building its own future capacity for a long time. China has invested more than 40 percent of its output every year for two decades.

#proposition([Production turns to serve those with income], from: [@p-identity, @a-scarcity, @p-growth-limit])[
  A post-labor economy runs out of buyers only if the people who receive its income choose neither to consume it nor to invest it, at any rate of interest. With unlimited wants and abundant profitable investment, that is unlikely to last. What changes is whose wants direct production. Spending shifts from what wage earners buy toward what the owners of capital and land want to consume, toward investment in more machines, and toward whatever governments purchase.
] <p-no-paradox>

This is the conclusion of the formal literature as well: in the standard models of full automation, the output is absorbed, mostly as machines building machines, and the problem that remains is one of distribution @notes-theory. I hold it with somewhat less than full confidence, perhaps five chances in six, for a reason worth stating. The same gap between the spending habits of wage earners and of owners that makes the transition dangerous, as the next section describes, could in principle persist: an economy whose income has moved to people who save most of it might run for years with too little spending and very low interest rates. I think abundant investment opportunities make that unlikely under the premise. It is not impossible.

There have been economies in which production was not for most of the people who lived in them. In the slave plantations of the Caribbean and the American South, production was directed by the planters and sold abroad. In several oil states of the Persian Gulf today, the economy runs on a resource that needs few local workers, and the population lives on what the state passes on. These are not models of a post-labor economy; they sold their output to wage earners elsewhere. What they show is narrower. An economy does not have to be arranged around the wants of the people who live in it. It is arranged around the wants of whoever receives the income.

What about Henry Ford, who famously doubled his workers' pay to five dollars a day in 1914, supposedly so that they could afford his cars? He did it to stop his workers quitting. No firm can create its own customers by paying wages, because its workers spend only a tiny part of their pay on its products. Each firm gains by cutting its own wage bill and loses only when all the others cut theirs. So even if every firm understood that mass purchasing power served them all, no single firm would have a reason to preserve it. The purchasing power of the public is a shared resource that no firm owns, and markets do not look after resources that nobody owns.

So the answer to the second of our three questions is yes: producers can sell what they make. They sell to different buyers. A good way to keep this in mind is that the post-labor economy does not have a demand problem. It has a _whose-demand_ problem.

== The transition is where demand can break

That was the destination. The journey is more dangerous, and here the objection has real force. The economy can move from one pattern of spending to another, but it cannot do so quickly without things breaking, for three reasons.

*Wage earners spend what they get; owners mostly do not.* A household living on wages spends nearly all of its income. A wealthy household that receives an extra dollar of profit spends a small part and saves the rest. When income moves quickly from wages to profits, total spending falls unless investment or government spending rises at the same moment by the same amount. There is no mechanism that guarantees the timing.

*Debts are fixed in dollars.* American households owe about \$21 trillion, two thirds of it mortgages, on the assumption that wages will arrive @fed-dfa-2026. When wages stop, payments stop. Defaults damage banks, banks lend less, house prices fall, and households who still have jobs cut spending because they feel poorer. This spiral of debt and falling spending was one of the things that turned the crash of 1929 into the Great Depression and the housing bust of 2007 into the Great Recession.

*Recessions are when the cuts happen.* Firms are reluctant to dismiss workers in good times and quick to do it in bad times. A study of the three American recessions between 1990 and 2009 found that routine jobs were destroyed almost entirely during the downturns and did not come back in the recoveries @jaimovich-siu-2012. A downturn caused by displacement therefore causes more displacement.

#proposition([A fast transition can produce a slump in the middle of abundance], from: [@p-share-zero, @p-no-paradox])[
  Given the three facts above, if wage income falls faster than other spending rises to replace it, the result is a recession on top of the structural change: falling sales, defaults, failing lenders and further layoffs. The economy's ability to produce is unharmed throughout. What fails is the flow of spending.
] <p-slump>

Two things can offset the fall in wage-earners' spending while it happens. One is a boom in investment: if firms are spending hundreds of billions of dollars a year on data centers, chips and power plants, that spending is income for someone and can hold total demand up even while employment weakens. The result is growth without jobs. The other is the government, which can put money directly into households' hands and borrow or tax to pay for it, as the United States did on a very large scale in 2020. Part IV argues that the United States will see both, in that order.

== What gets cheap, and what does not

So far this chapter has been about incomes. The other half of anyone's standard of living is prices, and here the news is good, with an important exception.

#proposition([Machine-made things get cheap; scarce things do not], from: [@a-competition, @p-at-cost, @p-rents, @h-competitive])[
  Where suppliers compete, the price of anything machines can make falls toward the cost of making it, and that cost falls with the cost of machine labor. Anything whose supply is limited by nature, by position or by law does not get cheaper, and tends to get more expensive relative to everything else.
] <p-prices>

On the cheap side: manufactured goods of every kind; software and entertainment; transport, once vehicles drive themselves; and, most strikingly, expertise. A consultation with a doctor, a lawyer, an accountant or a tutor is expensive today because it uses the time of a highly trained person. Under the premise the knowledge is available at the cost of electricity. In time the same applies to the labor in building things and growing food, as machines take over the physical work.

On the other side: energy, at least while the build-out strains supply. Anything rationed by rank, such as a place at a famous university or a house in the best school district, since rank cannot be mass-produced. Anything the law requires a licensed person to provide. The time and attention of other human beings. And land, which needs more care, because three different things are meant by it.

- Land that is wanted for its _position_, the view, the neighborhood, the address, stays dear, and gets dearer as the owners of the machine economy grow richer.
- Land that is dear because it is near well-paid _jobs_, which describes much of the housing in the big office cities, loses that reason for being dear when the jobs go.
- Land as a _source_ of energy, food and materials is what the machine economy itself bids for. This is the channel through which the horse lost: its feed was grown on land that had better uses.

So housing may get cheaper in some places and dearer in others, and food becomes cheap in labor while staying tied to the price of land and energy.

This split has a consequence that is easy to get wrong in both directions. It is _not_ true that falling prices make the loss of wages harmless, because a person still needs somewhere to live and energy to live with, and those are among the things that do not get cheap. But it _is_ true that the income a person needs for a materially secure life falls a long way, perhaps to a fraction of today's median wage, provided they have a place to live. The post-labor economy makes the cost of providing for everyone lower than it has ever been. Whether everyone is provided for is a separate matter, and it is not a matter of resources.

== How the pieces fit together

It may help to walk once around a post-labor economy and say what each of its institutions is doing. Nearly all of them carry on.

*Firms* still exist and still compete. They are owned by shareholders and run by machines. Their costs are energy, materials, land, the machines themselves and taxes. Where rivals can enter, competition holds prices near cost. Where they cannot, because a firm holds a site, a patent, a license or a network that others cannot copy, it earns a rent (@p-rents).

*Prices* still do their work. They still say what is scarce and direct resources toward it. Nothing about the premise weakens the market as a way of deciding what gets made and how.

*Households* still buy things, with income from the three channels of @d-income: what they own, what they are given, and whatever is paid for the kinds of work that people want from people (@ch-residual).

*Finance* changes its footing. Today most lending to households is lending against future wages. Without wages, a household can borrow only against what it owns or is entitled to. Investment is financed mainly out of the profits of the machine economy itself, as the factories of the Industrial Revolution were.

*Government* still taxes and spends. It taxes profits, rents and purchases where it used to tax pay, or it holds assets and lives on their income. Its budget rises and falls with the machine economy.

*The central bank* still manages the total level of spending. Its hard problem is the transition, when spending power is moving from those who spend to those who save.

*Trade* continues, with a different basis. Countries will no longer be distinguished by the cost of their labor. They will be distinguished by their energy, land, minerals, capital and institutions.

So a post-labor economy is a market economy with one market shrunk to a remnant. The market for labor is nearly gone, and every other market works as before. The trouble is that the missing market was the one that most people depended on for their income.

== The three questions, answered

We can now answer the question from the start of @ch-growth: does the economy cease to function?

- *As a system of production*, no. It produces more than ever (@p-output-rises).
- *As a circuit of buying and selling*, no, once it has adjusted (@p-no-paradox). During the adjustment it may well break down for a time, as economies have before (@p-slump).
- *As a system that provides for the population*, yes, by default (@p-default). The channel through which most people received their share has narrowed to a remnant, and nothing in the market reopens it.

The economy keeps functioning. What it stops doing is functioning _for_ most people, unless something other than the labor market connects them to it.

#checkpoint[
  - Without wages, income is the return on what a person owns plus what they are given (@p-ownership). Ownership in the United States is far more concentrated than income (@p-default), and owning a commonly available machine does not change that.
  - "Who will buy?" has an answer: whoever receives the income. Production turns toward the wants of owners and toward investment (@p-no-paradox). No firm has a reason to preserve the purchasing power of the public.
  - A rapid shift can still cause a slump, through lower spending and unpayable debts (@p-slump).
  - Machine-made goods and services become cheap, so providing for everyone becomes cheap, but energy, well-placed land and other scarce things do not (@p-prices).
  - What remains is to ask what people can still be paid for (@ch-residual), and then who has the power to decide the distribution (Part III).
]
