#import "template.typ": *

= What sets the pace <ch-speed>

The argument of Parts II and III tells us where the premise leads. It does not tell us when. The speed of the transition is governed by five separate clocks, which run at very different rates, and most of the confusion in public debate comes from reading one clock and assuming it sets the time for all.

== Five clocks

*The capability clock runs in months.* The length of task that AI systems can complete has been doubling about every four months. The share of real freelance projects on which their work passes rose from 16 percent to 41 percent in four months of 2026. This is the clock the AI laboratories watch, and by it the premise for mental work is a small number of years away.

*The diffusion clock runs in years.* Diffusion is the spread of a method from the first firms that use it to the rest. The share of American firms using AI at all rose from 17 percent to about 25 percent in the eleven months to October 2026, which is steady and unspectacular. About 40 percent of workers use it for something, a figure that did not move between November 2025 and August 2026, and it is in use during about 5 percent of all hours worked @census-btos-2026 @bick-blandin-deming-2026. Executives at nearly nine thousand firms in seven countries report that it has added 0.2 percent a year to the growth of their productivity @executives-2026.

History says this clock is slow for good reasons. The technologies that reorganized production, as opposed to those that households simply bought, took 25 to 40 years to go from a few percent of their market to most of it: the power loom 25, the electric motor in factories about 30, the tractor 39 @notes-history. A firm has to redesign its processes, retrain or replace its people, settle who is liable for errors, and persuade customers and regulators. The old method also fights back by getting cheaper. The falling price of horses kept them in use on American farms for years after the tractor was the better buy. None of this contradicts @a-substitution, which says where things settle and is silent on how long they take.

There are also good reasons to expect this technology to diffuse faster than those. It arrives over a network that already reaches every desk. The cost gap is enormous. It can do much of the work of installing itself. And a new firm built around machine labor from the start does not have to change anything; it only has to take customers from firms that are slower.

#hypothesis([Use lags ability])[
  For at least the next decade, the share of work that machines actually do will trail the share they are able to do by years. For screen-based work that is not protected by law, the passage from "the machine can do it" to "the machine mostly does it" takes eight to fifteen years, which is two to four times faster than the historical norm and far slower than the capability clock. _My confidence: about three in four. The main way it fails is that new firms built around machine labor displace old ones much faster than old firms have ever been displaced. If it fails, the central scenario of @ch-scenarios is too slow by years and the fast ones deserve its weight._
] <h-lag>

*The build-out clock runs in years to decades.* A data center takes one to three years to build. A connection to the electricity grid takes about five. Gas turbines ordered today are delivered in the early 2030s. A chip factory takes three to five years, and a new mine much longer @notes-compute. For mental work this clock binds only loosely, as @ch-two-transitions showed. For physical work it is the main one.

*The money clock can stop.* The build-out is running on borrowed money and on the expectation of revenue that is still mostly in the future (@ch-now). Booms of this kind, in railways in the 1840s and in fiber-optic cable in the 1990s, ended in a financial bust that ruined many investors and paused construction for some years, while the technology itself carried on and the assets built in the boom were used by whoever bought them cheaply. I put the chance of such a bust before the end of 2029 at about one in two. A bust would slow the frontier for a year or three. It would not reverse what the existing machines can do, and it would very probably arrive as a recession.

*The political clock runs on elections and emergencies.* American federal elections come every two years. Major social legislation has historically come three to six years after the need became undeniable: the banking and relief acts of the New Deal three and a half years after the crash of 1929, Social Security nearly six. Emergency money can move much faster: in March 2020 Congress passed \$2.2 trillion of relief fourteen days after the emergency was declared, and the poverty rate _fell_ during a period of mass layoffs. But what is passed in an emergency tends to expire with it, as that relief did @notes-history.

== How displacement actually happens

Put the clocks together and a particular sequence follows. It is worth spelling out, because it is unlike the popular image of robots marching into offices.

+ *Capability arrives and nothing visible happens.* Firms experiment. Their existing staff use the tools and become more productive. Output rises a little.
+ *Hiring stops.* Managers find they do not need the next recruit. Nobody is dismissed, so nothing appears in the layoff statistics. This is where the most exposed occupations appear to be in 2026, though the cause of the hiring gap there is still disputed (@ch-now).
+ *Attrition does the cutting.* About one American worker in fifty quits their job every month. A firm that simply does not replace them shrinks by about a fifth a year without a single dismissal.
+ *A recession does the rest.* Firms cut deeply in downturns and reorganize when they rebuild. In the three American recessions between 1990 and 2009, the routine jobs that were lost did not come back in the recovery @jaimovich-siu-2012. The next recession, whatever causes it, will probably be the moment when firms rebuild around machine labor. Output will recover, and employment in the affected work will not.
+ *The statistics catch up.* Only at this stage does the change appear in the numbers that politics responds to.

The fourth step is the important one. It means the transition is likely to be recorded as a slump followed by a jobless recovery, and many people will say the slump caused the job losses. It also means that the long quiet period in which capability runs ahead of the statistics is misleading. Displacement is being stored up, and a downturn releases it.

== Forecasts

Parts I to III were built from axioms, from definitions, and from a few hypotheses whose odds were stated where they appeared. The chain of deduction ended with @p-affordable. From here on the numbered statements are forecasts: judgments about dates and amounts, which no deduction can supply. Each rests on the chain and on the evidence of @ch-now, and each carries a probability. A probability of 60 percent means that I expect to be wrong about four such statements in ten. The "80 percent range" given with some of them is the interval that I think has four chances in five of containing the outcome; the ranges are wide because the honest uncertainty is wide.

One term needs fixing first. When this guide says that machines do some percentage of a kind of work, it means that percentage of the tasks people were paid to do in 2025, counted by the hours those tasks took. It is a statement about who does the tasks. How many hours people go on working is a separate matter, which also depends on how much new work appears for them. For screen-based work the figure today is about 5 percent: workers who use AI report that it saves time equal to about 2 percent of all the hours worked in the economy, and nearly all of that is in screen-based jobs, which are 37 percent of the total. No published statistic measures the share directly, so each forecast below names the nearest thing that can be measured.

#forecast([When machines can do the screen-based work])[
  AI systems will be able to do at least nine tenths of the tasks in screen-based jobs as well as a competent person, at lower cost, by the end of 2029 with probability 55 percent, and by the end of 2032 with probability 80 percent.

  _How to score it:_ an independent test with human graders finds that AI agents complete at least nine tenths of a representative sample of paid remote projects to the standard the client accepted, for less than the client paid.
] <f-capability>

The case for sooner is the measured trend and the measured acceleration of AI research by AI. The case for later is that reliability, judgment and learning on the job have improved more slowly than raw task length, and that a financial bust may slow the frontier. The authors of the best-known fast scenario now put their median for AI that outperforms top experts at everything in late 2027 or 2028 @aifutures-2026. A large standing panel of experts puts the arrival of general AI around 2050 @fri-leap-2026. I am between them and closer to the first.

#forecast([How much screen-based work machines actually do by 2036], from: [@f-capability, @h-lag, @a-substitution])[
  In 2036, machines will be doing about half of the screen-based work now done by Americans (80 percent range: 10 to 96 percent).

  _How to score it:_ the fall, against the 2005–2025 trend, in hours worked per unit of real output in the occupations that can be done from home. This gauge reads a little low, because some displaced hours are taken up by new tasks in the same occupations.
] <f-diffusion>

#forecast([How much physical work robots do by 2036], from: [@h-lag, @p-at-cost])[
  In 2036, general-purpose robots and driverless vehicles will be doing about a tenth of the physical work now done by Americans (80 percent range: 2 to 70 percent). Driving will be the largest part. Robots that work reliably in structured settings such as warehouses, factories and commercial kitchens will be on sale by the end of 2032 with probability 60 percent.

  _How to score it:_ the number of driverless vehicles and general-purpose robots in commercial service in the United States, counted by the full-time workers whose work they do, against the 65 million people in mainly physical jobs in 2025. A tenth is about six and a half million.
] <f-robots>

#forecast([The recession])[
  A recession, as dated by the National Bureau of Economic Research, will begin in the United States before the end of 2029 with probability 65 percent. If it does, employment in screen-based occupations will still be below its previous peak three years after the recession ends, with probability 70 percent.
] <f-recession>

The first number is well above the historical rate. Since 1945 a recession has begun in a little under two of every five periods of three years. I put it higher because of the bust described above: a one-in-two chance of a bust that very probably brings a recession with it, plus the ordinary risk in the cases where it does not, comes to about 65 percent. The second number is the claim that matters, and the two together mean that the full sequence set out above has a little under an even chance of having happened by the early 2030s.

#forecast([Employment, labor's share and growth in 2036], from: [@f-diffusion, @f-robots, @f-recession, @p-cliff])[
  - The share of Americans aged 25 to 54 who have a job, 80.7 percent in October 2026, will be about 75 percent (80 percent range: 35 to 80).
  - The share of business income paid for work, 53.0 percent in the third quarter of 2026, will be about 48 percent (80 percent range: 18 to 53).
  - Output will have grown by an average of about 3 percent a year over the decade, after inflation (80 percent range: 1.8 to 12). The chance of any single year of growth above 10 percent by 2036 is about one in four.

  _How to score it:_ the employment–population ratio for ages 25 to 54 and the labor share of the nonfarm business sector, both from the Bureau of Labor Statistics, and real gross domestic product from the Bureau of Economic Analysis.
] <f-macro>

The ranges stop short of the Takeoff scenario of the next chapter on purpose. That scenario carries 12 percent of my belief, and an 80 percent range leaves a tenth beyond each end, so most of it lies outside.

These are a long way from the consensus of economists. In a survey completed in early 2026, sixty-nine economists gave a median forecast for 2030 of growth at 2.5 percent and unemployment at 5.0 percent, and put the chance of rapid progress in AI by 2030 at about one in seven @fri-2026. My central case is not far from theirs for 2030. It parts from them after that, and in the weight it puts on the fast outcomes.

The reference to @p-cliff matters for reading the second and third lines together. For as long as necessary tasks remain that only people can do, the pay of those still working keeps rising with output. So in my central case the squeeze by 2036 shows up as fewer people in work and a smaller share of income going to work, and does not yet show up as lower pay for those who have a job.

#forecast([The policy response by the early 2030s], from: [@h-leverage, @p-window, @h-durable])[
  - The federal government will hold shares in at least one leading AI company by 2030: 60 percent.
  - A federal law will create a regular payment to all adults, or a dividend, financed from taxes on AI or capital or from public shareholdings, by 2032: 45 percent.
  - Such a payment will be worth at least \$3,000 a year per adult by 2036: 15 percent.
  - A claim of the durable kind described in @h-durable will be law, on a scale that matters, by 2036: 12 percent. By 2040: about one in four, because by then the arrival of robots will have made the question impossible to put off.
] <f-policy>

#forecast([The premise as a whole], from: [@f-capability, @f-robots])[
  Machines will be able to do nearly all the work that people are now paid for, mental and physical, as well as a competent person, by the end of 2045: 60 percent.
] <f-premise>

This is the forecast furthest from the evidence, and the reasoning behind it is short. Mental work comes first, at four chances in five by 2032 and about nine in ten by 2045. What is then missing is a body that can work anywhere. Building one is an engineering problem of a familiar kind, in materials, motors, sensing and control, and from the early 2030s machine minds will be doing most of the engineering. Against that, the hardest physical work has resisted automation for sixty years, the data from which robots learn is scarce, a brake of the kind described in the next chapter could hold things back for a decade, and thirteen years is not long. I put the chance of capable general-purpose robots by 2045, given capable machine minds, at about two in three, which makes three in five for the whole premise.

These numbers are the skeleton of the scenarios in the next chapter. A reader who disagrees with any of them can trace exactly where their own forecast would part from mine.

#checkpoint[
  - Capability moves in months, diffusion in years, physical build-out in years to decades. Money can halt the build-out for a time. Politics moves at the speed of elections, or of emergencies.
  - The share of work machines do will trail the share they can do by years (@h-lag).
  - Displacement comes as a hiring freeze, then attrition, then a recession from which the affected jobs do not return.
  - My central estimates for 2036: machines doing about half of today's screen-based work and a tenth of physical work; the employment rate for people aged 25 to 54 down about six points; labor's share down about five points; growth a point above trend. The ranges around all of these are wide.
  - The policy response will probably include public stakes and some form of dividend, and will probably be small.
]
