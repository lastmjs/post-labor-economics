#import "template.typ": *

= Why two centuries of machines made workers richer <ch-history>

Machines have been taking over human work since the 1700s, and over that time the pay of ordinary workers in the industrial countries has multiplied many times over. Anyone who predicts that the next machines will be different has to explain first why the earlier ones were not. This chapter gives that explanation, and gives it in a form precise enough to test against the premise of this guide.

The standard reassurance goes like this. In 1800 about three quarters of Americans worked on farms. Today fewer than two in a hundred do, and the country grows far more food. The farm workers were not left idle forever; their grandchildren became machinists, clerks, nurses and programmers. People who warned that machines would cause permanent mass unemployment, from the Luddites in 1811 to the authors of the "Triple Revolution" memorandum sent to President Johnson in 1964, were wrong each time @lebergott-1966 @notes-history. Economists named the mistake the "lump of labor fallacy": the belief that there is a fixed amount of work to be done, so that a machine which does some of it leaves less for people.

The reassurance is correct about the past. But "it turned out fine before" is an observation, and what we need is the mechanism. A mechanism has conditions, and conditions can stop holding.

== Machines take tasks, and tasks are complements

#definition([Task])[
  A task is one distinct piece of work needed to produce something: welding a seam, diagnosing a fault, answering a customer's question. A job is a bundle of tasks. A machine never takes over a job as such. It takes over tasks.
] <d-task>

#axiom([Most production needs many tasks, all of them])[
  Making almost anything requires a number of different tasks, and more of one does not make up for the lack of another. A car needs designing, stamping, welding, wiring, testing, shipping and selling. Twice as much welding does not make up for no wiring. In the language of economics, tasks are _complements_.
] <a-complements>

The evidence for this axiom is all around. It is why a strike by a few hundred port crane operators can stop the trade of a whole coast. It is also the reason behind a famous pattern called Baumol's cost disease: the parts of the economy where productivity has grown slowly, such as health care and education, take a growing share of total spending, exactly because the things that became cheap could not be used in place of the things that did not.

Put the last two statements together with the rule about prices from the previous chapter and a result follows at once.

#proposition([The step that machines cannot do collects the reward], from: [@p-price, @d-task, @a-complements])[
  When machines make some tasks cheap and plentiful, the remaining tasks become the scarce step in production. Since inputs are paid for scarcity, more of the value of the product flows to whoever performs the remaining tasks. If people are the only ones who can perform them, automation raises wages.
] <p-bottleneck>

#aside([A worked example: the shirt economy])[
  A hundred workers make shirts. Each shirt needs one unit of cutting and one unit of sewing, and a worker can do one unit of either in an hour. Fifty workers cut and fifty sew, so the economy makes 50 shirts an hour. The workers are the only input, so they receive all 50 shirts between them: *half a shirt per hour of work*.

  Now someone invents a machine that cuts cloth for next to nothing. All hundred workers move to sewing, and the economy makes 100 shirts an hour. Sewing is now the only scarce step, so the sewers collect nearly all the value: close to *one shirt per hour of work*. The machine took over half of all the tasks that workers used to do, and the workers' real pay doubled.

  Notice what the result required. Sewing still had to be done by a person. The cutters had to be able to become sewers. And somebody had to want the extra 50 shirts. We will return to this economy in @ch-wages and add a second machine.
]

== The three conditions

The shirt example shows the mechanism in miniature, and it shows the conditions on which the mechanism depends. Stated generally:

#proposition([Why past automation raised wages], from: [@p-bottleneck, @a-scarcity])[
  Automation has raised the pay of workers when, and because, three conditions held together.
  + *Something was left.* There remained tasks that only people could do.
  + *What was left was needed.* Those tasks were complements to what the machines produced, so demand for them grew as machine output grew.
  + *People could get there.* Most workers, or their children, could move into the remaining tasks.
] <p-three-conditions>

For two hundred years the first condition held for a simple reason. Every machine ever built was _narrow_. A power loom weaves and does nothing else. A tractor pulls. A spreadsheet adds. A person, by contrast, is a general-purpose system: the same body and brain can weave, pull, add, negotiate, comfort a child and learn a trade that did not exist the year before. Whenever a narrow machine took over one task, there were always other tasks for which a general-purpose worker was the only candidate.

#axiom([Until now, people could do things that no machine could])[
  Through every earlier wave of automation, people kept abilities that no machine had: flexible reasoning, language, fine control of the hands in cluttered surroundings, and the understanding of other people. Each wave of machines pushed human work toward the abilities that remained exclusive.
] <a-generality>

You can read economic history as a sequence of such moves. Engines replaced muscle, and people moved to work that needed dexterity and attention on the factory line. Factory machines and then industrial robots took over the repetitive movements, and people moved to offices, to work that needed reading, calculating and coordinating. Computers took over the routine calculating and filing, and people moved again, toward work that needed judgment, persuasion, creativity and care, and toward manual work in unpredictable places, such as plumbing a hundred-year-old house. One study found that about 60 percent of American workers in 2018 held kinds of jobs that did not yet exist in 1940 @autor-2022. The new jobs appeared, and people filled them, because people were the only general-purpose workers there were.

The second condition held because of @a-complements and @a-scarcity: the remaining tasks were needed, and there was no limit to what people wanted. The third held most of the time, though slowly and at real cost.

== When the third condition failed

It is worth pausing on that cost, because history's reassurance is weaker than it sounds even for the episodes that ended well.

In Britain between 1780 and 1840, output per worker rose by 46 percent and real wages by 12 percent. For the thirty years after 1800, wages did not rise at all (@fig-engels). The gains went to the owners of the new factories, whose rate of profit doubled. Only after about 1840 did wages begin to rise in step with productivity. The historian Robert Allen named these decades "Engels' pause," after Friedrich Engels, who described the condition of English workers in 1845 as the pause was ending @allen-2009. A worker who was twenty in 1800 was sixty before pay began to keep pace.

#plot("../figures/engels_pause.svg", [
  *Engels' pause.* British output per worker and real wages, 1760 to 1900. Wages eventually caught up, because the new machines needed more workers as more machines were built. That is the link which a machine able to do all the work would cut.
], source: [index rebuilt from the growth rates in Allen (2009), Table 1. `models/fig_engels.py`]) <fig-engels>

The handloom weavers of England are the sharpest case. There were 240,000 of them in 1820, skilled workers with a respected trade who had earned two or three times a laborer's pay. The power loom did not make them unemployed at a stroke. It did something slower: it put a falling ceiling on what a piece of handwoven cloth could sell for. Their pay collapsed in the 1820s, a full decade before their numbers did. Then the trade emptied: two thirds of the jobs went between 1835 and 1845, and by 1860 about ten thousand weavers were left @allen-2018. Few of them moved to anything better. The gains from the loom were real and eventually reached almost everyone, but they reached a different generation.

The more recent case is the arrival of Chinese manufactured imports in the United States after 2000. Economic theory predicted that workers in the affected towns would move to other industries or other places. Mostly they did not. Nearly two decades later the places that had lost the most factory work still had lower employment and lower incomes, and studies have linked the same losses to fewer marriages, more dependence on public benefits and more deaths from drugs and alcohol @autor-dorn-hanson-2021 @notes-history.

The lesson to carry forward is that even when all three conditions hold for the economy as a whole, adjustment takes decades and its costs fall on particular people who are rarely compensated. That is the _good_ case.

== The horse

There is one large group of workers in modern history for whom the first condition failed completely. They were not human, which is why they are usually left out of the reassuring story, but the economics is exact.

In 1918 there were 26.7 million horses and mules on American farms, and millions more in the cities, pulling plows, wagons, streetcars and artillery. The horse had already survived one great wave of machines. Railways took over long-distance haulage in the 1800s and the number of working horses went on _rising_, because every ton that arrived by rail still had to be carted from the station. That was @p-bottleneck at work: the horse did the step the railway could not.

Then came the internal combustion engine, in the form of the tractor and the truck, and this machine was different in one respect. It could do everything a horse could do. No remaining step in farming or haulage needed a horse. From that point the price of a horse's work was capped by the cost of getting the same pulling and carrying from an engine (@p-price), and that cost fell every year. A horse, however, has an upkeep that does not fall: several acres' worth of feed, a stable, a farrier and a vet.

What happened next is recorded in detail @olmstead-rhode-2001 @census-1975. The price went first. The value of a working horse, after inflation, fell by more than half in the ten years after 1915. Cheaper horses stayed in use for a while, which is why the change took decades. But it no longer paid to breed them, and farmers stopped. Few horses were slaughtered. They grew old and were not replaced. By 1960 there were 3.1 million left on American farms (@fig-two-inputs).

#plot("../figures/two_inputs.svg", [
  *Two kinds of worker that machines replaced on American farms.* Farm work fell from three quarters of all work to one fiftieth, and the people moved to other work. Horses and mules had no other work to move to.
], source: [Lebergott (1966) and US Department of Agriculture for the farm share; Historical Statistics of the United States (1975), series K 570–573, for horses and mules. `models/fig_two_inputs.py`]) <fig-two-inputs>

#proposition([The horse lemma], from: [@p-price])[
  Suppose that for _every_ task an input can perform there is a substitute that performs it at lower cost than the input's own upkeep. Then the price of the input falls below its upkeep, and its use in production falls toward zero. Total output rises while this happens.
] <p-horse>

Nothing about this required horses to become worse at their work. A horse in 1950 was as strong and as willing as a horse in 1900. Nor did the economy have less need of pulling and carrying; it did far more of both. The work remained, and the horse stopped being the cheapest way to get it done.

The economist Wassily Leontief, who won the Nobel prize for mapping how industries feed into one another, drew the comparison in 1979 and again in 1983: the role of humans as the most important input to production, he argued, was bound to shrink in the same way the role of horses had @leontief-1979. For forty years this was treated as a provocation, because the first condition of @p-three-conditions so obviously held. Machines were narrow.

== Three ways people are not horses

The comparison is uncomfortable, and it should be handled with care, because there are three real differences between a population of horses and a population of people. Horses were never the purpose of the economy; people are. Horses owned nothing; people own things. And horses had no say in what happened to them; people vote. Leontief made the same point himself.

Put in terms of this guide: people are the _customers_ for whom production exists, they are (some of them) the _owners_ of the machines, and they are the _citizens_ of states that can tax and redistribute. Each of the three is a possible way out of the horse's fate. Whether any of them works is not settled by economics alone, and Parts II and III take them one at a time. For now it is enough to state what the horse does establish: an input's long record of benefiting from new technology is no protection once a technology arrives that can do everything the input does.

#checkpoint[
  - Machines take tasks. Because tasks are complements, the tasks that machines cannot do become the bottleneck and collect the reward (@p-bottleneck).
  - Automation raised wages for two centuries because three conditions held: something was left for people to do, it was needed, and people could move into it (@p-three-conditions). The first condition held because machines were narrow and people were general (@a-generality).
  - Even then, adjustment took a generation or more and the losers were seldom made whole.
  - Where the first condition fails entirely, the horse lemma applies (@p-horse): the input's price falls below its upkeep while output grows.
  - So the whole question turns on the first condition. The next chapter looks at a machine designed to remove it.
]
