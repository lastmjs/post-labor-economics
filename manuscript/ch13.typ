#import "template.typ": *

= What sets the pace <ch-speed>

The argument of Parts II and III tells us where the premise leads. It does not tell us when. The speed of the transition is governed by five separate clocks, which run at very different rates, and most of the confusion in public debate comes from reading one clock and assuming it sets the time for all.

== Five clocks

*The capability clock runs in months.* The length of task that AI systems can complete has been doubling about every four months. The share of real freelance projects they complete rose from 16 percent to 41 percent in four months of 2026. This is the clock the AI laboratories watch, and by it the premise for mental work is a small number of years away.

*The diffusion clock runs in years.* The share of American firms using AI at all rose from 17 percent to 24 percent in the year to October 2026, which is steady and unspectacular. About 40 percent of workers use it for something, a figure that has not moved in a year, and it touches about 5 percent of all hours worked @census-btos-2026 @bick-blandin-deming-2026. Executives at nine thousand firms report that it has raised their productivity by 0.2 percent a year @executives-2026.

History says this clock is slow for good reasons. The technologies that reorganized production, as opposed to those that households simply bought, took 25 to 45 years to go from a tenth of their market to nearly all of it: the power loom 25, the electric motor in factories about 30, the tractor 39 @notes-history. A firm has to redesign its processes, retrain or replace its people, settle who is liable for errors, and persuade customers and regulators. The old method also fights back by getting cheaper. The falling price of horses kept them in use on American farms for years after the tractor was the better buy.

There are also good reasons to expect this technology to diffuse faster than those. It arrives over a network that already reaches every desk. The cost gap is enormous. It can do much of the work of installing itself. And a new firm built around machine labor from the start does not have to change anything; it only has to take customers from firms that are slower. My estimate is that the main body of screen-based work that is not protected by law takes eight to fifteen years to move from "the machine can do it" to "the machine mostly does it." That is two to four times faster than the historical norm, and still far slower than the capability clock.

*The build-out clock runs in years to decades.* A data center takes one to three years to build. A connection to the electricity grid takes about five. Gas turbines ordered today are delivered in the early 2030s. A chip factory takes three to five years, and a mine sixteen or more @notes-compute. For mental work this clock no longer binds, as @ch-two-transitions showed. For physical work it is the main one.

*The money clock can stop.* The build-out is running on borrowed money and on the expectation of revenue that is still mostly in the future (@ch-now). Booms of this kind, in railways in the 1840s and in fiber-optic cable in the 1990s, ended in a financial bust that ruined many investors and paused construction for some years, while the technology itself carried on and the assets built in the boom were used by whoever bought them cheaply. I expect the same here. A bust would slow the frontier for a year or three. It would not reverse what the existing machines can do, and it would arrive as a recession.

*The political clock runs on elections and emergencies.* American federal elections come every two years. Major social legislation has historically come three to six years after the need became undeniable: the banking and relief acts of the New Deal three and a half years after the crash of 1929, Social Security nearly six. Emergency money can move much faster: in March 2020 Congress passed \$2.2 trillion of relief fourteen days after the emergency was declared, and the poverty rate _fell_ during a period of mass layoffs. But what is passed in an emergency tends to expire with it, as that relief did @notes-history.

== How displacement actually happens

Put the clocks together and a particular sequence follows. It is worth spelling out, because it is unlike the popular image of robots marching into offices.

+ *Capability arrives and nothing visible happens.* Firms experiment. Their existing staff use the tools and become more productive. Output rises a little.
+ *Hiring stops.* Managers find they do not need the next recruit. Nobody is dismissed, so nothing appears in the layoff statistics. This is where the United States is in 2026 (@ch-now).
+ *Attrition does the cutting.* About one American worker in thirty leaves their job every month for ordinary reasons. A firm that simply does not replace them shrinks by a tenth or more a year without a single dismissal.
+ *A recession does the rest.* Firms cut deeply in downturns and reorganize when they rebuild. In each of the last three American recessions, the routine jobs that were lost did not come back in the recovery @jaimovich-siu-2012. The next recession, whatever causes it, will be the moment when firms rebuild around machine labor. Output will recover, and employment in the affected work will not.
+ *The statistics catch up.* Only at this stage does the change appear in the numbers that politics responds to.

The fourth step is the important one. It means the transition will be recorded in history as a slump followed by a jobless recovery, and many people will say the slump caused the job losses. It also means that the long quiet period in which capability runs ahead of the statistics is misleading. Displacement is being stored up, and a downturn releases it.

== Forecasts

Everything up to this point in the guide has been either a fact or a deduction. From here on I have to make judgments about the future, and I will mark them as such and attach probabilities. A probability of 60 percent means that I expect to be wrong about four such statements in ten. These are my own estimates, formed from the evidence in the research notes. The "80 percent range" given with some of them is the interval I think has four chances in five of containing the outcome.

#forecast([When machines can do the screen-based work])[
  AI systems will be able to do at least nine tenths of the tasks in screen-based jobs as well as a competent person, at lower cost, by the end of 2029 with probability 55 percent, and by the end of 2032 with probability 80 percent.
] <f-capability>

The case for sooner is the measured trend and the measured acceleration of AI research by AI. The case for later is that reliability, judgment and learning on the job have improved more slowly than raw task length, and that a financial bust may slow the frontier. The authors of the best-known fast scenario now put their median for AI that outperforms top experts at everything in late 2027 or 2028; a large panel of forecasters puts the arrival of general AI around 2050 @aifutures-2026 @fri-2026. I am between them and closer to the first.

#forecast([How much screen-based work machines actually do by 2036])[
  In 2036, machines will be doing about 45 percent of the screen-based work now done by Americans (80 percent range: 15 to 80 percent).
] <f-diffusion>

#forecast([How much physical work robots do by 2036])[
  In 2036, general-purpose robots and driverless vehicles will be doing about 8 percent of the physical work now done by Americans (80 percent range: 2 to 30 percent). Driving will be the largest part.
] <f-robots>

#forecast([The recession])[
  A recession will begin in the United States before the end of 2029 with probability 65 percent. If it does, employment in screen-based occupations will fail to return to its previous peak in the recovery, with probability 70 percent.
] <f-recession>

The first number is only a little above the historical frequency of recessions, raised for the present combination of high interest rates, an inflation problem and a debt-financed investment boom. The second is the claim that matters.

#forecast([Employment, labor's share and growth in 2036])[
  - The share of Americans aged 25 to 54 who have a job, now 80.7 percent, will be about 75 percent (80 percent range: 62 to 80).
  - The share of business income paid for work, now 53.0 percent, will be about 47 percent (80 percent range: 36 to 52).
  - Output will have grown by an average of about 3 percent a year over the decade, after inflation (80 percent range: 1.8 to 6). The chance of any single year of growth above 10 percent by 2036 is about one in eight.
] <f-macro>

#forecast([The policy response by the early 2030s])[
  - The federal government will hold shares in at least one leading AI company by 2030: 60 percent.
  - A federal law will create a regular payment to all adults, or a dividend, financed from taxes on AI or capital or from public shareholdings, by 2032: 45 percent.
  - Such a payment will be worth at least \$3,000 a year per adult by 2036: 15 percent.
] <f-policy>

These numbers are the skeleton of the scenarios in the next chapter. A reader who disagrees with any of them can trace exactly where their own forecast would part from mine.

#checkpoint[
  - Capability moves in months, diffusion in years, physical build-out in years to decades. Money can halt the build-out for a time. Politics moves at the speed of elections, or of emergencies.
  - Displacement comes as a hiring freeze, then attrition, then a recession from which the affected jobs do not return.
  - My central estimates for 2036: machines doing a little under half of today's screen-based work and under a tenth of physical work; the prime-age employment rate down about six points; labor's share down about six points; growth a point above trend.
  - The policy response will probably include public stakes and some form of dividend, and will probably be small.
]
