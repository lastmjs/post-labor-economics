#import "template.typ": *

= Minds first, hands later <ch-two-transitions>

The premise has two halves, mental labor and physical labor, and the evidence of the last chapter says they are arriving a decade apart. This matters more than any other fact about the next ten years, because an economy in which machines can think but cannot yet handle the physical world behaves differently from one in which they can do both. This chapter takes the two halves separately, then puts them together.

== Why the two halves move at different speeds

The difference is not that physical tasks are harder to learn, though many are. It is that mental machine labor is made of something that already exists in bulk, and physical machine labor is not.

A machine mind is a program running on chips in a data center. The chips are being manufactured in tens of millions, and a program that can do a job can be started a million times over on the day it is ready. A machine body has to be built, one for each worker replaced, out of motors, gears, sensors and batteries, in factories that mostly do not exist yet. @fig-capacity shows the result.

#plot("../figures/capacity.svg", [
  *Machine minds are plentiful; machine hands are not.* The upper group compares the number of Americans in screen-based jobs with the number of full-time AI agents that already-manufactured chips could run, if all of them were used for that purpose and for tasks that agents can do. The lower group compares Americans in mainly physical jobs with the world's stock of humanoid robots and with the number that could be built each year by 2030 under strong demand.
], source: [Epoch AI (October and April 2026); US Bureau of Labor Statistics; Dingel and Neiman (2020); industry trackers summarized in research note 04. `models/fig_capacity.py`]) <fig-capacity>

The chips shipped by the end of 2026 could run the equivalent of somewhere between 67 million and 240 million full-time agents; those shipped by the end of 2027, between 140 million and 720 million @epoch-agents-2026. About 60 million Americans work in jobs that can be done entirely at a computer @dingel-neiman-2020. So for mental work, the quantity of machine labor is not the constraint and will not become one. What limits substitution is whether the machines can do the work reliably, and how fast organizations change. When they can, the supply is there, and @p-at-cost says the price of that work will fall to its cost quickly.

For physical work the constraint is quantity as well as capability. The world's stock of humanoid robots is under a hundred thousand. The most careful study of the supply chain concludes that 1.5 to 3 million a year could be built by the end of 2030 if buyers wanted them, and perhaps 5 to 10 million with an aggressive expansion of the factories that make precision gears @epoch-robots-2026. There are 65 million Americans in mainly physical jobs, and several times that number in the rest of the rich world. Even on the fast path, robot labor stays scarce for years after it becomes capable, and scarce machine labor is priced above its cost. Physical wages therefore hold up longer.

== The first transition: work done at a screen

Take the three kinds of work that the scenario model in @ch-scenarios uses. Screen-based work is about 37 percent of American jobs and, because it is better paid, about 46 percent of all wages. It is where the highest-paid tenth of workers are concentrated, and it is the main occupation of the large metropolitan areas and of people with university degrees.

Three things follow from the earlier chapters about how this work changes.

*It goes task by task, and the last tasks matter most.* By @p-cliff, a profession in which machines do 80 percent of the tasks can be a better-paid profession than before, for the people who do the other 20 percent, which are typically the tasks of deciding what is wanted, checking the result and answering for it. The evidence of 2026 fits this: fewer junior recruits, higher pay for experienced staff, and rising output. The profession reaches the cliff when the machine can also specify, check and answer for the work.

*Entry closes before exit opens.* The adjustment so far is through hiring. Firms do not dismiss the people they have. They stop taking on beginners, whose work is the first that agents can do. For a time this protects everyone already inside. It also means that a profession can be dying while nobody in it has lost a job, and that the cost falls first on the young. The supply of experienced people, who learned by doing the junior work, then begins to dry up, which increases the pressure to automate the senior work too.

*It reverses forty years of pattern.* Since about 1980, new technology has favored the educated over the uneducated, the office over the factory, and the big city over the small town. The first transition runs the other way. The plumber and the nursing aide are, for a decade, safer than the paralegal and the financial analyst. This has no precedent in living memory, and @ch-power argued that its political effects will be large because of who is affected.

== The refuge: work done with hands

About 42 percent of American jobs, with 29 percent of wages, are mainly physical: transport, food service, production, construction, repair, cleaning, care assistance. During the first transition this work is the bottleneck, and @p-bottleneck applies to it in full.

There will be more of it to do. A world with abundant machine minds designs more buildings, plans more infrastructure and invents more products, all of which still have to be made, installed and maintained by hand. The data-center and power build-out alone is already adding construction work. And machine minds can direct human hands: a worker wearing a camera and an earpiece, guided step by step by a system that has absorbed every repair manual ever written, can do work that used to need years of training.

This is good news for physical workers, with two qualifications.

The first is crowding. Displaced office workers do not vanish. Many will move into physical and in-person work, and their arrival holds wages down. The last time a large class of routine office and factory jobs disappeared, between 1980 and 2010, the people displaced moved mostly into lower-paid service work, and wages there stagnated for a generation.

The second is that machine guidance cuts both ways. If a system can talk a novice through a master electrician's work, the master's skill is worth less. Physical work as a whole may be in demand while the premium for experience within it shrinks.

So the realistic picture of the refuge is plenty of physical work, at wages that rise modestly for the least skilled and fall for the most skilled, with far more people competing for it. It is a refuge, and it is temporary.

== The second transition: robots

The refuge ends when general-purpose robots are both capable and numerous. Each of these has its own clock.

*Capable.* The gap between a robot that completes a household chore 56 percent of the time and one that does so 99.9 percent of the time is the same kind of gap that driverless cars took about ten years to cross, from the first rides without a safety driver to a commercial service. Robots have advantages the cars did not: far more investment, far better learning methods, and, soon, machine minds doing the engineering. My judgment is that reliable general-purpose robots for structured settings, such as warehouses, factories and commercial kitchens, arrive around 2029 to 2032, and for unstructured ones, such as a crawl space under an old house or the bedside of a frail patient, in the middle of the 2030s or later.

*Numerous.* From tens of thousands to millions a year by 2030 is feasible. Tens of millions a year by the mid-2030s would require the kind of manufacturing effort that built the car industry, compressed into a decade, with most of the supply chain presently in China. It can be done; whether it is done by 2036 is a question of money and politics more than of physics.

*Cheap.* @fig-cost showed a humanoid robot costing \$13 to \$55 an hour today. At plausible 2030 prices the figure is \$5 to \$19, against \$24 to \$48 an hour for the American workers it would replace. The larger part of the robot's cost at that point is its share of a human supervisor. The moment that matters is when one person can oversee dozens of robots, or none is needed.

The order in which physical work goes is fairly predictable from how structured the setting is and how costly a mistake would be. Driving and warehouse handling go first, and are already going. Factory work, cleaning, stocking shelves and fixed-menu cooking follow. Delivery to the door, farm work and hotel housekeeping come later. The skilled trades in existing buildings, hands-on care of the old and the sick, and emergency work come last, and some of that last group, being work where the person is the point, does not go at all (@d-human-required).

== If only one half arrived

It clarifies the argument to ask what would happen if only one of the two transitions took place.

*Minds only.* Suppose machines could do all mental work and robotics stalled for a generation. The economy would be limited by its hands. Growth would be faster than today but far from explosive, because every plan still has to be carried out by people (@ch-growth). The share of income going to physical and in-person work would rise. Wages would not collapse, because a necessary task would remain that only people could do. But the wage structure would be compressed toward the pay of manual work, the premium for education would largely disappear, and labor's total share of income would fall, since nearly half the wage bill is now earned at a screen. That world is recognizably ours, harsher for the educated and somewhat kinder to manual workers, with a much richer class of owners. It is roughly what the central scenario of @ch-scenarios looks like in 2036.

*Hands only.* Suppose instead that robots could do all physical work but machines could not think. This is the twentieth century continued: machines take the muscle, people supply the judgment, and wages rise. It is also impossible, since a robot that can do all physical work must be able to perceive, plan and adapt, which is to say think.

*Both.* With both, there is no refuge, and Parts II and III apply without qualification.

The point of the exercise is that _the second transition is the one that changes the kind of economy we live in_. The first redistributes income and status within a wage economy. The second ends the wage economy. And the first speeds the second, because the scarcest input to robotics has been engineering talent, and engineering is mental work.

== A note on the rest of the world

This guide is about the United States, but three facts about other countries bear on its argument @notes-robots @notes-labor.

Countries that sell screen-based services to the rich world, such as India with its software and back-office industry and the Philippines with its call centers, face the first transition without owning the machines that carry it out. India's three largest technology-services firms have barely added staff since 2022, after years of rapid hiring.

Poor countries have generally become richer by offering cheap labor, first of all in factories. A world in which machine labor is cheaper than any human labor takes that ladder away.

And the physical half of the machine economy runs through China, which installs more than half of the world's industrial robots, builds nearly nine tenths of its humanoid robots and controls most of the supply of the magnets that every robot motor needs. The United States leads in machine minds. It does not lead in machine hands, and the second transition depends on them.

#checkpoint[
  - Mental machine labor can be supplied in unlimited quantity as soon as it is capable. Physical machine labor has to be manufactured, body by body.
  - Screen-based work, 37 percent of jobs and 46 percent of wages, is therefore exposed first and fastest. The adjustment comes through hiring before it comes through layoffs.
  - Physical work is a refuge for roughly a decade, with more work, more competition for it and less reward for skill.
  - Robots end the refuge when they are capable, numerous and cheap: beginning in the early 2030s in structured settings and finishing later, if ever, in the least structured.
  - The first transition reshapes the wage economy. The second ends it.
]
