#import "template.typ": *

= The premise: a machine that can do the work <ch-premise>

Part I ended on a condition. Automation has made workers richer for two centuries because something was always left that only people could do, and the reason something was always left is that every machine was narrow. This chapter states the premise that the rest of the guide examines: a machine that is not narrow.

== What is being assumed

#definition([Machine labor])[
  Machine labor is hardware and software that performs a task to the standard of a person who is competent at that task, without a person doing part of it. _Mental_ machine labor needs only a computer and a connection. _Physical_ machine labor also needs a body: a vehicle, an arm, a robot.
] <d-machine-labor>

#definition([The premise])[
  Machines can perform every task that people perform for pay, at least as well as people do, and at a lower cost than the cost of supporting a person.
] <d-premise>

Parts II and III take the premise as _completely_ true and work out what follows. That is a deliberate choice of method. It is the only way to see the destination clearly, and several of the results turn out to depend sharply on the difference between "nearly all tasks" and "all tasks." It is not a claim that the premise is true today, and a reader who doubts that it ever will be should read those parts as an extended "if." Part IV then asks the empirical questions: how much of the premise is already true, how fast the rest is arriving, and what is likely to happen along the way.

== Why this machine is different in kind

A power loom was designed to weave. Nobody expected it to learn bookkeeping. Each earlier machine was built for a purpose, and its builders had to understand the task well enough to mechanize it.

The systems now being built are made differently. They are trained on the accumulated record of what people have written, said, drawn, coded and done, with the aim of producing whatever a capable person would produce in the same situation. Nobody programs the skills in one by one. A system trained this way that learns to write contracts also turns out to write software, summarize medical studies and plan a wedding, because what it has absorbed is the general pattern of competent human behavior. The property that kept people in work through every earlier wave of automation was generality (@a-generality), and generality is the property this technology is designed to reproduce.

That is why the reassuring history of @ch-history cannot simply be extended forward. The history is a record of what happens when narrow machines meet general workers. It contains only one case of a general substitute meeting the workers it could fully replace, and those workers were horses.

== Five properties of machine labor

Suppose such a machine exists. As an input to production it differs from human work in five ways, and each one matters later.

*It is owned.* A machine worker is a piece of capital. It is built, bought and sold, and what it earns belongs to its owner (@a-ownership). A human worker owns their own work and is paid for it. This single difference is the root of the whole distribution problem.

*It can be copied.* A person takes about twenty years to raise and educate, and each one has to be trained separately. When one machine has learned a skill, the skill can be copied to a million machines for the cost of the copying. So the supply of a newly valuable skill, which among people is scarce for a generation, can be expanded among machines almost at once.

*It gets cheaper.* The price of a fixed level of AI capability has been falling roughly tenfold a year, through better chips, better methods and competition among suppliers @epoch-price-2026. Nothing about the cost of a person's upkeep falls like that.

*It does not rest.* A machine can work all 168 hours of the week. A full-time person works about 40.

*It can work on itself.* Machines that can do every task can do the tasks of building machines and of improving their design. The stock of machine labor can then grow by its own effort, which no stock of tools has been able to do before.

== How much of the premise is true today

The detailed evidence is in @ch-now. In outline, as of November 2026:

For _mental_ work, the premise is partly true and is advancing quickly. The best AI systems can now carry out, unattended, software projects that would take a skilled person days. One independent measure tracks the length of task that systems complete half the time: it stood at one hour in early 2025 and at seventeen hours in spring 2026 @metr-horizons-2026. On a benchmark made of real freelance projects graded against the paid professional's work, the best system completed 2.5 percent of projects in October 2025 and 41 percent in November 2026 @rli-2026. But on day-long professional tasks in finance and law the pass rate is still close to zero, about half the code that passes automated tests would be rejected by the people who maintain the software, and the systems do not get better at a job by doing it, as every human employee does @gdpx-2026 @notes-ai.

For _physical_ work, the premise is true in one large task and barely true elsewhere. Driving has been automated in the sense that matters: one company carries half a million paying passengers a week with no driver, with a much better safety record than human drivers. General-purpose robots are at a far earlier stage. The best published result has a robot completing 56 percent of long household chores in homes it had never seen, working at a fraction of human speed. Fewer than a hundred thousand humanoid robots exist, and most are in laboratories @notes-robots.

One caution applies to all such figures. Completing a task half the time is not the same as being employable. An employer needs something much closer to always, and the length of task that current systems complete four times in five is about one fifth of the length they complete half the time. Much of the distance between today's systems and the premise lies in that gap between usually and reliably.

#checkpoint[
  - The premise is that machines can do every paid task at least as well as people, for less than it costs to support a person (@d-premise).
  - It differs from all earlier automation because the machine is general, which removes the condition that protected workers before.
  - Machine labor is owned, can be copied, gets cheaper, works around the clock and can build more of itself.
  - Today the premise is partly true for mental work, true for driving, and mostly untrue for other physical work.
  - Part II now assumes the premise holds in full, and asks what happens to wages, to production and to the distribution of income.
]
