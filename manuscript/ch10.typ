#import "template.typ": *

= The choices <ch-policy>

The argument so far has produced a clear specification of the problem. Production is abundant (@p-output-rises). The wage, which connected most people to it, has stopped doing so (@p-share-zero). The market supplies no replacement (@p-default, @p-residual). A replacement is affordable (@p-affordable), and it is easier to put in place while the majority still has leverage (@p-window).

This chapter lays out what the replacement could be. It is organized by the logic of @d-income, which said that income can come only from work, from ownership or from transfers. Nearly every proposal for a post-labor economy does one of four things: it keeps the work channel open by rule, it opens the transfer channel, it opens the ownership channel, or it reduces how much income a person needs. I take them in that order, and then ask what the chain of reasoning says about choosing among them. A fifth kind of response, slowing or stopping the technology itself, is of a different character and appears as a scenario in Part IV.

== Keeping the work channel open by rule

The first family of responses tries to preserve the link between work and income by making sure there are jobs for people, whether or not machines could do them.

*Reserving work for people.* A law can require that a human being drive the truck, sign the diagnosis, teach the class or approve the dismissal. A union contract can forbid a kind of machine. Such rules exist and are spreading. The East Coast dockworkers won a contract in 2025 that bars fully automated equipment from their ports. Eight American states passed laws in 2026 requiring a human to review adverse decisions by health insurers. Bills requiring a human operator in heavy autonomous trucks have been introduced in many states, though governors have so far vetoed the ones that passed @policy-notes.

Reserving work has two strengths and three weaknesses. It buys time, and by @p-window time is what the majority most needs. And for those it covers it lasts, because the people a reservation protects know exactly what they stand to lose and will fight for it; licensed professions have defended their ground for a century. The weaknesses are these. It costs output, because a task is done the expensive way. It leaks, because a firm, a state or a country that does not impose the rule can undercut one that does; it therefore holds best in work that is local and already regulated, such as health care, schools, courts and government, and worst in anything traded. And it is narrow. A job that exists only because the law forbids a cheaper machine is a transfer from customers to the job-holder, and it goes to whoever happened to hold the protected position. The pattern in who has won such protection so far makes the point: the dockworkers, who can close a port, won a ban, and unions without a chokepoint won the right to be notified.

*Subsidizing and sharing work.* Governments can pay part of a wage, insure workers against a fall in pay, pay for retraining, or shorten the standard week so that the remaining work is spread over more people. These fit the period of partial automation well. Shorter hours are how much of the last century's productivity gain was taken: the working week in American manufacturing fell from nearly sixty hours to forty between 1900 and 1940. Retraining has a weaker record than its popularity suggests, and it has a logical limit, since it helps only if there is something to retrain _for_ (@p-three-conditions). All of these tools assume that human work is still worth something close to its wage. They stretch the transition and do not survive its end.

*Guaranteeing work.* The state can offer a job to anyone who wants one, in care, in public works, in community service. Under the full premise these are human-required jobs created by decree (@d-human-required), which makes the program a transfer with a condition attached. That is not an argument against it. The condition is what many people want. In a 2026 survey of about three thousand Americans, published with a group that advocates national service, respondents asked how government should respond to job losses from AI preferred support earned through service to an unconditional payment by seven to one @more-in-common-2026. A guaranteed job supplies structure and standing as well as income (@ch-residual). Its difficulty is administrative: no country has run such a program for tens of millions of people.

== Opening the transfer channel

The second family pays people directly: a universal basic income, a negative income tax that tops up low incomes, or broader unemployment and retirement benefits.

*What the evidence shows.* The best American experiment gave a thousand low-income adults \$1,000 a month for three years. They worked a little less, by one to two hours a week, and about four in a hundred left the labor force. Stress and hunger fell at first, and there was no lasting improvement in measured health @vivalt-2024 @policy-notes. Alaska has paid every resident a yearly dividend since 1982 with no detectable effect on total employment @jones-marinescu-2022. Studies in Kenya, Iran, Finland and Germany found small or no reductions in work. Across the evidence, people who are given money mostly keep working, and the benefits are real and more modest than advocates claimed. But there is a gap in all of it that matters for this guide: every study gave cash to people who could still find work. Nobody has tested cash in an economy where the demand for work has collapsed.

*What it costs.* @tab-ubi gives the arithmetic for the United States.

#figure(
  datatable(
    columns: (1.6fr, 1fr, 1fr, 1fr),
    align: (left, right, right, right),
    header: ([Payment to every adult], [Cost per year], [Share of output], [Share of federal revenue]),
    [\$500 a month], [\$1.6 trillion], [5%], [30%],
    [\$1,000 a month], [\$3.2 trillion], [10%], [60%],
    [About \$16,000 a year (the poverty line for one person)], [\$4.3 trillion], [13%], [80%],
    [\$2,000 a month], [\$6.5 trillion], [20%], [120%],
  ),
  caption: [The gross cost of a universal payment in the United States, taking 270 million adults, output of \$33 trillion and federal revenue of \$5.4 trillion in fiscal 2026. Today much of the cost could be recovered by taxing the payment back from higher earners. In a post-labor economy there are few earners to recover it from, and the net cost approaches the gross cost @policy-notes.],
) <tab-ubi>

*Where the money would come from.* It cannot come from the present tax base, most of which is the wage income that is disappearing (@p-fiscal). It has to come from the income of the machine economy. Here @p-identity is reassuring: the dollars that stop being paid as wages do not vanish. They become profits and rents, and a tax on those at the rate now applied to wages would raise about what the wage taxes did. The base is there. Taxing it is a matter of will and design.

On design, economic theory offers some guidance and no single answer. One well-known result is that a tax aimed specifically at robots is justified only while today's workers cannot retrain, and should fall toward zero afterward @guerreiro-2022. Other studies find a case for a lasting tax on distributional grounds, and one finds that the American tax code already tilts so far toward machines that simply taxing work and machines alike would raise employment @acemoglu-manera-restrepo-2020. Taxes on AI alone raise very little at present: 3 percent of AI revenue is about \$3 billion for every \$100 billion of revenue, against a need measured in trillions @policy-notes. The most efficient things to tax are the ones @p-rents identified: the rents of what cannot be multiplied, such as land, energy sites and legal monopolies, and the windfall gains on assets that were already in place. Taxing those does not reduce the supply of anything @korinek-stiglitz-2019. They may not be large enough to carry the whole load. Broad taxes on capital income and on consumption can raise far more, and they carry a cost that is larger in a post-labor economy than today, because when growth runs on reinvested profits, a tax on profits slows growth directly @trammell-korinek-2025.

*The weakness of transfers is durability.* A transfer is a decision that a legislature makes again every year. In 2021 the United States expanded its tax credit for children, and the share of children in poverty fell from 9.7 percent to 5.2 percent, the lowest on record. The expansion lapsed after one year, and child poverty went back above 12 percent @census-poverty-2023. Compare Social Security, which has survived ninety years of attempts to cut it.

== Opening the ownership channel

The third family goes to the root. @p-ownership says that when wages are gone, income follows ownership. So change who owns.

There are several ways. A _public fund_ can hold a share of the nation's productive assets and pay everyone a dividend, as Alaska's does with oil. _Personal accounts_ can be funded for every citizen. _Employees_ can be given shares in the firms they work for. Each of these has moved from theory to live politics in the United States with surprising speed @policy-notes.

- The 2025 tax law created investment accounts for children with a \$1,000 federal deposit for each child born from 2025 to 2028, and in October 2026 the government announced that more than sixty million other children would be enrolled automatically.
- In early June 2026 President Trump said the government might take stakes in the leading AI companies. On 18 June Senator Sanders introduced a bill to move half the shares of large AI companies into a public fund paying every resident about \$1,000 a year @sanders-2026. In July, OpenAI was reported to have proposed giving the government 5 percent of itself @cnbc-openai-stake-2026.
- The federal government already holds about a tenth of Intel and stakes in a number of mining and chip companies.
- The chief executive of OpenAI proposed in 2021 a fund fed by an annual levy of 2.5 percent on the value of large companies, paid in shares, and on the value of land, which on his arithmetic would pay each adult about \$13,500 a year within a decade @altman-2021.

The case for ownership follows from two earlier results. It is the channel that still works under the full premise (@p-ownership). And a share of capital income grows with the machine economy automatically, where a fixed payment has to be raised by a new vote each time.

Ownership has real difficulties too. The amounts needed are very large. To pay each of 270 million adults \$12,000 a year from the returns on a fund, at a 4 percent payout, would take a fund of about \$80 trillion, which is more than two fifths of all the wealth American households own today. That is \$300,000 for every adult; the children's accounts enacted so far put in \$1,000. A fund of the size required cannot be bought. It could only be built by claiming a share of the _growth_ in the value of the machine economy over many years. There is a problem of governance when the state is both a large owner of companies and their regulator. And a dividend requires profits, which most AI companies do not yet have.

== Reducing the need for income

The fourth family works on the other side of the ledger. If the things people need are provided directly or made very cheap, a small income goes a long way.

@p-prices does much of this without any policy at all: under the premise, the price of anything machines make falls toward its cost. What policy can do is protect that process and extend it to the things that would otherwise stay expensive. Competition has to be kept alive among the suppliers of machine work (@h-competitive), or the fall in costs is kept as profit and never reaches prices. Medical, legal and educational services become cheap only if the rules that reserve them for licensed people are changed to let machine expertise in. And housing becomes cheap only where building is permitted.

This family has an appealing property: it does not require agreeing on who deserves what. It is also the one most exposed to the conflict described under the first family, since every rule that keeps a service expensive is also somebody's protected job.

== What makes a claim last

If @h-leverage is right, the hardest question about any of these is whether it survives after most of the majority's leverage has gone. The record of what has lasted, and what has not, suggests an answer.

Social Security has lasted ninety years as an ordinary law, with no property right behind it. Alaska's dividend has been paid every year since 1982, and a governor who cut it in 2016 did not win another term; but since a court ruling in 2017 its _amount_ has been set by the legislature each year, and the 2025 payment of \$1,000 was among the smallest ever in what it would buy @alaska-pfd @notes-history. The expanded child credit of 2021 lasted one year. When Russia gave every citizen a voucher for shares in privatized industry in the early 1990s, most people sold theirs cheaply within months, and ownership ended up in few hands. Argentina in 2008, Hungary in 2010 and Poland in 2014 each took private pension accounts into the public budget in a fiscal squeeze, while leaving ordinary pension benefits in place. And protected occupations have held their privileges for generations.

Legal form, then, is not what decides it. What the durable arrangements share is a set of features.

#hypothesis([What makes a claim last])[
  A claim on the output of the machine economy is more likely to outlast the majority's leverage when it is _universal_, so that nearly every voter holds it; _automatic_, so that it is paid by formula and does not have to be voted again; _visible_, so that each holder knows what they have and would notice its loss; and _costly to reverse_, in law and in politics. A share in a public fund that cannot be sold, with the dividend set by formula, has all four. An emergency payment has none. _This is a generalization from the handful of cases above and not a deduction. My confidence: about two in three. If it is wrong, the ranking that follows is wrong with it, and timing (@p-window) is the only guide left._
] <h-durable>

This ranks the four families differently from how they rank on ease. Ownership held in common and paid out by formula comes first. Entitlements that switch on automatically, such as unemployment benefits tied to the unemployment rate, come second. Annual appropriations and one-time payments come last. Reserved jobs are a special case: they last well, but only for their holders.

It also shows the limit of the argument. If entitlements without leverage erode, then so in time may these. The claim is comparative. Some forms erode much more slowly than others, and the slow ones are those that turn the whole electorate into a constituency with something specific to lose.

== What the argument says about choosing

No single one of these is sufficient, and any real response will combine them. The chain of reasoning does, however, say three things.

*Timing decides what is possible.* By @p-window, the leverage of the majority declines along the transition. Durable claims are worth far more if enacted early, because later they will have to be extracted from stronger hands by weaker ones. Measures that only buy time, such as reserving jobs, are worth having mainly in order to enact the durable ones.

*The test of any proposal is one question.* Does it give ordinary people a claim on the output of the machine economy that grows as that economy grows and that does not have to be won again every year? A proposal that passes this test addresses the problem this guide has derived. One that fails it is at best a way of managing the transition.

*What is politically natural is not what is durable.* The path of least resistance, in a country that prefers earned support and distrusts "basic income," runs through protected jobs, extended unemployment benefits and one-off checks. The first of these lasts but is narrow; the others are broad but do not last. The form that is both broad and lasting, a real ownership stake paid out by formula, is the largest departure from present arrangements. Part IV has to forecast which of these the United States will actually do, and it will not assume that the country does what the argument recommends.

#checkpoint[
  - There are four families of response: keep jobs by rule, pay transfers, spread ownership, or lower the cost of what people need.
  - Job protection buys time at a cost, leaks through competition, and lasts only for its holders. Transfers are affordable and fragile. Ownership requires very large sums, which can only come from a share of future growth. Cheaper essentials help everyone and collide with protected jobs.
  - Claims last when they are universal, automatic, visible and costly to reverse (@h-durable), and the time to create them is early (@p-window).
  - The chain of deduction ended with @p-affordable in the last chapter, and the judgment about durability in this one is a hypothesis drawn from history. This completes the argument from first principles. Everything so far has been conditional on the premise. Part IV asks how much of the premise is true today, how fast the rest is arriving, and what the United States is likely to do about it.
]
