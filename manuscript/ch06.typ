#import "template.typ": *

= What happens to production <ch-growth>

The last chapter ended with a bleak statement about wages. This one is its counterpart, and the two have to be held together. The same premise that takes away the value of work also describes the most productive economy that has ever existed. People who ask whether the economy will "cease to function" after labor is automated usually have one of three different things in mind:

+ Will it still be able to _produce_?
+ Will producers still be able to _sell_ what they make?
+ Will it still _provide_ for the population?

This chapter answers the first question. @ch-distribution answers the other two.

== Output rises

#proposition([Automation raises what the economy can produce], from: [@a-substitution, @a-production])[
  A producer replaces a person with a machine when the machine does the task at lower cost. Where the lower cost reflects a real saving of resources, the resources saved are available to produce something else, and the total that the economy is able to produce goes up. Under the premise the saving is very large.
] <p-output-rises>

Two qualifications keep this honest. A firm compares costs after tax, and the American tax system taxes work much more heavily than machines, so some automation happens that saves the firm money without saving real resources. And a few formal models find that automation can lower output in the long run if displaced workers, having lost their wages, stop saving and the stock of capital shrinks. Neither changes the picture under the premise, where a machine does the work for a small fraction of the resources a person needs.

Nothing in the premise destroys a factory, a farm or a power station. Every good that could be made before can still be made, with fewer inputs. Whatever problems the post-labor economy has, a shortage of goods is very unlikely to be among them. This sounds too obvious to need saying, but a great deal of writing about automation slides from "people lose their wages" to "the economy collapses," as if the two were the same event. They are not. The first is about distribution, and the second would be about production.

== Why growth has had a speed limit

To see how much more the economy could produce, we need to know what has limited its growth so far.

Output comes from combining work, tools, nature and knowledge (@a-production). Suppose you try to grow an economy just by building more tools. For a while it works. But the number of workers grows slowly, and the tools pile up on them. The first laptop makes an office worker far more productive. The second adds a little. The tenth adds nothing. Economists call this diminishing returns, and it means that an economy cannot grow for long by adding tools to a fixed workforce.

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

For the argument of this guide, the exact number does not matter, and I will lean on it as little as I can. What matters are two weaker statements. First, under the premise the economy's capacity to produce is much greater than today's and grows at least as fast. Both sides accept that. Second, the faster the economy grows, the sooner the wage comes loose from it (@p-share-zero), because that happens as soon as machines are doing the work. Fast growth is good news about the size of the pie, and it shortens the time available to settle who gets it.

Growth and the wage level interact in a way that is easy to get backwards. A fast-growing machine economy is one in which machines are still scarce relative to all there is for them to do, so by @p-at-cost the machine price, and with it the ceiling on wages, is high. The fall in the ceiling toward bare cost belongs to the later phase, when growth is slowing against the limits of energy, materials and land. The two things people fear and hope for, explosive abundance and wages driven down to machine cost, are successive phases and do not arrive together.

== Where the scarcity goes

When one input becomes plentiful, the income it used to earn does not disappear. By @p-identity it must be paid to someone. By @p-price it is paid to whatever is still scarce.

#proposition([Income moves to the owners of machines and of what cannot be multiplied], from: [@p-identity, @p-price, @p-at-cost])[
  As machine labor becomes plentiful, the share of income paid for work falls, and the same income is paid to owners. While machines are being built out, they and the things needed to make and run them, chips, power, sites, earn more than an ordinary return. In the long run machines can be reproduced and earn only an ordinary return on what they cost, but there are so many of them that this ordinary return is most of the economy's income. Anything _beyond_ an ordinary return goes to what cannot be reproduced: land and location, energy and raw materials, legal permissions, and market positions protected from competition.
] <p-rents>

A word on a word. Economists call the income of something that cannot be reproduced a _rent_, whether or not it is land. The term comes up often from here on.

How the income divides between the owners of machines and the owners of scarce nature depends on how hard it is to substitute one for the other, and theory allows a wide range. If nature can be economized easily, its owners keep a small share, as they do today, and nearly everything goes to the owners of machines. If it cannot, the share of land, energy and minerals rises as everything else becomes abundant @trammell-korinek-2025. Workers are not among the recipients in either case.

This is an old result in a new setting. Ricardo worked it out for an economy of farmers two hundred years ago. As the population grew on a fixed amount of land, he argued, the wage would stay near subsistence, the return on tools would be competed down, and the surplus would go to the landlords as rent. He was wrong about his own century, because people did not multiply as his model assumed and technology outran them. The reasoning was sound, and it applies exactly to a population of machines that _can_ multiply without limit.

Two practical consequences are worth drawing out, because they cut against a common picture.

The common picture is that "the owners of the AI" take everything. That may happen, but it does not follow from the economics. If many firms can build capable AI, and it is easy for a customer to switch between them, then competition pushes the price of machine work down to cost (@p-at-cost) and the makers of AI earn ordinary profits, as the makers of personal computers eventually did. In that case the gains go first to the customers, as low prices, and then, as the economy expands, to the owners of the things the expansion runs short of. The evidence of 2026 is mixed on which way this is going, and @ch-now looks at it.

The second consequence concerns what a society could tax or share. Land, energy sites, mineral rights, radio spectrum and legal permissions have a property that economists have prized since Henry George: they stay where they are. A tax on the rent of something that cannot be moved or hidden, and that nobody made, does not reduce the supply of it. That makes rents the best thing to tax. They may not be large enough: by one estimate taxes on land could raise no more than about a twentieth of output @trammell-patel-2025, and how far rents grow under the premise is the open question of the previous paragraph. @ch-policy comes back to this.

== Interest rates as a signal

One more piece of machinery needs describing, briefly, because it gives a way to tell which story is coming true.

When there are very profitable things to build, the demand for the funds to build them is high, and the price of funds, the real interest rate, is pulled up. Under the premise there is a great deal of profitable building to do. Theory therefore predicts high real interest rates during the build-out, perhaps much higher than any in living memory @chow-halperin-mazlish-2026. There are forces the other way. If income shifts toward people who save most of it, or if households save more out of fear for their jobs, the supply of funds rises and rates are pulled down. A slump in spending of the kind described in @ch-distribution lowers them too.

So the long-term real interest rate is a useful gauge. If the machine economy is taking off, it should rise well above its historical range. If displacement is draining demand faster than investment replaces it, it should fall. In November 2026 the rate on long-term American government debt, after inflation, was about 3 percent: the highest since 2008, and nowhere near what investors would demand if they expected the economy to double every few years. Markets are pricing an investment boom. They are not pricing a transformation.

The same shift moves the value of existing claims. Claims on scarce inputs to the machine economy gain. Claims that depend on wages being paid lose: consumer loans, mortgages in cities that live on office work, shops that serve the middle of the market, and the tax base of any government that leans on payrolls. None of this is advice about any particular asset, and timing such changes is notoriously hard. The point is structural: a great deal of the existing financial system is a set of promises that assume wages will continue, and @ch-distribution shows why that makes the transition fragile.

#checkpoint[
  - Under the premise the economy can produce more than ever (@p-output-rises), and the population limit on its growth is gone (@p-growth-limit). How much faster it grows is disputed, and depends above all on machines doing physical work.
  - The income that wages used to carry moves to owners: of the machines, and of the things that cannot be manufactured (@p-rents).
  - So the first of the three questions has a clear answer. The economy does not cease to function as a system of production. The open questions are whether producers can sell what they make, and whether the population can buy it.
]
