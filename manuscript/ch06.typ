#import "template.typ": *

= What happens to production <ch-growth>

The last chapter ended with a bleak statement about wages. This one is its counterpart, and the two have to be held together. The same premise that takes away the value of work also describes the most productive economy that has ever existed. People who ask whether the economy will "cease to function" after labor is automated usually have one of three different things in mind:

+ Will it still be able to _produce_?
+ Will producers still be able to _sell_ what they make?
+ Will it still _provide_ for the population?

This chapter answers the first question. @ch-distribution answers the other two.

== Output rises

#proposition([Automation raises what the economy can produce], from: [@a-substitution, @a-production])[
  A producer replaces a person with a machine only when the machine does the task at lower cost, which means using up fewer resources for the same result. The resources saved are available to produce something else. Every act of automation therefore raises the total that the economy is able to produce.
] <p-output-rises>

Nothing in the premise destroys a factory, a farm or a power station. Every good that could be made before can still be made, with fewer inputs. Whatever problems the post-labor economy has, a shortage of goods is not among them. This sounds too obvious to need saying, but a great deal of writing about automation slides from "people lose their wages" to "the economy collapses," as if the two were the same event. They are not. The first is about distribution, and the second would be about production.

== Why growth has had a speed limit

To see how much more the economy could produce, we need to know what has limited its growth so far.

Output comes from combining work, tools, nature and knowledge (@a-production). Suppose you try to grow an economy just by building more tools. For a while it works. But the number of workers is fixed, and the tools pile up on them. The first laptop makes an office worker far more productive. The second adds a little. The tenth adds nothing. Economists call this diminishing returns, and it means that an economy cannot grow for long by adding tools to a fixed workforce.

Because of this, lasting growth in output per person has come almost entirely from the fourth input, knowledge: better recipes for combining the other three. In the United States, output per person has grown at about 2 percent a year since 1870, remarkably steadily. And new knowledge is itself produced by work, the work of researchers and engineers, whose number is limited by population and schooling.

So human work has been the speed limit twice over. It limits how much use can be made of additional tools, and it limits how fast new knowledge arrives.

#proposition([Machine labor removes the population limit on growth], from: [@d-machine-labor, @p-output-rises])[
  If machines can do the work, then work becomes something that can be manufactured, like any other tool. Tools and "workers" can then be multiplied together, and adding more of both does not run into diminishing returns in the way that adding tools to a fixed workforce does. The growth of the economy is then limited by how fast it can turn its output into more machines, and by whatever inputs still cannot be manufactured.
] <p-growth-limit>

There is a second effect on top of the first. If machines can do research, then the production of knowledge also stops being limited by the number of human researchers.

== How fast?

How much faster the economy would grow is the most disputed question in this whole field, and honest people who have studied it disagree by an order of magnitude. I will set out both sides and then say what the argument of this guide needs.

*The case for explosive growth.* In the standard models of economic growth, once the role of work can be filled by something that accumulates, growth speeds up without any further assumption. Output is reinvested in machines, the machines produce more output, and the loop has no fixed factor to slow it. Several careful studies conclude that growth rates of 20 or 30 percent a year, which would double the economy every three years or so, are plausible once nearly all tasks are automated; the authors of one review put the chance at about even, given full automation @erdil-besiroglu-2023 @hanson-2001 @davidson-2026. There is precedent for a change of this kind. Before the Industrial Revolution the world economy took many centuries to double, and since then it has doubled roughly every twenty years.

*The case for bottlenecks.* An economy is a chain, and a chain moves at the speed of its slowest link (@a-complements again). Even if most tasks are done a thousand times faster, the things that take time will still take time: pouring concrete, growing crops, running a clinical trial for years, getting a permit, waiting for a court. Things that cannot be manufactured will limit what can be built: energy first of all, then copper, land and water. And people will limit the pace through regulation and through simple slowness to adopt. On this view AI adds a percentage point or less to growth for some decades, as electricity and computers did. One recent model, calibrated to the strength of bottlenecks in the past, has AI raising American income by only 4 percent by 2050; the same model produces runaway growth if machines improve at the pace of computer chips in every task @jones-tonetti-2026 @aghion-jones-jones-2019 @acemoglu-2024.

Both sides are describing something real, and they are closer than they sound once you ask what the bottlenecks _are_. The explosive case depends on machines doing physical work at scale, because the bottleneck camp is right that an economy made of atoms cannot be sped up by thought alone. A world with machine minds and human hands has a hard limit on growth, and the limit is the hands. A world with both machine minds and machine hands does not have that limit, but it has the limits of energy and materials, and of the years it takes to build the factories that build the machines.

For the argument of this guide, the exact number does not matter, and I will lean on it as little as I can. What matters are two weaker statements that both sides accept. First, under the premise the economy's capacity to produce is much greater than today's and grows at least as fast. Second, the faster it grows, the faster machine labor becomes plentiful, and so the faster the wage results of @ch-wages arrive. Fast growth is good news about the size of the pie, and it shortens the time available to settle who gets it.

== Where the scarcity goes

When one input becomes plentiful, the income it used to earn does not disappear. By @p-identity it must be paid to someone. By @p-price it is paid to whatever is still scarce.

#proposition([Income moves to what cannot be multiplied], from: [@p-identity, @p-price, @p-at-cost])[
  As machine labor becomes plentiful, the share of income paid for work falls, and the same income is paid to the owners of whatever remains scarce. While machines are being built out, that includes the machines themselves and the things needed to make and run them: chips, power, the sites where both can be had. In the long run, machines are reproducible and earn only an ordinary return, and the surplus goes to what cannot be reproduced: land and location, energy and raw materials, legal permissions, and market positions protected from competition.
] <p-rents>

This is an old result in a new setting. Ricardo worked it out for an economy of farmers two hundred years ago. As the population grew on a fixed amount of land, he argued, the wage would stay near subsistence, the return on tools would be competed down, and the surplus would go to the landlords as rent. He was wrong about his own century, because people did not multiply as his model assumed and technology outran them. The reasoning was sound, and it applies exactly to a population of machines that _can_ multiply without limit.

Two practical consequences are worth drawing out, because they cut against a common picture.

The common picture is that "the owners of the AI" take everything. That may happen, but it does not follow from the economics. If many firms can build capable AI, and it is easy for a customer to switch between them, then competition pushes the price of machine work down to cost (@p-at-cost) and the makers of AI earn ordinary profits, as the makers of personal computers eventually did. In that case the gains go first to the customers, as low prices, and then, as the economy expands, to the owners of the things the expansion runs short of. The evidence of 2026 is mixed on which way this is going, and @ch-now looks at it.

The second consequence concerns what a society could tax or share. Land, energy sites, mineral rights, radio spectrum and legal permissions have a property that economists have prized since Henry George: they stay where they are. A tax on the rent of something that cannot be moved or hidden, and that nobody made, does not reduce the supply of it. The post-labor economy concentrates income in exactly the kind of asset that is easiest to tax without doing harm. @ch-policy comes back to this.

== What a faster-growing, labor-free economy does to interest and asset prices

One more piece of machinery needs describing, briefly, because it shapes the transition.

When there are very profitable things to build, the demand for the funds to build them is high, and the price of funds, the real interest rate, is pulled up. Under the premise there is an almost unlimited amount of profitable building to do: every machine that can replace a wage at a fraction of its cost is a profitable investment. Theory therefore predicts high real interest rates during the build-out, perhaps much higher than any in living memory @chow-halperin-mazlish-2026. Markets do not yet expect this. The interest rate on long-term American government debt, after inflation, was about 3 percent in November 2026: the highest since 2008, and nowhere near what investors would demand if they expected the economy to double every few years.

High rates lower the present value of every fixed stream of future payments. At the same time, incomes shift from wages to profits and rents. So the build-out revalues assets in a predictable direction. Claims on scarce inputs to the machine economy gain. Claims that depend on wages being paid lose: consumer loans, mortgages in cities that live on office work, shops that serve the middle of the market, and the tax base of any government that leans on payrolls. None of this is advice about any particular asset, and timing such changes is notoriously hard. The point is structural: a great deal of the existing financial system is a set of promises that assume wages will continue, and @ch-distribution shows why that makes the transition fragile.

#checkpoint[
  - Under the premise the economy can produce more than ever (@p-output-rises), and the population limit on its growth is gone (@p-growth-limit). How much faster it grows is disputed, and depends above all on machines doing physical work.
  - The income that wages used to carry moves to whatever stays scarce: at first the machines and their inputs, in the end the things that cannot be manufactured (@p-rents).
  - So the first of the three questions has a clear answer. The economy does not cease to function as a system of production. The open questions are whether producers can sell what they make, and whether the population can buy it.
]
