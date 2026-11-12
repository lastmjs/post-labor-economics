#import "template.typ": *

= Six scenarios for 2026 to 2036 <ch-scenarios>

A scenario is a consistent story about how the open questions resolve. The open questions here are few. Part IV has reduced them to three: how soon machines can do the work, mental and then physical (@f-capability); how fast that capability is put to use (@f-diffusion, @f-robots); and what the political system does about it (@f-policy).

The six scenarios below cover the combinations I think deserve weight. Five of them are distinguished mainly by the pace of the technology, and for those I have run the numbers through a small accounting model so that each story adds up. The sixth, "Shared dividend," is defined by the political response: a durable public claim on the machine economy is in place by 2036, at whatever pace the technology has moved short of a takeoff. I describe it on the technological path of the central scenario, because that is where most of its probability lies.

The model is described in #link(<app-models>)[Appendix A]. Its job is consistency: it takes an assumption about how much of each kind of work machines do in each year and returns the hours of human work, the employment rate, labor's share of income and the level of output that go with it. Its relations are set so that it roughly matches three scenarios for 2030 published in September 2026 by Anthropic with a group of economists that included Anton Korinek and Charles Jones @anthropic-scenarios-2026. Anthropic is an interested party, and it is also the maker of the AI system that wrote this guide. I use its scenarios because they are the only published set I found that states both a level of automation and its consequences, and everything beyond the levels they cover is my own extrapolation. The model is bookkeeping for stories, and its outputs should be read as round numbers. @fig-scenarios shows the five paths, and @tab-scenarios compares all six in 2036.

One property of the model has to be stated plainly, because it limits what the table can show. The model assumes that while people are still needed for some tasks, the pay of those in work keeps pace with output per person. That is the first of the two regimes in @p-cliff, the one in which the remaining human tasks are the bottleneck. So the model shows displacement as fewer people in work and a smaller share of income going to work, and it cannot show a fall in the pay of those who still have jobs. In every scenario the total paid for work stays within a tenth of what it would have been without AI, which is also what the published scenarios find. For the first three rows of the table I think that is the right description of the decade. For Rentier drift and Takeoff, in which machines do most of the work by 2036, it is too kind: by then the wage ceiling of @p-ceiling would be pressing on much of the remaining work, and the figures for labor's share in those two rows should be read as upper limits.

#plot("../figures/scenarios.svg", [
  *Five paths through the decade.* Each line is one scenario's assumption about how quickly machines take over work (top left) and what the accounting model says follows for employment, labor's share of income and output. Gray lines show the recorded past. The dip in 2028 in two of the scenarios is an assumed recession. "Shared dividend" follows the same lines as "The squeeze" and differs in how income is distributed.
], source: [`models/scenarios.py`, `models/fig_scenarios.py`. History from the US Bureau of Labor Statistics via FRED.]) <fig-scenarios>

#figure(
  datatable(
    columns: (1.5fr, 0.7fr, 1fr, 1fr, 0.9fr, 0.8fr, 0.8fr),
    align: (left, right, right, right, right, right, right),
    header: ([Scenario], [My odds], [Screen work by machines], [Physical work by machines], [Aged 25–54 in work], [Labor share], [Growth a year]),
    [Today (2026)], [], [5%], [under 1%], [80.7%], [53.0%], [about 2%],
    [Slow diffusion], [15%], [13%], [2%], [80%], [52%], [2.0%],
    [The squeeze], [40%], [51%], [10%], [75%], [48%], [3.2%],
    [Shared dividend], [12%], [51%], [10%], [75%\*], [48%], [3.2%],
    [Rentier drift], [13%], [81%], [34%], [59%], [34%], [6.2%],
    [Takeoff], [12%], [98%], [84%], [26%], [11%], [18%],
    [The brake], [8%], [28%], [4%], [79%], [51%], [2.2%],
  ),
  caption: [The six scenarios in 2036. Machine shares, defined as in @ch-speed, are the scenario's assumptions; the last three columns are outputs of the accounting model, and growth is the average for the decade. In the model the pay of those still in work, compared with an economy without AI, is unchanged in Slow diffusion and The brake, about 9 percent higher in The squeeze and about 30 percent higher in Rentier drift. \*In "Shared dividend" a shorter standard working week spreads the same hours of work over more people, so the employment rate would be higher than shown.],
) <tab-scenarios>

== 1. Slow diffusion

_AI turns out to be a normal technology, and normal technologies take decades._

*What has to be true.* Either capability stops short of the premise, with reliability, judgment and learning on the job proving much harder than the trend suggests, or capability arrives and the ordinary frictions of organizations, liability and regulation hold adoption to the pace of electricity and the tractor.

*How it unfolds.* The investment boom ends in a bust around 2027 or 2028, and this time the bust does damage to the frontier: the laboratories cannot fund the next generation of systems. AI settles in as a very good tool. Programmers, analysts and writers use it all day and produce more. Firms adopt it over twenty years. Employment in a few occupations shrinks, as it did for typists and travel agents, and others grow. In 2036 the economy is a few percent larger than it would have been and the arguments of this guide read as premature.

*For and against.* This is what almost every official forecaster expects, and by their own measures they have been right so far @notes-landscape. The economist Daron Acemoglu puts the total gain at about 1 percent of output over a decade @acemoglu-2024, and the scholars who coined the phrase "normal technology" make the case from the history of diffusion @narayanan-kapoor-2025. Against the first version stands the capability record of @ch-now: progress has been fast for seven years on every measure that has not been outgrown, and this scenario needs it to stop short within a few years. Against the second stands the size of the cost gap. The squeeze already assumes that adoption takes about a decade (@h-lag). This scenario needs it to take two or three times as long, in an economy where a new firm can be built around machine labor from its first day.

*My probability: 15 percent.*

== 2. The squeeze

_The machines arrive for mental work at the speed of diffusion, and the United States responds late and in pieces._

*What has to be true.* @f-capability comes true around 2029 or 2030. Adoption takes roughly a decade. Robots improve steadily but are still scarce in 2036. Politics produces a patchwork.

*How it unfolds.* The late 2020s look like 2026, only more so: hiring of beginners in screen-based work dries up, experienced staff are well paid, and output per worker climbs. Somewhere between 2027 and 2029 a recession arrives, set off by the financing of the AI build-out, by interest rates or by something unrelated. Firms cut their office staff deeply and rebuild around agents. Unemployment peaks at around 7 percent. In the recovery, total employment gets most of the way back by 2031, because physical and in-person work goes on hiring, but employment in screen-based work does not come back at all. Then, from about 2032, the share of adults in work turns down again and falls a little faster each year, with no recession to explain it.

The pain falls on the professional class and on the young who expected to join it. Law, finance, software, media, marketing, consulting and administration all shrink. Physical and in-person work absorbs some of the displaced, at lower pay. The trades do well. So do the owners of shares, land and energy.

Washington responds the way it usually does. Unemployment benefits are extended, then extended again. There are rounds of checks, called dividends. The government takes shares in the AI companies, partly as a condition of the support it gives them in the bust. There are new taxes on AI usage and on data centers, set too low to matter. States pass laws requiring a human in a widening list of roles. Social Security's retirement fund, which the program's trustees project will run short at the end of 2032 @ssa-trustees-2026, forces a larger bargain, and some money from the machine economy is routed into it.

*In 2036.* Machines do about half of what was screen-based work and a tenth of physical work. Three quarters of people aged 25 to 54 are in work, down from four fifths. Labor's share of income is 47 or 48 percent. Total pay has roughly kept pace with a no-AI economy, but it is shared among fewer people and the premium for education has shrunk. Those who have jobs are, on average, paid somewhat better than they would have been. The economy has grown a little over 3 percent a year. Robots are being built by the million, and everyone can see what comes next. The country is about a quarter of the way through the transition, and has not decided who will own the result.

*For and against.* This scenario is the direct application of @h-lag, which is the rule the evidence supports. Its technological assumptions are my median forecasts. Its political assumptions follow from the present line-up: a public that expects harm from AI and prefers earned support, both parties interested in public stakes and dividends, and a system that acts in emergencies and lets emergency measures lapse. The main argument against it is that it sits between two more self-consistent stories. If AI really accelerates its own development, as the measurements of 2026 suggest, there is little reason for the pace to stay moderate (scenarios 4 and 5). And if adoption is slow enough to stretch over a decade, perhaps it is slow enough to stretch over three (scenario 1).

*My probability: 40 percent.*

== 3. Shared dividend

_The same technology as the squeeze, met by a durable public claim on the income of the machine economy._

*What has to be true.* The recession and the jobless recovery produce a political majority for a structural response, and the response takes the durable forms identified in @p-durable, universal, automatic, visible and hard to reverse, while the majority still has the leverage to demand it (@p-window).

*How it unfolds.* The election of 2028 is fought on AI and jobs. The winning coalition takes the public-stake idea that both parties floated in 2026 and makes it large: a national fund that receives a share of the equity of the largest AI and computing companies, a levy on data-center capacity and energy sites, and a mandate to pay every adult an equal dividend. Unemployment insurance is rebuilt to switch on automatically. Health insurance is separated from employment. The standard working week is shortened. A national service program offers paid work in care, conservation and teaching to anyone who wants it.

*In 2036.* Employment, labor's share and output are as in the squeeze, but the dividend is a few thousand dollars per adult and rising with the machine economy, the fund owns a tenth or more of the AI sector, and the principle that every citizen has a property claim on machine output is established in law before robots arrive in force. That last fact is what distinguishes this scenario from all the others.

*For and against.* For: the idea already has sponsors in both parties and in the industry itself, the phrase "dividend" polls well, the first victims are politically powerful, and the Social Security shortfall creates an occasion. Against: the United States has passed structural social legislation on this scale twice in a century, both times with one party holding very large majorities, and has let its recent emergency programs expire. The sums are an order of magnitude beyond anything proposed with a number attached (@ch-policy). The industry's support is for a small stake. And the public's present anger is aimed at data centers, which leads to restricting the machines, a different thing from owning them.

*My probability: 12 percent.* I think a small version of this, a token dividend and a stake of a few percent, is about as likely as not (@f-policy); that version belongs to the squeeze. The 12 percent is for the durable version.

== 4. Rentier drift

_The technology moves fast, robots follow closely, and the gains are captured by those who own the machines._

A rentier is a person who lives on income from property. The name describes where the economy drifts when nothing is decided.

*What has to be true.* @f-capability comes true by about 2028. AI research accelerates further and diffusion is fast, because machine labor installs itself and new firms built around it take markets from old ones. Capable robots arrive around 2030 and are built by the tens of millions by 2036. The political response stays small.

*How it unfolds.* The sequence is the same as the squeeze, compressed and carried further. By the early 2030s most screen-based work is done by machines, and by the middle of the decade physical work is going too. Growth climbs from about 5 percent a year at the start of the 2030s to more than 10 percent by 2035. Corporate profits and the value of land, energy and the leading firms rise to levels without precedent.

Politics does respond, but in the least durable ways. There is an income for the displaced, paid only to those who can show they have little else, set near the poverty line and argued over every year. Jobs are protected by statute in health, education, law and government, so that a large part of the remaining workforce holds positions that exist by rule. The AI companies, now the largest taxpayers and the largest donors, are consulted on everything. Because machine-made goods are cheap, nobody starves, and the cheapness is offered as the answer to every complaint. Housing in the places people want to live is dearer than ever.

*In 2036.* Machines do four fifths of screen-based work and a third of physical work. Fewer than three in five people aged 25 to 54 have a job, and many of those jobs are protected ones. Labor's share of income is about a third. The economy is 80 percent larger than in 2026. The wealthiest tenth of households, who owned more than two thirds of the wealth at the start, own a good deal more.

*For and against.* This is the outcome that the logic of Part III produces if nothing intervenes: income follows ownership (@p-ownership), and leverage declines with need (@p-leverage-lost). It is what the authors of "The Intelligence Curse" and "Gradual Disempowerment" warn of @drago-laine-2025 @kulveit-2025. The fast technological path has the capability evidence on its side. Against it: fast diffusion is the half of the fast story that the evidence has _not_ supported so far, and robots at that scale by 2036 require nearly everything in manufacturing and politics to go right. And a faster, harsher transition seems more likely to provoke a large political response than a slow one, which moves some probability from this scenario to scenarios 3 and 6.

*My probability: 13 percent* for reaching this state by 2036. As a description of where the squeeze leads in the 2040s if nothing durable is built, I think it is the default.

== 5. Takeoff

_AI improves itself, capability passes human level in everything within a few years, and the economy begins to grow at rates never seen._

*What has to be true.* The feedback loop measured at about two-fold in 2026 strengthens instead of fading. By 2028 or so, AI systems do AI research better than people. Systems far more capable than any person follow within a year or two. They design the robots and the factories, and physical production begins to double every year or two.

*How it unfolds.* I will not pretend to narrate this in detail. In the best-known account of such a path, the economy is transformed after the leap in machine capability, in special zones where regulation is lifted, with a million robots a month by the end of 2028 @ai-2027. In the accounting model, output in 2036 is five times its 2026 level, a quarter of prime-age adults are in what can still be called work, and labor's share of income is near a tenth at most.

*What matters in this scenario is not economics.* An economy growing at 20 percent a year can afford anything. The questions are whether the systems do what their owners intend, who the owners are, and whether any government is still in a position to tax and redistribute. @p-window says that the majority's leverage is greatest before automation is complete. In a takeoff, the window is a few years long, and it is open now.

*For and against.* For: the measured acceleration of AI research by AI, the forecasting record of the people who expect this, and formal models in which a modest degree of automation across the research sectors is enough to tip growth into explosion @davidson-2026. Against: physical bottlenecks, the weak-link structure of the economy in which the slowest necessary step sets the pace @jones-tonetti-2026, the absence of any sign of this in interest rates, which remain near 3 percent after inflation when a market that expected explosive growth would demand far more @chow-halperin-mazlish-2026, and the fact that no large economy has ever sustained growth above about 19 percent, and that only for three wartime years.

*My probability: 12 percent* that growth of this kind is under way by 2036.

== 6. The brake

_The build-out is stopped: by politics, by an accident or by a war._

*What has to be true.* One of three things. A political movement against AI wins: the local votes against data centers in November 2026 grow into state and then federal moratoria, and the leading countries, including China, reach some understanding that neither will race. Or an AI system causes a disaster, in finance or infrastructure or through a weapon, serious enough that strict controls follow, as they did for nuclear power after 1979 and 1986. Or the supply of advanced chips is cut off, most plausibly by a conflict over Taiwan, where most of the most advanced ones are made.

*How it unfolds.* Capability already in existence stays in use, so screen-based work continues to change slowly. The frontier stops or crawls. Robots do not arrive in numbers. The economy of 2036 looks much like that of slow diffusion, reached by a different road, with the difference that the capability is known to be available and is being held back by decision.

*For and against.* For: the public is strongly negative about AI, the incidents of 2026 show that serious accidents are possible, and the most capable systems are already being withheld from general release on safety grounds. Against: the commercial and military incentives to continue are enormous, a brake in one country is an advantage to its rivals, and the technology runs on hardware that already exists in tens of millions of units. A brake by treaty would be one of the hardest feats of coordination ever attempted. A brake by war or disaster needs no coordination, which is why most of this probability sits there.

*My probability: 8 percent.*

== Events that cut across the scenarios

Three events are likely enough, and independent enough of the scenario, to plan around.

*A financial bust in the AI build-out* (about 50 percent by the end of 2029). It delays the frontier by a year or three, hands the data centers to new owners at a discount, and serves as the recession that triggers the jobless recovery. It makes slow diffusion more likely only if it starves the leading laboratories of funds for long.

*The Social Security shortfall* (near certain, early 2030s). The program is financed by a tax on wages, and its retirement fund is projected to be exhausted at the end of 2032 even without AI. Displacement brings the date forward. Because the program is the most popular in American government, Congress will be forced to find other money for it at exactly the moment the machine economy is the obvious place to look. This is the likeliest occasion for the first large transfer from capital to households, and it will set a pattern.

*A shock to chip supply* (perhaps 10 to 15 percent over the decade). It would move any scenario toward the brake for several years.

== What to watch

Each scenario implies observations that would be surprising under the others. These are the ones I would track.

#figure(
  datatable(
    columns: (2.2fr, 1fr),
    align: (left, left),
    header: ([If you see this], [it favors]),
    [No public AI system completes week-long, loosely specified projects by the end of 2028], [Slow diffusion],
    [A laboratory's research staff shrinks while its progress speeds up; interest rates after inflation above 4 percent], [Takeoff, Rentier drift],
    [Total employment in computer, legal, business and office occupations falls two years running outside a recession], [The squeeze or faster],
    [Unemployment among graduates aged 22 to 27 above 8 percent], [The squeeze or faster],
    [More than a million humanoid robots sold in a year before 2030], [Rentier drift, Takeoff],
    [Labor's share of business income below 50 percent before 2030], [Rentier drift, Takeoff],
    [Congress creates a fund that holds AI equity for citizens, with a dividend written into law, by 2030], [Shared dividend],
    [Emergency checks and benefit extensions that expire on schedule], [The squeeze, Rentier drift],
    [Moratoria on data centers in several large states; an AI accident with deaths or large financial loss], [The brake],
  ),
  caption: [Signposts. None is decisive alone. Two pairs would come close: graduate unemployment above 8 percent together with a labor share below 50 percent before 2030 would mean one of the fast scenarios, and no system able to do week-long projects by the end of 2028 together with flat adoption by firms would mean slow diffusion.],
) <tab-signposts>

#checkpoint[
  - The six scenarios differ in three things: when machines can do the work, how fast they are put to it, and what politics does.
  - The central case, at 40 percent, is a decade in which mental work is squeezed, physical work is a temporary refuge, and policy is a patchwork.
  - Two scenarios are much faster (25 percent together), two are slower (23 percent together), and one has the central technology with a durable political settlement (12 percent).
  - The accounting behind the table assumes that people are still needed for some tasks, so it shows fewer jobs and a smaller share for labor and cannot show falling pay. For the two fast scenarios it understates the damage to wages.
  - In every scenario except the two slow ones and Shared dividend, the question of who owns the machine economy is open in 2036 and more urgent than it is today.
]
