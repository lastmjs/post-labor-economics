#import "template.typ": *

= Who receives the output <ch-distribution>

We now have an economy that can produce more than ever (@ch-growth) and in which work no longer pays (@ch-wages). This chapter asks where the output goes. It also takes up the oldest objection to the whole line of thought, the one most people raise first: _if nobody earns a wage, who will buy the products?_

== The default: income follows ownership

Recall that income can come only from work, from ownership or from transfers (@d-income). Remove the first and two remain.

#proposition([Without wages, income follows ownership], from: [@d-income, @p-identity, @p-wages-fall])[
  Under the premise, all of the economy's income is paid to the owners of machines, land, natural resources and legal rights. Any person's claim on output is then the return on what they own plus whatever is transferred to them.
] <p-ownership>

So the question "who receives the output?" becomes "who owns things?" The answer for the United States is on record. // CHECK all figures in this section against research 05

#figure(
  datatable(
    columns: (auto, auto, auto, auto),
    align: (left, right, right, right),
    header: ([Group of households], [Share of all wealth], [Share of company shares], [Share of income today]),
    [Wealthiest 1%], [31%], [50%], [—],
    [Next 9%], [36%], [37%], [—],
    [Middle 40% (50th to 90th percentile)], [30%], [12%], [—],
    [Less wealthy half], [2.5%], [1%], [—],
  ),
  caption: [Who owns what in the United States. Wealth is far more concentrated than income, and ownership of companies is more concentrated than wealth as a whole. PLACEHOLDER VALUES.],
) <tab-wealth>

Income today is unequal, but it is much less unequal than wealth, and the reason is wages. Most people own little (@a-labor-only) and nonetheless receive a real share of output, because they sell work. Take the wage away and the distribution of income moves toward the distribution of ownership.

#proposition([The default distribution], from: [@p-ownership, @a-labor-only])[
  If nothing else changes, the distribution of income in a post-labor economy converges on the distribution of wealth, which is several times more concentrated than the distribution of income is today. The less wealthy half of American households, who now receive a meaningful share of national income, own about a fortieth of national wealth.
] <p-default>

The position of a typical household is worse than its share of wealth suggests, for two reasons. First, most of what a middle household owns is its house and its retirement accounts. A house provides shelter but pays no cash. Second, most households carry debts that were taken on in the expectation of wages: a mortgage, a car loan, student loans. A household with a home worth \$400,000, a mortgage of \$250,000 and a retirement account of \$100,000 is comfortably middle class today. With no wage it has payments to make and a few thousand dollars a year of investment income to make them with.

That is the default. It is what the rules of a market economy produce if they are simply left running under the premise. Whether they will be left running is the subject of Part III.

== "But who will buy the products?"

Here is the objection in its strongest form.

#objection([An economy without wage earners has no customers])[
  Workers are also consumers. If machines replace workers, the workers have no income; if they have no income, they cannot buy what the machines make; if nobody buys, the firms that own the machines have no revenue and the machines have no value. So mass automation is self-defeating. Either it will stop short, or firms will have to keep paying people, or the whole system will seize up.
]

There is a story, probably invented, that a Ford manager once showed the union leader Walter Reuther a line of new automatic machines and asked how he planned to collect union dues from them, and that Reuther asked how Ford planned to get them to buy cars. The exchange is quoted because it feels unanswerable. It has an answer, and the answer is in @p-identity.

Every dollar of output is somebody's income. That is true with or without workers. If a factory sells \$1 billion of goods and pays no wages, the \$1 billion does not vanish. It is paid to the factory's suppliers and owners. _They_ now have the income that the workers used to have, and they can spend it. The firm has lost its workers as customers and gained its owners as customers, for the same total. A firm does not care whose dollars it receives.

"But the owners are few, and a few people cannot eat a million loaves of bread." True, and so the economy stops making a million loaves of bread for them. It makes what the people with the income want. There are two things they can do with it.

They can _consume_: larger houses, private aircraft, staff, art, medical care at the frontier, security, travel, political influence. Wants are unlimited (@a-scarcity), for the rich as for everyone.

Or they can _invest_: use the output to build more machines, more power plants, more data centers. Under the premise this is very attractive, because the return on new machines is high (@ch-growth). An economy can direct a large part of its output to building its own future capacity for a long time. China has invested more than 40 percent of its output every year for two decades. // CHECK China investment share

#proposition([There is no demand paradox, only a change in what is produced], from: [@p-identity, @a-scarcity])[
  A post-labor economy does not run out of buyers. Total income still equals total output. What changes is whose wants direct production. Spending shifts from what wage earners buy toward what the owners of capital and land want to consume, toward investment in more machines, and toward whatever governments purchase.
] <p-no-paradox>

History has many economies organized this way, in which most of the people were not the customers production was for. In the slave plantations of the Caribbean and the American South, output went to export and to the planters. In several oil states of the Persian Gulf today, the economy runs on a resource that needs few local workers, and the population lives on what the state passes on. Pharaohs directed the surplus of the Nile into monuments. Such economies can last for centuries. They show that "the circular flow must include the masses" is not a law of economics. It is a feature of economies in which the work of the masses is needed.

What about Henry Ford, who famously doubled his workers' pay to five dollars a day in 1914, supposedly so that they could afford his cars? He did it to stop his workers quitting. No firm can create its own customers by paying wages, because its workers spend only a tiny part of their pay on its products. Each firm gains by cutting its own wage bill and loses only when all the others cut theirs. So even if every firm understood that mass purchasing power served them all, no single firm would have a reason to preserve it. The purchasing power of the public is a shared resource that no firm owns, and markets do not look after resources that nobody owns.

So the answer to the second of our three questions is yes: producers can sell what they make. They sell to different buyers. A good way to keep this in mind is that the post-labor economy does not have a demand problem. It has a _whose-demand_ problem.

== The transition is where demand can break

That was the destination. The journey is more dangerous, and here the objection has real force. The economy can move from one pattern of spending to another, but it cannot do so quickly without things breaking, for three reasons.

*Wage earners spend what they get; owners mostly do not.* A household living on wages spends nearly all of its income. A wealthy household that receives an extra dollar of profit spends a small part and saves the rest. When income moves quickly from wages to profits, total spending falls unless investment or government spending rises at the same moment by the same amount. There is no mechanism that guarantees the timing.

*Debts are fixed in dollars.* American households owe about \$18 trillion, most of it mortgages, on the assumption that wages will arrive. When wages stop, payments stop. Defaults damage banks, banks lend less, house prices fall, and households who still have jobs cut spending because they feel poorer. This is the mechanism that turned the 1929 crash into the Great Depression and the 2007 housing bust into the Great Recession. // CHECK debt total

*Recessions are when the cuts happen.* Firms are reluctant to dismiss workers in good times and quick to do it in bad times. Studies of recent decades find that routine jobs were destroyed almost entirely during recessions and did not come back in the recoveries. A downturn caused by displacement therefore causes more displacement. // CHECK Jaimovich & Siu

#proposition([A fast transition can produce a slump in the middle of abundance], from: [@p-wages-fall, @p-no-paradox])[
  If wage income falls faster than other spending rises to replace it, the result is an ordinary recession on top of the structural change: falling sales, defaults, failing lenders and further layoffs. The economy's ability to produce is unharmed throughout. What fails is the flow of spending.
] <p-slump>

Two things can offset the fall in wage-earners' spending while it happens. One is a boom in investment: if firms are spending hundreds of billions of dollars a year on data centers, chips and power plants, that spending is income for someone and can hold total demand up even while employment weakens. The result is growth without jobs. The other is the government, which can put money directly into households' hands and borrow or tax to pay for it, as the United States did on a very large scale in 2020. Part IV argues that the United States will see both, in that order.

== What gets cheap, and what does not

So far this chapter has been about incomes. The other half of anyone's standard of living is prices, and here the news is good, with an important exception.

#proposition([Machine-made things get cheap; scarce things do not], from: [@p-at-cost, @p-rents])[
  Competition pushes the price of anything machines can make toward the cost of making it, and that cost falls with the cost of machine labor. Anything whose supply is limited by nature, by position or by law does not get cheaper, and tends to get more expensive relative to everything else.
] <p-prices>

On the cheap side: manufactured goods of every kind; software and entertainment; transport, once vehicles drive themselves; and, most strikingly, expertise. A consultation with a doctor, a lawyer, an accountant or a tutor is expensive today because it uses the time of a highly trained person. Under the premise the knowledge is available at the cost of electricity. In time the same applies to building things and growing food, as machines take over the physical work.

On the other side: land in places people want to live, which is most of the cost of housing in every prosperous city. Energy, at least while the build-out strains supply. Anything rationed by rank, such as a place at a famous university or a house in the best school district, since rank cannot be mass-produced. Anything the law requires a licensed person to provide. And the time and attention of other human beings.

This split has a consequence that is easy to get wrong in both directions. It is _not_ true that falling prices make the loss of wages harmless, because a person still needs somewhere to live, and land is exactly what does not get cheap. But it _is_ true that the income a person needs for a materially decent life falls a long way, perhaps to a fraction of today's median wage, provided they have a place to live. The post-labor economy makes the cost of providing for everyone lower than it has ever been. Whether everyone is provided for is a separate matter, and it is not an economic one.

== The three questions, answered

We can now answer the question from the start of @ch-growth: does the economy cease to function?

- *As a system of production*, no. It produces more than ever (@p-output-rises).
- *As a circuit of buying and selling*, no, once it has adjusted (@p-no-paradox). During the adjustment it may well break down for a time, as economies have before (@p-slump).
- *As a system that provides for the population*, yes, by default (@p-default). The channel through which most people received their share has closed, and nothing in the market reopens it.

The economy keeps functioning. What it stops doing is functioning _for_ most people, unless something other than the labor market connects them to it.

#checkpoint[
  - Without wages, income is the return on what a person owns plus what they are given (@p-ownership). Ownership in the United States is far more concentrated than income (@p-default).
  - "Who will buy?" has an answer: whoever receives the income. Production turns toward the wants of owners and toward investment (@p-no-paradox). No firm has a reason to preserve the purchasing power of the public.
  - A rapid shift can still cause a slump, through lower spending and unpayable debts (@p-slump).
  - Machine-made goods and services become cheap, so providing for everyone becomes cheap, but land and other scarce things do not (@p-prices).
  - What remains is to ask what people can still be paid for (@ch-residual), and then who has the power to decide the distribution (Part III).
]
