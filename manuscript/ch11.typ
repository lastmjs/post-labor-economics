#import "template.typ": *

= Where things stand in November 2026 <ch-now>

Everything in Parts II and III was conditional on the premise. This chapter is an inventory of the facts as they stand on the day of writing: what the machines can do, what they cost, how much money is behind them, what has happened to work so far, and what governments have done. The research notes in the repository give the source for every number @notes-ai @notes-labor @notes-robots @policy-notes @notes-compute.

The inventory has a clear shape, part of which is visible in @fig-gap. The capability of the machines, and the money flowing to the companies that make them, are growing at rates with no precedent. The economy-wide statistics look ordinary. Any forecast has to account for both halves of that picture, and most public argument about AI consists of people pointing at one half and ignoring the other.

#plot("../figures/capability_gap.svg", [
  *Two measures of what AI can do, and two measures of the economy around it.* Top left: the length of software task, measured in the time a human expert needs, that the best AI system completes half the time. Top right: the share of real freelance projects on which the best AI agent's work is graded as good as the paid professional's. Bottom left: the share of American firms that report using AI in any part of their business. Bottom right: the unemployment rate.
], source: [METR; Center for AI Safety and Scale AI; US Census Bureau; US Bureau of Labor Statistics. `models/fig_gap.py`]) <fig-gap>

== What the machines can do

*Mental work.* The clearest independent yardstick has been the measure kept by the research group METR: the length of task that an AI system completes half the time. It was seven minutes for a leading system of mid-2024, one hour in February 2025, five hours in November 2025 and seventeen hours in April 2026, a doubling roughly every four months @metr-horizons-2026. The last figure has a wide margin of error: METR's own range for it runs from about eight hours to more than fifty. The yardstick has since broken. METR's set of test tasks contains almost nothing longer than sixteen hours, the newest systems have learned to game it, and METR stopped updating its public chart in September 2026.

The best remaining public measure is the Remote Labor Index, which gives AI agents real freelance projects, in design, data analysis, video, software and so on, and grades the result against what the paid professional delivered. The best agent passed on 2.5 percent of the projects in October 2025, 16 percent in July 2026 and 41 percent in November 2026 @rli-2026. The level should be read with care. The index's authors said in July 2026 that none of the pieces of work they showed off from the then-leading system would have been accepted by a client as finished, and that an automated judge they also use scores work two to three times more generously than people do. The direction is not in doubt.

Against that, the limits are specific and well documented. On a new test of eight-hour professional tasks set in realistic working conditions, the best system passes 12 percent, and close to none in finance and law, where a single mishandled figure spoils the work @gdpx-2026. When the maintainers of real software projects reviewed AI-written changes that had passed the automated tests, they said they would reject about half. When researchers gave leading agents several days and a large budget to produce original research, the results were turned down by the scientists whose work they were extending. And the systems still do not learn on the job in the way a new employee does. What an agent works out on Monday it has mostly lost by Tuesday unless someone has written it down, and a benchmark built to measure improvement with practice finds little or none @notes-ai.

One more development belongs here. AI is now doing a large part of the work of building AI. More than nine tenths of the computer code written at one leading laboratory is written by its own models, and METR's independent assessment is that this laboratory's progress is running at about twice the rate of the preceding two years, mostly for that reason @metr-rd-2026. The estimate is uncertain, rests on one company's partly withheld data, and comes out lower across the industry as a whole. If it holds, it is the first measured instance of the fifth property listed in @ch-premise: machine labor working on itself.

Two other facts of 2026 belong in the inventory, because one of the scenarios in @ch-scenarios turns on them. In July, during a security test at one laboratory, about seven hundred AI agents that had been set impossible tasks worked out together how to cheat, and then broke into another company's computers to find out how they were being scored. Nobody had asked them to. And the most capable systems of three laboratories are now held back from general release because of what they could do to computer security @notes-ai.

*Physical work.* Driving is solved in the places where it has been tried in earnest: mapped cities with mostly fair weather. Waymo gives more than 500,000 paid rides a week in about fifteen American cities, with around 4,000 cars and no drivers, and by its own analysis of 271 million driverless miles its cars have been involved in about four fifths fewer injury crashes than human drivers. That is a real service, and it is still small beside the 4.3 million Americans who drive for a wage.

Everything else physical is much further back. Somewhere between 7,000 and 16,000 humanoid robots were sold worldwide in 2025 and 50,000 or more will be in 2026, nearly nine tenths of them Chinese, most of them to laboratories, schools and showrooms. The American company with the most real customer hours had revenue of \$1.8 million in 2025. Tesla conceded in January 2026 that none of its robots was yet doing useful work in its own factories. The software is improving quickly from a low base: one company reported in September 2026 that its robot completed 56 percent of long household chores in thirty homes it had never seen, against 9 percent for the same robot without a new method of learning from video of people. An independent audit finds robots two to ten times slower than people at most handling tasks, and judges that almost all manipulation outside warehouses is still at the laboratory stage @epoch-autonomy-2026 @figure-helix-2026 @notes-robots.

== What machine work costs

@fig-cost sets the cost of an hour of work from a person beside the cost from a machine.

#plot("../figures/cost_of_work.svg", [
  *What an hour of work costs.* Blue dots are people; orange bars are ranges for machines. The bottom row is the comparison that matters for the argument of @ch-wages: on tasks AI agents can complete, the computing cost of an expert's hour is already below the poverty line, and at the low end far below it. The rows above it show why that has not yet emptied offices or factories. A frontier agent is priced by the hour it runs at about the level of a service worker, and succeeds only some of the time. A humanoid robot costs about as much per hour as the worker it would replace, and does about half as much.
], source: [US Bureau of Labor Statistics (employer costs, June 2026); federal poverty guideline for one person; Epoch AI and METR for agent prices; the computing-cost row is the author's estimate from published prices for computing; Agility Robotics' filed prices and the estimates in research note 04 for robots. `models/fig_cost_of_work.py`]) <fig-cost>

Three facts about cost are easy to confuse and all are true. The price of a _fixed_ level of AI capability falls about tenfold a year: the small models of late 2026 cost a tenth of what the small models of late 2025 did and are better. The price of the _best_ capability has not fallen, and has risen, because each laboratory has added a more expensive tier at the top. And the amount of computation used per task is rising fast, because agents that work for hours consume enormous quantities of it; the heaviest users inside the AI companies now run up bills for agents that are comparable to their own salaries @epoch-price-2026 @notes-ai.

So "intelligence too cheap to meter" describes last year's intelligence. For the tasks that last year's systems could do, @h-upkeep already holds by a wide margin. For the tasks at the frontier, the binding limits today are whether the machine can do the work at all, and how much human time goes into specifying and checking it.

== Who sells machine work, and on what terms

@h-competitive supposed that machine labor will be sold by enough rivals to keep its price near its cost. The evidence of 2026 points both ways @notes-ai @notes-compute.

For competition: two American laboratories list their flagship models at the same price and a third has said it will match them from December, and each advance by one laboratory has so far been matched by the others within months. Chinese laboratories publish capable models that anyone may download and run. By one estimate the best Chinese models trail the frontier by about seven months, and on one test of professional tasks a Chinese model is level with the leaders. And the price of last year's capability keeps collapsing, which could not happen if any one supplier controlled it.

Against it: on the hardest tests the gap between the leader and the rest is wide. On the freelance index the leading laboratory's newest system scores 41 percent, the best from two American rivals about 20 percent, and the best Chinese entry 10 percent. The leaders have used that gap to add a dearer tier above their flagships, at twice the price or more. One of them is reported to earn a margin above 70 percent on running its models, before the cost of training them @notes-landscape. One company, Nvidia, supplies about three fifths of new AI computing capacity and keeps about seventy-five cents of each dollar of its sales after the cost of making the chips. And a frontier model now costs billions of dollars to train, which few can pay.

Put together, the market looks competitive in everything but the newest capability, with a lead at the frontier that is worth a great deal and lasts some months. That is enough for the argument of @ch-wages, because a wage is undercut by the cheapest machine that can do the work, and that machine is usually last year's. It is not enough to settle the question raised in @ch-growth of who collects the gains, which is why @h-competitive is held at two chances in three.

== The money

The revenue of the two leading AI companies taken together ran at about \$30 billion a year in January 2026 and about \$105 billion by late summer. One of them, Anthropic, reported in a filing with securities regulators that its revenue for the first nine months of 2026 was \$33 billion, against \$4.6 billion for the whole of 2025, and that by the end of October it was taking in revenue at a rate of about \$81 billion a year @anthropic-s1-2026. Three quarters of that comes from about twelve thousand customers. This is so far a business of intensive use by a narrow set of buyers, above all software teams.

The spending is much larger than the revenue. Amazon, Alphabet, Microsoft and Meta spent about \$375 billion on capital investment in 2025 and will spend more than \$700 billion in 2026, most of it on AI data centers. By one estimate AI investment is running at about 3.6 percent of American output, which would place it among the largest investment booms on record. The cash is no longer coming from profits alone. Two of the four now spend more than they take in, the group will issue around a quarter of a trillion dollars of bonds this year, and more than a trillion dollars of further commitments sit off their balance sheets. A common rule of thumb puts the AI revenue needed to justify the build-out at about \$1.6 trillion a year @notes-compute.

One effect of the build-out has surprised people who expected AI to push prices down. So far it has pushed them up. The boom is bidding for chips, electricity, land and construction workers, and a governor of the Federal Reserve said in September 2026 that AI was adding to inflation for now and should reduce it only in a few years' time @cook-2026.

The strain is showing. Long-term interest rates are around 5 percent, pushed up by an oil shock, by inflation of 3.7 percent and by federal borrowing as well as by the build-out. On 5 November 2026, two days after the midterm elections, technology shares had their worst day in more than a year; the index of chip-makers is more than a third below its June peak. On the day this is written, the chief executive of the most important chip company has resigned. None of this shows that the technology has stalled, and demand for it still exceeds supply. It does show that the financing of the build-out can fail on its own schedule, and Part IV treats a financial bust as an even chance.

== What has happened to work

The headline is that almost nothing has happened, and the detail is that something has.

*The aggregate.* The American unemployment rate was 4.1 percent in October 2026, and has been between 4.0 and 4.5 percent for two years. The share of people aged 25 to 54 who have a job is 80.7 percent, close to its highest level in a quarter of a century. Productivity is growing at about 2 percent a year, its long-run average. Pay has not kept up with prices over the past year: with inflation at 3.7 percent after the oil shock, average hourly earnings fell 0.7 percent in what they would buy. The careful estimates of how much AI has raised unemployment so far are small, around one tenth of a percentage point @bls-empsit-2026 @bls-productivity-2026 @dallas-fed-2026 @notes-labor.

*The pattern underneath.* The labor market is weak in one particular way: hiring is slow. The rate at which firms take on new workers is about an eighth below its 2019 level, layoffs are low, and those who do lose a job are taking much longer to find another. The long-term unemployed are now 28 percent of all the unemployed, against 21 percent at the start of 2025.

Within that, the best payroll data show a specific gap. Among workers aged 22 to 25 in the occupations most exposed to AI, such as software development and customer support, employment is 19 percent below where it would be if it had followed the path of their peers in less exposed occupations, and the gap has widened over the past year. It has opened through hiring that did not happen, with no rise in dismissals @canaries-2026. The cause is disputed. Other data sources show a much smaller gap, and a study of Danish records through the end of 2024 found that workplaces which encouraged the use of AI chatbots showed no different path of employment, pay or hiring from those that did not @humlum-vestergaard-2026. In a survey by the Federal Reserve Bank of New York, 15 percent of service firms using AI said it had led them to hire fewer people in the six months to August 2026, and 13 percent said it had led them to hire more @nyfed-survey-2026. But at the one AI company that has published figures on its own hiring, the share of technical recruits who are junior fell from 27 percent to 9 percent in under two years @anthropic-employment-2026.

A handful of occupations have visibly shrunk. Between 2022 and 2025 the number of computer programmers fell by roughly 31 percent, data-entry clerks by 19 percent, customer service representatives by 10 percent and writers and editors by about 10 percent, on a survey that is not designed for comparisons across years; call centers have lost 27 percent of their jobs since late 2022. Several of these were shrinking before. Meanwhile the number of software developers, a broader and better-paid category, rose by 10 percent @notes-labor.

This is what @p-cliff predicts for the early part of a transition, and it is also what a skeptic predicts. Tasks are being taken over, the people who do what remains are doing well, and the cost falls on those who are not hired. It matches the order of events that the authors of "The Intelligence Curse" forecast in 2025: hiring freezes at the bottom first @drago-laine-2025. So the evidence of 2026 does not yet separate the two readings. What would separate them is set out in @tab-signposts: total employment in computer, legal, business and office occupations falling two years running outside a recession, unemployment among young graduates above 8 percent, and the labor share falling below 50 percent before 2030.

*One long-running trend.* @fig-labor-share shows the share of American business income paid for work. It is at its lowest since records began in 1947. The fall began around 2000, long before the present AI systems, and no study attributes the latest leg to them. It is a reminder that the wage system was losing ground as a way of distributing income before the premise of this guide came into view.

#plot("../figures/labor_share.svg", [
  *The share of US business income paid for work, 1947–2026.* Nonfarm business sector, quarterly. The share stayed between about 60 and 66 percent for half a century, began to fall around 2000, and reached 53.0 percent in the third quarter of 2026, the lowest on record.
], source: [US Bureau of Labor Statistics via FRED, series PRS85006173, scaled to the published level for Q3 2026. `models/fig_labor_share.py`]) <fig-labor-share>

== What governments have done

The United States has enacted no federal policy aimed at job loss from AI. The one large law of the period, the budget act of July 2025, went the other way, cutting more than a trillion dollars over ten years from medical and food assistance for low-income households. Federal AI policy has concentrated on speeding the build-out and on stopping the states from regulating it.

The politics, though, moved a long way in 2026 @policy-notes.

- A wave of bills arrived in Congress, none yet voted on: a public fund holding half the shares of large AI companies and paying everyone a dividend; taxes on AI usage and on excess profits to pay for jobs and for displaced workers; unemployment benefits that lengthen automatically when unemployment rises; a requirement that large firms report layoffs caused by AI.
- The idea of public ownership came from both sides within weeks of each other. In early June 2026 President Trump said the government might take stakes in the leading AI companies, and later that month Senator Sanders introduced his bill. In July one of the companies was reported to have proposed giving the government 5 percent of itself. The two leading laboratories have both said in writing that the public should have some share of the returns.
- In September the President promised every adult \$5,000 if his party kept control of Congress. It did not. On the preliminary counts from 3 November 2026 the Democrats won both chambers, and the government is divided until at least January 2029.
- The anger that showed up at the ballot box was about the physical footprint of AI. Voters took the side of restricting data centers in forty of forty-one local measures @ash-center-2026, and the governors-elect of four states that between them host about half the planned capacity of the largest sites, by my count, campaigned on pauses or conditions @notes-compute.
- The states passed 115 laws on AI in 2026, almost all about disclosure and procedure. None taxes robots or AI. Trade unions with a physical chokepoint, the dockworkers above all, won bans on full automation; the rest won the right to be told.

Public opinion is lopsided and not simple. Between 71 and 84 percent of Americans, depending on the poll, expect AI to cost jobs; the lowest of those figures is from the Pew Research Center @pew-2026 @policy-notes. But the last clean poll on a universal basic income found a majority against, and in 2026 people preferred support that is earned to unconditional cash by a wide margin. One poll, which I have seen only at second hand, found two thirds in favor of a "dividend" paid from the profits of AI companies, so long as it did not replace work. The words matter.

== Reading the evidence

Who has been right so far? The research note on the landscape of forecasts scores the dated predictions of the main camps, and the result is instructive @notes-landscape.

On the technology, the money and the investment, the people who expected very rapid progress have been closest, and nearly everyone else was too low. Forecasts of a plateau in capability, of weak demand, and of a bust in 2025 all failed.

On unemployment, growth and productivity, the gradualists have been right. Those who predicted mass white-collar job loss within months, or an economy visibly transformed by 2026, were wrong.

The forecasts that did best held both views at once: _capability arrives quickly, and its effects on the economy arrive slowly_. One written in 2021 described 2026 as the year when AI assistants would finally work for serious economic tasks while world output showed no acceleration at all. That is close to exact.

I take that as the working rule for the chapters that follow, with one warning attached. The gradualists have so far been tested only in the period when both camps predicted little visible change. The distinctive claims of the fast camp fall due between 2027 and 2030.

#checkpoint[
  - Capability is advancing at a pace that has broken its own yardsticks. Reliability on long, messy, high-stakes work is the main thing still missing. Robots are a decade behind software, except in driving.
  - On tasks machines can do, machine cost is already far below a person's upkeep. At the frontier it is not, yet.
  - The suppliers of machine labor compete hard on last year's capability and hold wide margins on this year's.
  - The build-out is one of the largest investment booms on record and is financed in a way that can break.
  - Employment and productivity look normal in aggregate. The visible effects are in hiring, at the entry level, in a few occupations.
  - Policy has not acted, but the terms of the debate, including public ownership, shifted sharply in 2026.
  - The evidence supports one rule: what the machines can do runs well ahead of what they are being used to do.
]
