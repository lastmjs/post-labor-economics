# 04 — The automation of physical labor: robots, autonomous vehicles and how fast they could scale

Research notes as of **2026-11-12**. Scope: general-purpose (humanoid) robots, robot "foundation models", autonomous vehicles, automation already at scale, forecasts and their track record, scaling limits, cost per robot-hour, the size of the US physical-labor target, and which jobs look hardest.

**Sourcing conventions.** Every figure carries its date and a URL. **[opened]** means I fetched and read that page (or PDF) myself during this research. **[secondary]** means I saw the figure only in a search-result summary or in someone else's report of the primary source and did not open the original. **[my arithmetic]** marks numbers I calculated from cited inputs. **[memory, unverified]** marks a figure I recall from before this session and could not re-check. Company-reported numbers are labelled as such; they are claims, not audits.

**Limitation to know about.** The shared web-search budget ran out roughly halfway through. Everything after that came from fetching known URLs directly (company newsrooms, IFR, BLS, arXiv, Wikipedia, pages surfaced earlier). Gaps this caused are listed under "What I could not verify".

---

## Where things stand (November 2026)

**Driving is the one physical job where full automation is a verified commercial fact, and it is still small.** Waymo carries more than 500,000 paid driverless rides a week in about 15 US cities with roughly 4,000 cars, and its own crash data over 271 million driverless miles shows about 82% fewer injury crashes than human drivers. But the US has about 4.3 million wage-earning drivers, autonomous trucks number in the dozens, Tesla's unsupervised robotaxi fleet is in the dozens to low hundreds, and Waymo's parent segment still loses about $2 billion a quarter.

**Humanoid robots are real products but not yet a real workforce.** Somewhere between 7,000 (IFR's count) and 16,000 to 20,000 (Epoch's and Bank of America's) were sold worldwide in 2025, and 19,000 to 25,000 in the first half of 2026. An estimated 85-90% are Chinese. Most go to research labs, schools, showrooms and data collection. Unitree's own prospectus says 73.6% of its humanoid revenue is research and education and 9% industrial. The best-documented paid industrial deployments (Figure at BMW, Agility's Digit in nine warehouses and plants) involve a handful to a few dozen robots doing one narrow task each. Agility, the US company with the most real customer hours, had $1.8 million of revenue in 2025. In January 2026 Musk conceded that no Optimus robot was doing useful work in Tesla's factories.

**The software is improving fast, from a low base.** In 2026 several labs reported robots coping with situations they were not trained for: Physical Intelligence's π0.7 matched expert human teleoperators at folding shirts on a robot arm it had no folding data for (80% success), Figure's Helix 2.5 succeeded on 56% of long chores across 30 homes it had never seen, and NVIDIA's GR00T 2 managed 40% on 50 tasks its robot had never been trained on. Those are company-reported, the tasks are short, and 56% is not a product. Independent reviewers (Epoch AI, February 2026) find robots are typically 3 to 10 times slower than people, that almost all manipulation outside warehouses is still at lab stage, and that touch, dexterous hands, long tasks and reliability remain open.

**Automation that already exists is large and growing steadily, not explosively.** Factories installed 603,307 industrial robots in 2025 (59% of them in China), bringing the stock to 5.08 million. Amazon has more than a million robots alongside 1.64 million employees. Professional service robots sold about 250,000 units in 2025. These grow at 9% to 24% a year.

**Cost is the number to watch.** Today an industrial humanoid costs a customer roughly $13 to $55 per robot-hour depending on how many shifts it runs (Agility's filed pricing), which is more than the human it replaces once speed is counted. At a plausible 2030 price of $30,000 to $50,000 the arithmetic gives roughly $5 to $10 per robot-hour, well under the $24 to $37 an hour that US employers pay in compensation for service and production work. The economics flip if, and only if, the robots become capable, fast and reliable enough to do the work.

**Physical scale-up is slow relative to software but not slow by historical standards.** Epoch's bottom-up study puts 1.5 to 3 million humanoids a year "clearly achievable" by the end of 2030 if demand appears, with precision gear reducers the tightest constraint and China holding most of the supply chain. The US physical workforce is about 65 million people earning about $3.2 trillion a year. Even on aggressive assumptions, replacing most of it with machines is a 2030s story, not a 2020s one.

---

## 1. Humanoid and general-purpose robots

### 1.1 How many exist: the trackers disagree by a factor of two

| Source | Period | Units | Notes | Link |
|---|---|---|---|---|
| IFR, World Robotics 2026 (Service Robots) | 2025 | "almost 6,900" humanoids sold; 171 manufacturers known | Narrowest definition (full-size, reported sales). IFR says most are sold for testing, research and pilots | https://ifr.org/img/worldrobotics/Executive_Summary_WR_2026_-_Service_Robots.pdf [opened]; press release 2026-09-30 says "about 7,000 full-size units (above 140 cm)" https://ifr.org/ifr-press-releases/news/global-sales-of-professional-service-robots-surge-24-percent [opened] |
| Omdia | 2025 | 13,318 (up ~480% on 2024) | AgiBot 5,168; Unitree 4,200; UBTech 1,000 | https://technode.com/2026/01/09/chinas-agibot-leads-global-humanoid-robot-shipments-in-2025-omdia-says/ [opened]; total via https://www.nextmsc.com/industry-deep-dive/humanoid-robots-announced-vs-shipped-units [opened] |
| Epoch AI | 2025 | ~16,000 produced; doubling every ~6 months 2022-2025 | Epoch calls the growth rate "probably anomalous" because the base is tiny and buyers are mostly research and marketing | https://epoch.ai/publications/how-fast-could-robot-production-scale-up (2026-04-22) [opened] |
| Bank of America | 2025 | ~20,000, 85-90% Chinese | | [secondary] |
| SAG / Counterpoint / IDC | H1 2026 | ~19,100 / >22,000 / ~25,000 | Growth of 272% to 432% year on year | NextMSC tracker, data cut-off 2026-10-09 [opened] |
| Forecasts for full-year 2026 | 2026 | Counterpoint >50,000; SAG ~60,000; Goldman 75,000; BofA 90,000 | | NextMSC [opened]; Goldman via https://humanoid.guide/?p=18115 (2026-09-15) [opened] |

Why they differ: there is no agreed definition. Unitree publicly disputed the Omdia ranking in January 2026, saying it delivered more than 5,500 pure humanoids to end customers (and built more than 6,500) and that rivals count wheeled and arm-only machines (https://www.caixinglobal.com/2026-01-24/unitree-defends-robot-sales-as-rival-claims-market-crown-102407436.html [opened]).

For scale: 13,318 humanoids is 2.2% of the 603,307 industrial robot arms installed in 2025 and 0.014% of the 96.4 million motor vehicles built that year [my arithmetic].

### 1.2 Company by company

| Company | Shipped / deployed (dated) | Price | What they actually do | Sources |
|---|---|---|---|---|
| **Unitree** (China) | 2025: >5,500 delivered (company), 4,200 (Omdia). First nine months of 2025: 3,701 built, 3,551 sold. H1 2026: ~5,000-5,900 (trackers). 2025 revenue ¥1.71bn (~$257m), adjusted net profit ¥600m; listed on Shanghai STAR Market, subscriptions opened 2026-08-10 [secondary for date]. Five-year plan: capacity for 75,000 humanoids and 115,000 quadrupeds a year | G1 from $13,500 (US list, 2026-11); R1 Air ¥29,900 (~$4,500); G1 EDU ¥200,000-400,000. Average humanoid selling price fell from ¥593,400 (2023) to ¥167,600 (~$25,000) in the first nine months of 2025 | 73.6% of humanoid revenue is research and education, 17.4% "commercial consumption" (demonstrations, displays), 9.0% industrial | https://www.therobotreport.com/unitree-ipo-shows-a-real-hardware-business-the-humanoid-case-is-still-early/ [opened]; https://www.recodechinaai.com/p/chinese-star-robot-maker-unitree [opened]; https://www.trendforce.com/news/?p=55076 [opened]; https://www.unitree.com/g1 [opened] |
| **AgiBot** (China) | 2025: 5,168 (Omdia; includes wheeled forms). H1 2026: 8,400-9,700 (trackers). 10,000th robot of all types late March 2026; 20,000 cumulative by September 2026 | Not verified | Data collection, guiding and reception, some factory pilots (not independently verified) | NextMSC [opened] |
| **UBTech** (China) | 2025: ~1,000 (Omdia). H1 2026: 921 full-size humanoids sold (interim results 2026-08-28). Capacity targets 5,000 (2026) and 10,000 (2027) | Not verified | Walker S-series in car and electronics factories: tote carrying, inspection [memory, unverified in detail] | NextMSC [opened] |
| **Figure** (US) | Figure 02: a small fleet (count never published) retired by 2026-09-30. Figure 03: >350 delivered by 2026-04-29, to internal R&D, data collection, HQ, customer sites and homes; production rate went from 1 a day to 1 an hour. 1,000 cumulative by 2026-07-23 [secondary]. Omdia put 2025 shipments at ~150 [secondary] | Not published | BMW Spartanburg: loading sheet-metal parts for welding (2025); from mid-2026 sorting parts into sequencing trolleys. Agreement with Catalyst Brands (2026-05-26) | https://www.figure.ai/news/ramping-figure-03-production [opened]; https://www.figure.ai/news/production-at-bmw [opened]; https://www.figure.ai/news/f-02-decommission [opened]; https://www.therobotreport.com/bmw-group-deploys-figure-03-humanoid-after-tests-previous-version/ [opened] |
| **Agility Robotics** (US) | Digit 4: >65,000 operating hours across 9 customer facilities (reported 2026-09). 2025 net sales $1.8m against a $140m operating loss. One customer has a 3-year contract for ~1,000 Digit 5 robots (">$300m" of orders). S-4 projects ~800 deployed in 2027, ~7,000 in 2030. Going public by SPAC at $2.5bn | Digit 5: ~$200,000 purchase + $20,000 deployment + ~$36,000 a year software and maintenance; or ~$8,500 a month as a service + $25,000 deployment | Tote handling, palletizing, machine tending, kitting at GXO, Schaeffler, Toyota Canada, Mercado Libre | https://www.therobotreport.com/agility-robotics-reports-18m-revenue-ahead-of-humanoid-spac/ (2026-09-07) [opened]; https://www.agilityrobotics.com/solution [opened] |
| **Tesla Optimus** (US) | No unit count has ever been disclosed. Omdia estimated ~150 in 2025 [secondary]. 2026-10-21: Tesla says "early production" of its first production-quality units has begun on a high-volume line in Fremont. A September 2026 report said several hundred a week [Electrek headline, underlying report not opened]. External deliveries "around the end of 2027" | No price. Musk's long-run target $20,000-30,000 (2024-10). CFO, 2026-10: cost "trending closer" to the expected Cybercab cost, target not yet reached | 2026-01-28: Musk admitted no Optimus was doing useful work in Tesla factories. 2026-10: Musk said design still needs changes for safety, reliability and durability, hands are the hardest part, and the AI needs significant work | https://evwire.com/p/tesla-tsla-q3-2026-earnings-call-full-transcript [opened]; https://techcrunch.com/2026/10/21/tesla-stars-optimus-robot-production-in-california-as-profit-falls-43/ [opened]; https://electrek.co/guides/tesla-optimus/ [opened] |
| **1X** (US/Norway) | NEO factory in Hayward opened 2026-04-30, stated capacity 10,000 a year. >10,000 preorders claimed (Oct 2025). No verified count of customer deliveries as of July 2026 | $20,000 or $499 a month | Home chores, with remote human "Expert Mode" for tasks it cannot do | https://www.1x.tech/neo [opened]; https://www.1x.tech/discover [opened]; NextMSC [opened] |
| **Boston Dynamics / Hyundai** | Electric Atlas "product version" shown at CES in January 2026 in a remotely controlled demo. Deployment at Hyundai's Georgia plant scheduled for 2028. Hyundai target: production system for 30,000 robots a year by 2028. No unit count | Not published | Pilot work only. (Its Stretch truck-unloader and Spot inspection robot are real commercial products.) | https://en.wikipedia.org/wiki/Atlas_(robot) [opened]; NextMSC [opened] |
| **Apptronik**, Galbot, Leju, EngineAI, Fourier | Galbot >1,100 and Leju 650 in H1 2026 (Counterpoint). Apptronik: nothing verified | | | NextMSC [opened] |

### 1.3 Prices and bill of materials

- **What a small Chinese humanoid costs to build.** Unitree's average humanoid price was about $25,140 in the first nine months of 2025 at a company-wide gross margin of about 60% (63% for humanoids per 36Kr [secondary]). That implies a cost of goods of roughly **$9,000 to $10,000 per robot** [my arithmetic]. This is the only hard, filed data point on humanoid unit cost. Caveat: the G1 is 35 kg, carries 2 to 3 kg per arm and runs about 2 hours; it is not built for industrial work (https://www.unitree.com/g1 [opened]).
- **What a full-size industrial humanoid costs.** Agility charges about $200,000 (S-4, above). Analysts cited by 36Kr put Optimus at about **$46,000 with Chinese suppliers and $131,000 without** (https://humanoid.guide/humanoid-actuator-supplier-landscape/, 2026-09 [opened, itself secondary]). Goldman Sachs earlier estimated manufacturing cost falling from $50,000-250,000 to $30,000-150,000 per unit between 2023 and 2024 [memory, unverified; Goldman page returned 403].
- **Where the cost sits.** Actuators are about 50% of the bill of materials (Schaeffler) to 60% (Hyundai Mobis). An Optimus-class robot has about 28 structural actuators, 14 harmonic reducers, 14 to 16 planetary roller screws and 40-plus servo motors with rare-earth magnets; each dexterous hand adds about 20 coreless motors. Roller screws from the Swiss incumbent cost $1,350 to $2,700 each; Chinese versions about half (humanoid.guide, 2026-09 [opened, secondary to 36Kr and company disclosures]).
- **Price forecasts.** IDTechEx: average $114,700 (2024) falling to $37,000 by 2030 [secondary]. Bain (2025-04-15): unit costs fell at least 40% between 2022 and 2024 (https://www.bain.com/insights/humanoid-robots-at-work-what-executives-need-to-know/ [opened]).

### 1.4 Teleoperation: how much is a person behind the curtain?

- **Tesla.** Critics showed that Optimus units at the October 2024 event and a November 2024 hand demo were remotely operated; a December 2025 Miami demo showed a robot apparently mimicking an operator removing a headset (https://en.wikipedia.org/wiki/Optimus_(robot) [opened]; Electrek guide [opened]).
- **1X.** NEO's product page says it works autonomously by default but offers scheduled sessions in which a remote 1X employee supervises or pilots the robot for chores it has not learned (https://www.1x.tech/neo [opened]). Independent estimates of early autonomy are 60-70% [secondary, low quality].
- **Boston Dynamics.** The CES 2026 Atlas demo was remotely controlled (Wikipedia [opened]).
- **Figure, Physical Intelligence.** Both state their published demos are autonomous. Neither publishes intervention rates from customer sites. Figure's BMW write-up lists a target of zero interventions per shift but not the measured number (https://www.figure.ai/news/production-at-bmw [opened]).
- **Teleoperation is also the training method.** Most robot data is collected by people driving robots. NVIDIA's GR00T 2 training set includes 23,500 hours of teleoperation next to 402,730 hours of first-person human video (https://www.unite.ai/?p=508411, 2026-11-09 [opened]). Physical Intelligence's teleoperators average about 375 hours of experience each (arXiv 2604.15483 [opened]).
- **Epoch's audit** (2026-02-10) found some apparently autonomous demos were not: 1X's plant-watering demo "does not appear autonomous" and Loki's trash demo needed teleoperation for edge cases (https://epoch.ai/publications/where-autonomy-works-evaluating-robot-capabilities-in-2026 [opened]).

### 1.5 Reliability, battery life, speed

- **No vendor publishes mean time between failures.** The closest disclosures: Figure 02 ran 1,250+ hours at BMW over about six months of daily 10-hour shifts and loaded 90,000+ parts with "minimal hardware failures"; the forearm was the top failure point and was redesigned (Figure, 2025-11-19 [opened]). Agility reports 65,000+ fleet hours across nine sites but no failure data [opened]. Figure's new line reports an end-of-line first-pass yield of "over 80%" (2026-04-29 [opened]), meaning up to one in five robots needs rework before shipping.
- **Battery.** Unitree G1 about 2 hours [opened]. 1X NEO 4 hours on 842 Wh, with 6 minutes of charging per hour of runtime [opened]. Figure 03 charges wirelessly at 2 kW through its feet (runtime not on its spec page) [opened]. Quadrupeds and drones last about 2 hours, wheeled robots 10 to 20 (Epoch [opened]). In practice a humanoid's duty cycle is set by charge time or battery swaps, so 24-hour operation means roughly 16 to 20 productive hours [my estimate].
- **Speed versus a human.** Epoch (2026-02): most autonomous systems are **2 to 10 times slower** than people. Figure's package-sorting demo was about 4 times slower than an average worker at ~95% accuracy; laundry folding about 5 times slower; precision insertion about 5 times slower at 52-83% success. The exceptions are purpose-built warehouse machines: Amazon's Vulcan runs near human speed and Boston Dynamics' Stretch unloads trucks at above 99% reliability [opened].
- **Safety.** Agility's own site says certain safety features of Digit 5 are still in development [opened]. Rodney Brooks argues walking humanoids are too dangerous to work close to people without new mechanical designs (https://rodneybrooks.com/predictions-scorecard-2026-january-01/ [opened]).

---

## 2. Robot foundation models

### 2.1 What the leading models have shown (all company-reported unless noted)

| Model (date) | Headline results | Caveats stated by the authors or reviewers | Source |
|---|---|---|---|
| **Physical Intelligence π0.7** (2026-04-16), ~5bn parameters | Zero-shot shirt folding on a robot arm it had no folding data for: 80% success and 85.6% task progress, against 80.6% and 90.9% for ten expert human teleoperators. Seen tasks "often" above 90%; unseen tasks or unseen task-robot pairs 60-80%. Tested following instructions in 4 unseen kitchens and 2 unseen bedrooms | Unseen multi-stage tasks (cooking a sweet potato, up to 5 minutes) do not work from a prompt alone; they needed step-by-step verbal coaching, later distilled into a policy. Hard to know which tasks are truly "unseen" | https://arxiv.org/html/2604.15483v1 [opened] |
| **Physical Intelligence π\*0.6** (2025-11-18) | Reinforcement learning from the robot's own experience "more than doubles" throughput and roughly halves failure rate on the hardest tasks: folding laundry in real homes, assembling boxes, making espresso | Per-task, after on-task practice | https://arxiv.org/abs/2511.14759 [opened, abstract]. Epoch reports 95% on t-shirts, 75% on jeans [opened] |
| **Figure Helix 2.5** (2026-09-17) | Three long whole-body chores (tidy living room, fold towels, make bed) in **30 Bay Area homes never seen before**, fixed weights, no data collected there: **56% success** with no partial credit, versus 9% for the same model without pretraining on Figure's "Index" human-video dataset | "Zero-shot" refers to homes and objects; the three chores were trained elsewhere. Trial counts, per-task rates and speed not published. Figure itself says general humanoid robotics is not solved | https://www.figure.ai/news/helix-2-5-zero-shot-30-home-generalization [opened] |
| **Figure Helix 02** (2026-01-27) | Four-minute dishwasher unload and reload, 61 actions, walking and manipulating | A single staged kitchen; no success rate published | https://figure.ai/news/helix-02 [secondary]; Epoch: about 40% slower than a person, larger items only [opened] |
| **NVIDIA GR00T 2** (2026-11-09), 2bn parameters | **40% zero-shot** success on 50 tasks absent from the robot's training data; 71% average with one demonstration per task; 95% with five | NVIDIA's whitepaper says the 95% is partly by construction (tasks were pre-selected as learnable). Code not yet released. An earlier open model, GR00T N1.6, scored low single digits to ~10% in one independent real-world benchmark [secondary] | https://www.unite.ai/?p=508411 [opened] |
| **Google Gemini Robotics 1.5** (2025-10) and **On-Device 2** (2026-07-30) | 1.5: one model across different robot bodies, with a reasoning model that plans in language before acting. On-Device 2: success on newly introduced robots rose from 6.7% to 53.3% (SO101 arm) and from 24.4% to 75.6% (Dexmate) as per-task data grew | Model card lists limited out-of-distribution generalization and limited control of high-degree-of-freedom robots; whole-body and mobile control out of scope. A "Gemini Robotics 2" family was reported in August 2026 but I could not open a primary source | https://arxiv.org/abs/2510.03342 [opened]; https://deepmind.google/models/model-cards/gemini-robotics-on-device-2/ [opened] |
| **Tesla** | No published model or benchmark. 2026-10: Musk said the AI needs significant work before Optimus is useful for open-ended tasks, that Tesla needs 10,000-20,000 robots for self-play training, and promised a video of unscripted behaviour in "one to two months". A September 2026 report said production robots "can't generalize" | | Q3 2026 call transcript [opened]; Electrek guide [opened] |
| **Chinese efforts** | ByteDance's GR-RL reached 83% on shoelace insertion, about 5 times slower than a person (via Epoch [opened]). AgiBot, Galbot, Unitree and others have their own models | I could not open primary sources for these | |

### 2.2 What works outside the lab, per Epoch's independent audit (2026-02-10)

Epoch graded tasks by the best available system of any shape (https://epoch.ai/publications/where-autonomy-works-evaluating-robot-capabilities-in-2026 [opened]):

- **Production deployment:** picking and placing varied items in warehouses; truck unloading; underwater navigation.
- **Pilot deployment:** moving people inside buildings; sidewalk and drone food delivery.
- **Validated in a lab:** sorting packages on a conveyor; folding basic laundry (one commercial deployment folded 200,000 towels in three months at 99% acceptance, uniform items only); tidying a bedroom in a new home (often not on the first try).
- **Significant limits even in the lab:** cleaning a kitchen (no robot has done one end to end); connecting cables in a PC; precise insertion; watering plants; taking out the trash.
- **Early research:** assembling furniture; cooking a simple meal.

Epoch's summary: navigation is commercial, manipulation mostly is not, transfer to new objects and places is the main bottleneck and "should not be assumed", and foundation models are the most promising route but the evidence is early. The models in the table above mostly post-date that audit and move a few household tasks from "lab" toward "pilot".

### 2.3 The hard unsolved problems

1. **Reliability over long tasks.** Success compounds. A task with 20 steps at 95% per step succeeds 36% of the time; at 99% per step, 82%; at 99.9%, 98% [my arithmetic]. Going from a 56% demo to a 99.9% product is most of the work, and it is the part that took self-driving cars fifteen years.
2. **Hands and touch.** Musk and Tesla's engineers named the hand as the hardest hardware problem in October 2026 [opened]. Current foundation models are trained almost entirely on vision and position, not force (2025 survey, https://arxiv.org/html/2504.11827 [secondary]). Figure 03 added fingertip sensors that detect three grams and palm cameras [opened]; 1X announced 25-degree-of-freedom tendon hands in July 2026 [opened]. Brooks predicts deployable dexterity will remain far behind human hands beyond 2036 and argues current methods collect the wrong data [opened].
3. **Data.** Language models learned from trillions of words already on the internet. No equivalent store of robot actions exists. The 2026 answer is first-person human video at huge scale (NVIDIA 402,730 hours; Figure says its Index dataset grows by about 35 minutes of human experience every second and has committed $3.5 billion of compute [opened and secondary]). Helix 2.5's jump from 9% to 56% is the strongest evidence so far that this works. Whether it keeps scaling is the central open question.
4. **Speed.** 2 to 10 times slower than people on most manipulation (Epoch).
5. **Generalization that is honestly measured.** There is no trusted common benchmark. Results are self-reported on self-chosen tasks; the one distributed blind evaluation I found (RoboArena, 2025) covers only open models (https://arxiv.org/abs/2506.18123 [secondary]).

### 2.4 Where Moravec's paradox stands

The paradox (1980s) says that what is hard for people, such as chess and calculus, is easy for computers, and what a one-year-old does, seeing and moving, is hard (https://en.wikipedia.org/wiki/Moravec%27s_paradox [opened]). In November 2026 it still holds in a weaker form. AI passes professional exams and writes software, while no robot can reliably clean an unfamiliar kitchen. But the nature of the gap has changed. In 2022 the question was whether learned general-purpose manipulation was possible at all. In 2026 it is demonstrably possible at 40-80% success on short tasks in new places, and the remaining gap is reliability, speed, hands and data. That is an engineering-and-scale gap of the kind that tends to close, though the self-driving precedent says it can take a decade or more. Arvind Narayanan's caution is worth keeping: the paradox describes what researchers chose to work on, not a law about which tasks are hard (cited on the Wikipedia page [opened]).

---

## 3. Autonomous vehicles

### 3.1 Waymo

- **Paid rides.** ~50,000 a week (May 2024) → 250,000 (April 2025 [secondary]) → 400,000 (February 2026) → **500,000+ (late March / April 2026)**. No higher figure has been published since; the company's stated goal is 1 million a week by the end of 2026, and as of mid-October a Motley Fool review thought it would fall short (https://techcrunch.com/2026/03/27/waymo-skyrocketing-ridership-in-one-chart/ [opened]; https://www.fool.com/investing/2026/10/11/alphabet-is-the-robotaxi-stock-to-buy-as-waymo-chases-1-million-rides-a-week/ [opened]). Waymo's blog through 2026-11-10 gives no new ride count (https://waymo.com/blog/ [opened]).
- **Cities.** 10 US metros in March 2026; 14 on 2026-09-01 (adding Denver, San Diego, Tampa); 15 by October with Las Vegas (2026-09-14), and Nashville appears in an October service-area expansion. Madrid testing announced 2026-10-20, riders targeted for 2027 (https://carnewschina.com/2026/09/04/zeekr-robotaxis-hit-american-streets-as-waymo-footprint-reaches-14-cities/ [opened]; https://thenextweb.com/news/waymo-20000-robotaxis-2027 [opened]).
- **Fleet.** Last official number: 3,067 vehicles (December 2025, filing to NHTSA, via TechCrunch [opened]). About 4,000 in October 2026 according to Semafor's sources; internal targets of 8,000 by end-2026 and 20,000 by end-2027 (TNW [opened]). About 300 of the new Zeekr-built "Ojai" vans were carrying riders in early September with about 2,900 more being fitted out in Arizona (CarNewsChina [opened]).
- **Rides per car.** 500,000 a week over ~4,000 cars is about 18 paid rides per car per day [my arithmetic].
- **Safety.** Through June 2026, 271.3 million rider-only miles. Versus human benchmarks in the same cities: 82% fewer injury-causing crashes (841 fewer), 82% fewer airbag-deployment crashes, 95% fewer serious-injury-or-worse crashes (55 fewer), 93% fewer pedestrian-injury crashes (https://waymo.com/safety/impact/ [opened]). This is Waymo's own analysis of mandatory federal crash reports; peer-reviewed versions of earlier data exist but I did not open them.
- **Failures.** Many cars stalled at dark intersections in the San Francisco blackout of 2025-12-20, exposing dependence on remote human confirmation (Brooks [opened]). Service was paused in five cities in May 2026 after cars drove into flooded roads (TNW [opened]).
- **Money.** $16 billion raised in February 2026 at a $126 billion valuation; a $5 billion loan in October 2026 (Fool, TNW [opened]). Alphabet's "Other Bets" segment, mostly Waymo, lost $2.1 billion in Q1 2026 and $1.8 billion in Q2 (Fool [opened]).

### 3.2 Tesla

- **What exists.** Robotaxi service launched in Austin 2025-06-22 with a safety monitor. First rides without a monitor 2026-01-22 (one car). Texas DMV filings required from 2026-05-28 showed **42** Tesla vehicles offering rides statewide, against Waymo's 577; Bloomberg counted 59 on 2026-06-09 and found a safety monitor in 3 of 10 test rides (https://insideevs.com/news/797263/tesla-robotaxi-texas-fleet/ [opened]; https://www.insurancejournal.com/news/southcentral/2026/06/11/873480.htm [opened]). On 2026-10-10 Tesla claimed 300+ purpose-built Cybercabs serving Austin. Its California service uses human drivers; Tesla told the regulator in November 2025 that the software is not designed to run without one (Bloomberg [opened]).
- **Miles and safety.** Tesla's new safety site reports 3.1 million autonomous robotaxi miles from 2026-01-22 to 2026-10-18 across six markets (Austin 2.1 million) with zero injuries (https://notateslaapp.com/news/4860/tesla-names-next-robotaxi-cities-shares-miles-driven-safety-data [opened]; Tesla's own figures). That is about 1% of Waymo's cumulative driverless miles. Tesla had reported 17 incidents to NHTSA by June 2026, two caused by remote employees driving the cars (Bloomberg [opened]).
- **Economics.** Tesla's target is 30 cents per paid mile; the CFO said in October 2026 it is "not there yet". Unsupervised operation of customer-owned cars is now promised for about Q2 2027, after a Q4 2026 promise slipped (Q3 call [opened]; TechCrunch [opened]).

### 3.3 Zoox, China, trucks

- **Zoox (Amazon).** Began paid rides in Las Vegas in the third quarter of 2026 in vehicles with no steering wheel; "operates in 12 US cities" including test cities (Amazon Q3 2026 release, 2026-10-29, https://ir.aboutamazon.com/news-release/news-release-details/2026/Amazon-com-Announces-Third-Quarter-Results/default.aspx [opened]). A federal exemption granted 2026-07-30 allows up to 2,500 such vehicles a year [secondary]. Fleet size not disclosed.
- **Baidu Apollo Go.** 3.1 million fully driverless rides in Q3 2025; more than 20 million cumulative rides by February 2026; 28 cities and 240 million fully driverless kilometres as of the Q2 2026 results [all secondary; I could not open Baidu's release]. One secondary article claims about one million rides in Q2 2026, which conflicts with the Q3 2025 figure and is probably wrong.
- **Pony.ai.** 1,975 robotaxis on 2026-06-30. Q2 2026 robotaxi revenue $12.1 million (up 691%); net loss $45.4 million. Claims city-level unit-economics breakeven in Guangzhou and Shenzhen (https://blog.pony.ai/pony-ai-reports-record-growth-in-paid-robotaxi-services-joint-deployment-model-to-accelerate-dual-engine-expansion/ [opened]). That is roughly $25,000-30,000 of annualized fare revenue per vehicle [my arithmetic].
- **Trucking: Aurora.** Driverless commercial freight in Texas since 2025. As of 2026-10-28: "20+" driverless trucks built and entering the fleet; the target of 200 trucks slipped from end-2026 to February 2027; 1,000+ by end-2027 and 30,000 by 2030 reaffirmed; cash over $1 billion; positive cash flow targeted for 2028. Truck maker Paccar had insisted a human stay in the cab; trucks from International run with nobody behind the wheel (https://www.ttnews.com/articles/aurora-earnings-q3-2026 [opened]; press release via https://www.webull.com/news/15827710638425088 [opened]). About 500,000 cumulative driverless commercial miles as of September 2026 [secondary].
- **BLS's view.** BLS said in February 2025 that autonomous trucking had "not yet had any meaningful employment impacts" and made no adjustment to its truck-driver projections (https://www.bls.gov/opub/mlr/2025/article/incorporating-ai-impacts-in-bls-employment-projections.htm [opened]).

### 3.4 Honest cost per mile

No operator publishes cost per mile. What can be pinned down:

| Input | Figure | Source |
|---|---|---|
| Waymo's new vehicle, fully equipped | ~$103,000-110,000 (industry estimate; includes a ~100%+ tariff burden on the Chinese-built body). Previous Jaguar: ~$200,000 | CarNewsChina 2026-09-04 [opened] |
| Waymo sixth-generation sensor and compute kit | under $20,000 (expected) | Electrek 2026-02-12 [secondary] |
| Tesla's target | $0.30 per paid mile, not yet achieved | Q3 2026 call [opened] |
| Third-party estimates of Waymo's cost | $0.85 to $2.50 per mile, all unverified blog or analyst estimates | [secondary, low quality] |
| US truck, all-in, human-driven | $2.336 per mile in 2025 | ATRI, July 2026, https://truckingresearch.org/about-atri/atri-research/operational-costs-of-trucking/ [opened] |

**My estimate for a robotaxi today [my arithmetic, assumptions explicit].** Vehicle $105,000 over 250,000-400,000 miles: $0.26-0.42 per mile. Electricity: $0.05-0.08. Maintenance, tires, cleaning: $0.10-0.20. Insurance and claims: $0.05-0.15. Depots, chargers, field staff, remote assistance, customer support: $0.20-0.60 (the least known item). Total **$0.66-1.45 per vehicle-mile**. Only 50-65% of miles carry a paying passenger, so **roughly $1.00-2.90 per paid mile**, before R&D, mapping and corporate overhead. Human ride-hail fares in large US cities run roughly $2-3.50 per mile [memory, unverified], of which the driver keeps perhaps two-thirds and pays for the car. So a robotaxi at scale is around cost parity with a human-driven ride today and plausibly well below it once vehicles cost $50,000-60,000 and utilization rises. It is not there in the accounts: at 500,000 rides a week and an assumed $20 fare, Waymo's ride revenue is about $0.5 billion a year, against segment operating losses of about $7-8 billion a year [my arithmetic from the figures above].

**Trucks.** A heavy-truck driver's mean wage is $59,710 (BLS May 2025). At 100,000 miles a year that is about $0.60 a mile in wages, or about $0.88 with benefits, roughly 38% of ATRI's $2.34 all-in cost [my arithmetic]. A driverless truck can also run close to 20 hours a day instead of the 11 hours of driving that federal rules allow a human [memory, unverified]. That is why long-haul trucking has the clearest economic case of any physical automation, and why its slow rollout (dozens of trucks after years of promises) is informative.

### 3.5 US driving jobs (BLS OEWS, May 2025)

| Occupation | Employment | Mean annual wage |
|---|---|---|
| Heavy and tractor-trailer truck drivers | 2,062,040 | $59,710 |
| Light truck drivers | 983,300 | $48,770 |
| Driver/sales workers | 409,180 | $40,730 |
| School bus drivers | 402,930 | $48,430 |
| Shuttle drivers and chauffeurs | 248,530 | $39,880 |
| Transit and intercity bus drivers | 159,240 | $60,280 |
| Taxi drivers | 41,050 | $49,930 |
| **Total** | **4,306,270** | **~$229 billion in wages** |

Source: https://www.bls.gov/news.release/ocwage.t01.htm [opened]; totals [my arithmetic]. This survey covers employees only. It leaves out most Uber and Lyft drivers and owner-operator truckers, who are self-employed, so the true number of people who drive for a living is well above 4.3 million (probably above 5 million; I could not source a current count).

---

## 4. Existing automation at scale

### 4.1 Industrial robots (IFR World Robotics 2026, released 2026-09-24)

- **Installations 2025:** 603,307 (+11%), the first year above 600,000 after four years near 550,000. Market value $18.6 billion. **Operational stock: 5,079,078** (+9%).
- **By region:** Asia 457,315 (76%); Europe 73,054 (-14%); Americas 57,044 (+14%).
- **By country:** China 354,226 (+20%, 59% of the world; Chinese brands supplied 55% of them); United States 38,428 (+12%, now second); Japan 36,219 (-19%); South Korea ~30,000; Germany under 25,000.
- **By industry:** electronics 142,235; automotive 138,429; metal and machinery 108,571.
- **Forecast:** 655,000 in 2026 (+9%); 806,000 in 2029 (about 7% a year).
- **IFR on humanoids:** most remain prototypes or pilot-stage; for industrial production tasks conventional robots are "economically superior" at the current stage.
- Sources: https://ifr.org/img/worldrobotics/Executive_Summary_WR_2026_-_Industrial_Robots.pdf [opened]; https://ifr.org/ifr-press-releases/news/five-million-robots-now-operate-in-factories-globally [opened].
- Long-run growth: about 248,000 installed in 2015 to 603,000 in 2025 is 9.3% a year [my arithmetic from IFR's chart].

### 4.2 Robot density (industrial robots per 10,000 manufacturing employees)

Two IFR releases this year give different numbers, so both are shown.

| Country | 2024 data (IFR release 2026-04-08) | 2025 data (IFR release 2026-11-12) |
|---|---|---|
| South Korea | 1,220 | 1,066 |
| Singapore | 818 | 873 |
| Germany | 449 | 469 |
| Japan | 446 | 452 |
| United States | 307 (8th) | 323 (8th) |
| China | 166 (22nd) | 193 (19th) |
| World average | 132 | 152 |

Sources: https://www.robotics247.com/article/ifr-report-robot-density-surges-in-europe-asia-and-americas [opened]; https://ifr.org/ifr-press-releases/news/robot-density-highest-in-south-korea-singapore-and-germany [opened]. The drop for South Korea is not explained on the IFR page. IFR also rebased China's figure on census employment data; earlier IFR reports had China near 470 [memory, unverified]. Treat cross-year comparisons with care. The stable fact: even the most automated large economy has about one industrial robot per ten factory workers, and the US has one per 31.

### 4.3 Amazon

- **Robots:** the one-millionth robot was deployed by 2025-06-30 across 300+ facilities; a fleet-coordination AI model improved robot travel time by 10% (https://www.aboutamazon.com/news/operations/amazon-million-robots-ai-foundation-model [opened]).
- **Employees:** 1,638,000 worldwide on 2026-09-30, up 4% on the year (Amazon Q3 2026 release [opened]). So at least one robot for every 1.6 employees (the robot count is 16 months older than the headcount and has not been updated publicly), and headcount is still rising.
- **Reported plans:** The New York Times (2025-10-21), from internal documents: the automation team expects to avoid hiring more than 160,000 US workers by 2027 and more than 600,000 by 2033 while sales double; a goal of automating 75% of operations; savings of about 30 cents per item; the Shreveport warehouse (about 1,000 robots) uses about 25% fewer workers, and the design is to be copied to about 40 sites by end-2027. Amazon said the documents reflect one team's view. US workforce about 1.2 million (via https://gizmodo.com/leaked-amazon-plans-say-robots-will-help-it-avoid-hiring-600000-workers-2000674920 [opened]; I did not open the NYT original). Amazon itself says Shreveport needs 30% more reliability and maintenance staff [opened].
- **A caution:** Amazon's multi-arm "Blue Jay" system, announced 2025-10-22, was withdrawn from operations by 2026-02-25 (https://www.aboutamazon.com/news/operations/new-robots-amazon-fulfillment-agentic-ai [opened]). Its touch-sensing picker, Vulcan, is the system Epoch rates as production-grade.

### 4.4 Service robots, farms, cleaning, food, drones (IFR World Robotics 2026 Service Robots, 2026-09-30)

- **Professional service robots sold in 2025:** almost 250,000 (+24%), from more than 1,000 producers. Transport and logistics 117,500 (47%); hospitality about 56,000; professional cleaning about 45,000; agriculture about 17,000; inspection and maintenance about 6,000. Surgical robots 8,400 (+57%). Consumer robots 34.2 million (+37%), mostly vacuum cleaners (https://ifr.org/img/worldrobotics/Executive_Summary_WR_2026_-_Service_Robots.pdf [opened]; press release [opened]).
- **Agriculture:** growth is in milking, barn cleaning and feeding robots; IFR cites high capital cost, hard outdoor conditions and poor rural connectivity as barriers. US farming occupations employ only 435,200 wage workers [BLS, opened].
- **Hospitality and food:** most "hospitality robots" are guides and telepresence units; food and drink preparation is "emerging" (IFR). I found no verified large-scale deployment of cooking robots in US restaurants.
- **Construction:** not a top-five category in IFR's data. I could not verify any deployment at scale.
- **Delivery drones:** Zipline passed 2 million commercial deliveries in January 2026 (1 million in April 2024); Wing passed 1 million by June 2026, mostly with Walmart (https://en.wikipedia.org/wiki/Zipline_(drone_delivery_company) [opened]; https://en.wikipedia.org/wiki/Wing_(company) [opened]). Against the tens of billions of parcels delivered in the US each year, this is still a rounding error.
- **Other form factors (Epoch, 2025 production):** ~81,000 quadrupeds (doubling every 10 months), ~16 million drones, ~33 million wheeled robots [opened].

---

## 5. Forecasts and their track record

### 5.1 Current forecasts

| Forecaster | Forecast | Date | Source |
|---|---|---|---|
| Goldman Sachs | 2035 humanoid market: $6bn (2022 [memory, unverified]) → $38bn and 1.4m units (January 2024 [secondary]) → **$138bn and ~6.5m units a year; 890,000 in 2030 (up from 256,000); 75,000 in 2026** (September 2026) | 2022-2026 | https://humanoid.guide/?p=18115 [opened, secondary to Goldman] |
| Morgan Stanley | ~$5 trillion market and about 1 billion humanoids in use by 2050 | 2025 | https://www.morganstanley.com/insights/articles/humanoid-robot-market-5-trillion-by-2050 [secondary; page timed out] |
| Citi | 1.3 billion "AI robots" of all kinds by 2035, 4 billion by 2050. (A widely quoted 648 million humanoids by 2050 is not on the page I opened.) | 2024-12-05 | https://www.citigroup.com/global/insights/the-rise-of-ai-robots [opened] |
| Bank of America | 90,000 humanoids in 2026; 3 billion in operation by 2060 | 2026 | [secondary] |
| Interact Analysis | Under 100,000 a year today; over 700,000 a year by 2035 | 2026 | [secondary] |
| Agility (S-4) | Its own fleet: ~800 (2027), ~7,000 (2030), up to 25,000 (2035) | 2026 | The Robot Report [opened] |
| IFR | Industrial arms: 806,000 a year by 2029 | 2026-09 | [opened] |
| Epoch AI | Humanoids by end-2030, if demand appears: 1.5-3m a year clearly achievable, 5-10m plausible | 2026-04 | [opened] |
| Rodney Brooks | Deployable dexterity far behind human hands beyond 2036; most early humanoid companies will quietly fold; the word "humanoid" will drift to mean wheeled machines with grippers | 2026-01-01 | [opened] |
| ARK | Not verified (page returned 403) | | |

Note the spread: for 2035 the sell-side range runs from 700,000 to 6.5 million humanoids a year, and Goldman's own number has risen about fivefold in under three years. A company filing under securities law (Agility) projects only 7,000 of its own robots by 2030.

### 5.2 Musk's targets against outcomes

**Self-driving** (https://en.wikipedia.org/wiki/List_of_predictions_for_autonomous_Tesla_vehicles_by_Elon_Musk [opened]):

| Said | Target | Prediction | Outcome |
|---|---|---|---|
| Oct 2016 | end 2017 | Fully autonomous Los Angeles to New York drive | Not met; still not done |
| Apr 2019 | 2020 | Over a million robotaxis on the road | Not met. Six years later: 42 to a few hundred |
| May 2025 | "a few months" | About 1,000 robotaxis in Austin | 42 statewide a year later (InsideEVs [opened]) |
| Jul 2025 | end 2025 | Ride-hailing for half the US population | Not met |
| Sep 2025 | end 2025 | No safety driver | Not met; first unsupervised ride 2026-01-22 |
| Apr 2026 | Q4 2026 | Unsupervised FSD on customer cars | Slipped to about Q2 2027 (TechCrunch [opened]) |
| Jan 2026 | end 2026 | Autonomy across a quarter to half of the US, dozens of cities | Six or seven metros as of October 2026 |

**Optimus** (Wikipedia Optimus page [opened]; Electrek guide [opened]; Q3 2026 call [opened]):

| Said | Prediction | Outcome |
|---|---|---|
| Apr 2022 | Production-ready in 2023 | Not met |
| Jun 2024 | Over 1,000 working in Tesla plants in 2025; sales to others in 2026 | Not met. Jan 2026: none doing useful work. External sales now end-2027 |
| Jan 2025 | Aim to build 10,000 in 2025 | Not met. Omdia estimate ~150 [secondary]; redesign and loss of two programme heads in 2025 |
| Apr 2026 | Fremont line designed for 1 million a year; Texas line for 10 million a year from 2027 | Oct 2026: "early production"; 20,000 a week is "at least a year, maybe a little longer" away |

The pattern over ten years: the direction has usually been right and the dates have been wrong by three to eight years or more. Treat any Musk volume target as an upper bound on ambition, not a forecast.

**The opposite error also happens.** Brooks, the best-known robotics skeptic, admits he was about eight years too pessimistic about a Waymo-style service operating in San Francisco [opened]. And Waymo grew about as fast as it said it would through early 2026, doubling weekly rides in under a year twice running, although its 1 million a week goal for end-2026 now looks likely to slip.

**Other missed calls.** Amazon's Blue Jay was withdrawn four months after launch [opened]. Aurora expects to miss its end-2026 truck target by two months [opened]. GM stopped funding Cruise's robotaxis in December 2024 [memory, unverified]. Press reporting in 2025 found Figure's early BMW work was narrower than the company's public claims implied [memory, unverified].

---

## 6. Scaling limits

### 6.1 Reference points for manufacturing scale

- **Motor vehicles:** 96.4 million built worldwide in 2025 (China 34.5m, US 10.2m, Japan 8.4m, India 6.5m, Germany 4.1m). History: 10.6m (1950), 29.4m (1970), 58.4m (2000), 77.6m (2010). The industry took 75 years to grow ninefold (https://en.wikipedia.org/wiki/List_of_countries_by_motor_vehicle_production [opened]).
- **Smartphones:** about 725 million in 2012, over 1 billion in 2013, 1.54 billion in 2019 (https://en.wikipedia.org/wiki/Smartphone [opened]). From the first iPhone (2007) to a billion units a year took about six years, among the fastest ramps of any complex manufactured product. A phone has almost no moving parts; a humanoid has 30 to 50 precision actuators.
- **Industrial robots:** about 9% a year for a decade (above).
- **Wartime and crisis ramps (Epoch):** US WWII tanks grew up to 4.5-fold a year, fighter planes 2.8-fold, synthetic rubber went from near zero to full scale in about four years; Ukraine-war drones reached over 2 million a year from workshops [opened].
- **By mass, capacity is not the issue.** At an assumed 1.5 tonnes per vehicle, the world's car output is about 145 million tonnes a year, equal in mass to roughly 2 billion 70 kg humanoids [my arithmetic]. The constraint is specific precision parts and, above all, whether the robots are worth buying.

### 6.2 Epoch AI: "How fast could robot production scale up?" (2026-04-22)

The most careful bottom-up analysis I found (https://epoch.ai/publications/how-fast-could-robot-production-scale-up [opened]). It assumes human-run factories and no robots-building-robots feedback.

- **Demand-shock history** suggests production growth rates can rise by 1.4 to 2.2 times, giving doubling times of 5-8 months for young categories and 10-16 months for mature ones.
- **End-2030 humanoid output, constraint-adjusted:** 1.5-3 million a year "clearly achievable"; 5-10 million "plausible with aggressive reducer expansion"; above 15 million needs unusually good outcomes and probably simpler hands.
- **The binding constraint is precision reducers** (harmonic, planetary, cycloidal). Current world output caps humanoids at about 500,000 a year, around 30 times today's volume. A humanoid needs 20-40 reducers; dexterous hands could triple that. Reducer output could double by 2028 and quadruple by 2030 on baseline, or grow 10-30-fold under a demand shock.
- **Not binding:** cameras, MEMS sensors, bearings, batteries (about 2 billion kWh a year), wiring. Watch at millions of units: servo motors, planetary roller screws, torque sensors, encoders.
- **Factories:** 6-12 months to build in China, 2+ years in most Western countries; converting a US car plant takes 6-10 months. Ten million humanoids a year needs about 110 million square feet (some 20 Tesla-Texas-size plants) and 40,000-120,000 operating staff.

To reach 1.5 million a year by 2030 from 13,318 in 2025 takes about 6.8 doublings, one every 9 months for five years; 10 million takes 9.6 doublings, one every 6 months [my arithmetic]. The 2026 pace (roughly four- to sevenfold on 2025) is on that track for now, but on research and showroom demand that will saturate.

### 6.3 Forethought: "The Industrial Explosion" (2025-05-21)

Davidson and Hadshar argue that once AI can do all cognitive work, physical output goes through three stages: AI directing human workers (a one-time gain they put at about 10-fold); fully autonomous robot factories that build more robots; and eventually nanotechnology (https://www.forethought.org/research/the-industrial-explosion [opened]).

- The world's robot stock last doubled in about 6 years.
- With today's physical technology plus abundant AI cognition, they estimate robot-and-factory systems could double in **about a year or less**. Two rough methods: US manufacturing produces $2.6 trillion a year from $5.4 trillion of capital (a naive 2-year doubling, shortened by AI); and a $100,000 robot replacing $240,000 a year of labor pays back in about 5 months.
- Doubling time then shrinks as the stock grows; in the limit, days to weeks.
- The authors call it a rough draft and say they are less confident in it than in their other work. It assumes cognitive automation is already complete and that robots can do the physical work, which is exactly what section 2 says is unproven.

### 6.4 Skeptical views

- **IFR (2026):** humanoids are not industrial-grade; conventional automation is economically superior for production tasks [opened].
- **Brooks (2026):** dexterity will not arrive by 2036; safety physics rules out heavy walking robots near people [opened].
- **Epoch (2026):** the humanoid growth trend is "probably anomalous"; demand is research and marketing [opened].
- **The self-driving precedent:** the first driverless rides on public roads were in 2015-2017; nine or ten years later one company has 4,000 cars. The technology worked in demos a decade before it worked as a business.
- **Bain (2025):** advises most companies not to commit significant capital to humanoids yet [opened].

### 6.5 Supply chain: China's share, tariffs and export controls

| Item | China's position | Source |
|---|---|---|
| Humanoid robots shipped | ~85-90% of 2025 units | BofA [secondary]; Omdia shares [opened] |
| Industrial robots installed | 59% of world installations; domestic brands 55% of those | IFR [opened] |
| Humanoid components overall | 50-70% of manufacturing capability (Chinese sources); ~70% of Optimus hardware content | humanoid.guide 2026-09 [opened, secondary] |
| Harmonic reducers | Japan's Harmonic Drive is the incumbent. China's Leaderdrive sold 425,158 units in 2025 (+72%) and targets 1.44m capacity by end-2026; Chinese reducers sell at 40-60% of Japanese prices. Share estimates conflict: one dataset has Japan ~60% and China ~19% of precision harmonic output; another has Chinese firms supplying ~65% of China's own demand | humanoid.guide [opened]; conflicting shares [secondary] |
| Planetary roller screws | Swiss and other Western incumbents; Chinese self-sufficiency ~15%, but three Chinese firms plan about 1m screws a year each. McKinsey calls this the most acute bottleneck | [secondary]; humanoid.guide [opened] |
| Rare earths and magnets | ~75% of mining, ~85% of processing, over 95% of terbium and dysprosium, 91-94% of sintered permanent magnets | https://skillings.net/rare-earths-truce-chinas-november-10-expiry-risk-explained/ [opened]; magnet share [secondary] |
| Batteries, cameras, sensors | Abundant globally; not a constraint (Epoch) | [opened] |
| Compute | Robot "brains" use Nvidia or in-house chips. Tesla's next robot chip is due about April 2027 | Q3 call [opened] |

**What 2025-2026 trade policy did.**

- **China's rare-earth controls.** April 2025: export licences required for seven medium and heavy rare earths and their magnets; by May 2025 magnet exports were down about 75% on the year. October 2025: a far broader package reaching foreign-made products with Chinese content, suspended for a year on 2025-11-07 after a US-China truce. June 2026: new curbs on ten US firms; July 2026: on fourteen European ones. The suspension was due to lapse on 2026-11-10; one report says it was extended on 2026-11-09 to 2027-01-10, which I could not confirm (Skillings [opened]). Every humanoid actuator uses these magnets.
- **US Section 232 on robots.** Investigation opened 2025-09-02. On **2026-10-28** the president found that imports of robots and industrial machinery threaten national security but imposed **no tariffs**, ordering negotiations with a 180-day report-back (https://www.mayerbrown.com/en/insights/publications/2026/10/president-trump-issues-proclamation-on-imports-of-robotics-industrial-machinery-and-their-parts-and-components [opened]). The finding itself states the US cannot meet its own demand for robots.
- **Other tariffs.** A 25% Section 232 tariff on certain advanced chips from 2026-01-15; a 10% global Section 122 tariff that was due to expire 2026-07-24; Section 301 tariffs on China continue (https://www.cov.com/en/news-and-insights/insights/2026/04/current-and-forthcoming-section-232-actions-by-the-trump-administration [opened]). Waymo's Chinese-built van carries an estimated 102-128% import burden and is still its cheapest vehicle (CarNewsChina [opened]).
- **Net effect.** The cheapest way to build a humanoid runs through China ($46,000 versus $131,000 for Optimus on one estimate). US policy has so far threatened rather than taxed robot imports. China has shown it can throttle the magnets every robot needs. For a US-centred scenario this is the main strategic vulnerability.

---

## 7. Cost per robot-hour

All figures here are **[my arithmetic]** from the cited inputs. The method: annual cost = purchase price ÷ life + 8% cost of capital on half the price + maintenance + software; divide by hours worked per year; add electricity (0.4 kW at $0.13/kWh ≈ $0.05 an hour) and a share of a human supervisor at $40 an hour fully loaded.

### 7.1 Today, from filed prices (Agility Digit 5, S-4 via The Robot Report [opened])

| Scenario | Hours per year | Cost per robot-hour | With 1 supervisor per 10 robots | Per human-equivalent hour if the robot works at half human speed |
|---|---|---|---|---|
| Lease, $8,500/month + $25,000 deployment over 5 years | 2,000 (one shift) | $53.50 | $57.50 | $115 |
| | 4,000 (two shifts) | $26.80 | $30.80 | $62 |
| | 6,000 (near-continuous) | $17.80 | $21.80 | $44 |
| Purchase, $200,000 + $20,000 + $36,000/year, 5-year life | 2,000 | $40.00 | $44.00 | $88 |
| | 4,000 | $20.00 | $24.00 | $48 |
| | 6,000 | $13.30 | $17.30 | $35 |

Compare the human it replaces: hand laborers and material movers average $20.32 an hour in wages (BLS May 2025 [opened]); employers' total compensation cost for production, transportation and material-moving workers is $36.70 an hour, of which $24.99 is wages (BLS ECEC June 2026, https://www.bls.gov/news.release/ecec.t04.htm [opened]). **Conclusion: at 2026 prices and speeds a humanoid pays only if it runs two or three shifts on a task where it keeps close to human pace.** That is exactly the niche where current deployments sit, and why they are few.

A home robot: 1X NEO at $499 a month, doing perhaps two useful hours a day, is about $8 per robot-hour; at a quarter to half of human speed that is $16-33 per human-equivalent hour, similar to what a US house cleaner charges, before counting 1X's remote operators, whose cost the company currently absorbs.

### 7.2 Plausible 2030

| Scenario | Assumptions | Cost per robot-hour | Per human-equivalent hour |
|---|---|---|---|
| **Optimistic** | $30,000 price; 3-year life; 5,000 hours a year; maintenance 10% of price a year; $2,000 software; 1 supervisor per 25 robots | **~$4.90** | ~$5 at human speed; ~$10 at half speed |
| **Middle** | $50,000; 4 years; 4,000 hours; 12% maintenance; $5,000 software; 1 per 15 | **~$9.10** | ~$12 at three-quarter speed; ~$18 at half speed |
| **Conservative** | $80,000; 5 years; 3,000 hours; 15% maintenance; $10,000 software; 1 per 8 | **~$18.80** | ~$38 at half speed |

Compare June 2026 employer cost per hour: service occupations $23.73; production, transportation and material moving $36.70; construction and maintenance $47.80; all private industry $46.89, of which wages are 70% (BLS ECEC [opened]).

**What drives the answer.** Supervision and utilization matter more than purchase price. In the optimistic case the robot itself costs about $3.30 an hour and its share of a human supervisor $1.60. Halving the purchase price saves about $1 an hour; going from one supervisor per 8 robots to one per 25 saves $3.40. The same is true of robotaxis, where remote assistance and depot labor, not the car, decide profitability. The question for the 2026-2036 scenarios is therefore less "how cheap is the hardware" than "how many robots can one person look after, and how fast do they work".

For reference, Forethought's payback sum assumes a robot delivers 6 times a $40,000 worker's output (three shifts at twice average productivity) for $100,000 [opened]. No robot does that today.

---

## 8. The size of the target: US physical occupations

BLS Occupational Employment and Wage Statistics, **May 2025** (published 2026; https://www.bls.gov/news.release/ocwage.t01.htm [opened]). Wage bills are employment × mean annual wage [my arithmetic].

| Major group | Employment | Mean hourly | Mean annual | Wage bill |
|---|---|---|---|---|
| Transportation and material moving | 13,677,150 | $23.96 | $49,850 | $682bn |
| Food preparation and serving | 13,680,750 | $17.86 | $37,150 | $508bn |
| Production | 8,565,760 | $24.81 | $51,600 | $442bn |
| Construction and extraction | 6,425,160 | $31.42 | $65,360 | $420bn |
| Installation, maintenance and repair | 6,086,190 | $30.44 | $63,320 | $385bn |
| Healthcare support | 7,901,670 | $19.62 | $40,800 | $322bn |
| Protective service | 3,776,610 | $29.19 | $60,720 | $229bn |
| Building and grounds cleaning and maintenance | 4,548,260 | $19.66 | $40,880 | $186bn |
| Farming, fishing and forestry | 435,200 | $19.96 | $41,510 | $18bn |
| **Nine groups** | **65,096,750** | | **$49,050 average** | **$3,193bn** |
| All occupations | 155,495,730 | $33.54 | $69,770 | $10,849bn |

- The nine mainly physical groups are **41.9% of US jobs and 29.4% of US wages**. Adding personal care and service (3.26 million, $134bn) gives 68.4 million jobs and $3.33 trillion.
- With benefits (wages are about 70% of compensation), employers spend roughly **$4.5 trillion a year** on this work [my arithmetic from BLS ECEC].
- Within it: drivers 4.31 million and $229bn (section 3.5); warehouse-type hand work (laborers and movers 2.95m, stockers 2.83m, forklift operators 0.77m, hand packers 0.56m) 7.12 million and $295bn; construction laborers 1.10m, carpenters 0.67m, electricians 0.76m, plumbers and pipefitters 0.47m; assemblers 1.41m.
- Caveats: the survey excludes the self-employed (many truckers, ride-hail drivers, builders, cleaners, farmers) and farm establishments, so it undercounts physical work. And not every job in these groups is mainly physical (police, supervisors), while some physical jobs sit elsewhere (nurses, surgeons, retail stockers classed as sales).

Against this, the entire humanoid fleet worldwide (perhaps 60,000 to 100,000 machines by the end of 2026 on the trackers' numbers, mostly not doing paid work) is 0.1% to 0.15% of the US physical workforce by headcount [my arithmetic].

---

## 9. Which physical jobs look hardest to automate, and why

### 9.1 What the serious studies say

- **Frey and Osborne (2013)** remain the most-cited ranking. They rated 702 occupations on three "engineering bottlenecks". For physical work the bottleneck is perception and manipulation, measured by three O\*NET variables: finger dexterity, manual dexterity, and how often the job means working in **cramped spaces and awkward positions**, their proxy for unstructured environments. They put 47% of US employment at high risk, including most transport, logistics and production work [the 47% is on the page I opened; the occupational detail is from my memory of the paper], and argued that homes are hard because they are cluttered and irregular while warehouses, factories, airports and hospitals are easier because they are built for wheeled machines. They also noted that tasks can be redesigned to remove the bottleneck (prefabrication in construction; barcodes on Amazon's floors) (https://oms-www.files.svdcdn.com/production/downloads/academic/The_Future_of_Employment.pdf [opened]). Their timing was wrong (they said "a decade or two" and the transport jobs are still here) but the ordering has held up.
- **Epoch AI (2026)** grades tasks rather than jobs (section 2.2). Its ordering from most to least automatable today: navigation, structured pick-and-place, simple household manipulation, precision assembly, cooking, multi-step construction-like assembly [opened].
- **BLS (2025)** says its projection methods cannot capture very rapid technological change and has made no adjustment for robots or autonomous vehicles in any physical occupation [opened].
- **McKinsey Global Institute (November 2025)** reportedly finds that currently demonstrated technology could in theory automate over half of US work hours, with software agents accounting for most of it and robots a much smaller share [memory, unverified; page timed out].

### 9.2 A ranking for the scenarios (my synthesis, not a published study)

**Most exposed, 2026-2032** (structured setting, repetitive, high volume, low liability):
1. Long-haul trucking on fixed interstate lanes, and urban ride-hail in mapped cities. Technology proven; constraint is fleet build-out, weather, regulation.
2. Warehouse picking, packing, sorting, truck loading and unloading. Already in production with purpose-built machines.
3. Machine tending, material handling and simple assembly in factories.
4. Floor cleaning, lawn mowing, security patrol, routine inspection.

**Middle** (semi-structured, some dexterity):
5. Commercial kitchens with fixed menus; dishwashing; hotel housekeeping; retail shelf stocking.
6. Light-truck delivery to the door. The driving is close to solved; the last ten yards (stairs, gates, dogs, signatures) are not, a point Brooks makes [opened].
7. Farm work in orchards and fields.

**Hardest** (unstructured, dexterous, every job different, high liability or human contact):
8. **Skilled trades in existing buildings:** plumbers, electricians, HVAC and appliance repair, renovation carpenters, auto mechanics. Every site is different, access is cramped, the work needs force and fine touch together, diagnosis is part of the job, and mistakes cause fires and floods. About 12.5 million US jobs sit in construction plus installation and repair.
9. **Hands-on care:** home health and nursing aides, childcare. Requires safe physical contact with fragile people, plus trust. Brooks notes that a robot light enough to be safe cannot physically support an elderly person [opened]. 7.9 million healthcare-support jobs.
10. **Emergency and protective work:** firefighters, police, paramedics. Unpredictable, adversarial, and legally accountable.
11. Work where the human is the product: bartenders, hairdressers, fine-dining service, sports and performance.

### 9.3 Why, in first-principles terms

- **Unstructured environments.** A factory is built so the same thing happens every time. A crawl space is not. Generalization to unseen places is the measured bottleneck (Epoch).
- **Dexterity and force.** Hands are the weakest hardware (Tesla, Brooks) and touch the least-modelled sense.
- **Reliability and the cost of failure.** A warehouse robot that drops one item in a hundred is fine. A robot electrician that miswires one junction in a hundred is not. Liability pushes required reliability from 99% to 99.99%, and section 2.3 shows how far that is.
- **Liability and regulation.** Driverless cars needed city-by-city permits and still get suspended after incidents. Licensed trades, building codes, care standards and unions will each need an answer to "who is responsible".
- **Customer preference.** People may pay extra for a human carer, barber or waiter even when a machine is cheaper. This limits substitution in perhaps a tenth to a fifth of physical jobs [my judgment], not in freight or warehouses, where nobody sees the worker.
- **Task redesign cuts the other way.** Hard jobs get easier when the work is rebuilt around the machine: prefabricated bathrooms instead of on-site plumbing, robot-friendly kitchens, standard connectors. History suggests much automation arrives this way rather than by a robot doing the old job the old way.

---

## What I could not verify

- **Waymo's current weekly rides and official fleet size.** Nothing above 500,000 a week has been published since spring 2026; the ~4,000-car fleet and the 8,000 and 20,000 targets come from unnamed sources via Semafor. Whether the 1 million a week goal for end-2026 will be met is unknown and looks unlikely.
- **Any Tesla Optimus unit count**, for any year. Tesla has never disclosed one. "Several hundred a week" in September 2026 is a single unopened report.
- **Tesla's unsupervised robotaxi fleet today.** Official Texas count was 42 in May; Tesla claims 300+ Cybercabs in Austin in October; no independent October count found.
- **1X customer deliveries**, and the real share of NEO work done by remote operators.
- **Baidu Apollo Go's 2026 ride volumes** (release would not open; secondary figures conflict). WeRide, Kodiak, Waabi and other operators were not researched.
- **Zoox fleet size and ride counts.**
- **Mean time between failures, intervention rates and uptime** for any humanoid at a customer site. Nobody publishes them.
- **Bill-of-materials figures** from Morgan Stanley and Goldman Sachs in the original; the $46,000 / $131,000 Optimus figures are third-hand.
- **Primary documents for Morgan Stanley, Goldman Sachs, Bank of America, ARK and McKinsey forecasts** (timeouts or blocked). Citi's 648 million humanoids figure is not on its public page.
- **Physical Intelligence's blog** (rate-limited); I used its arXiv papers instead. **"Gemini Robotics 2"** (August 2026) primary source. **Chinese robot foundation models** beyond one ByteDance result.
- **California DMV and CPUC data.** The CPUC quarterly-report index is live through Q2 2026 but the data are in zip archives I did not download, and Waymo's fields are partly redacted pending a confidentiality review (https://www.cpuc.ca.gov/regulatory-services/licensing/transportation-licensing-and-analysis-branch/autonomous-vehicle-programs/quarterly-reporting [opened]).
- **Human ride-hail cost per mile and the number of US gig drivers**; my robotaxi comparison uses remembered fare levels.
- **Verified deployments at scale in construction, restaurants and field agriculture.** I found none, which may itself be the finding, but I did not search exhaustively.
- **Whether China's suspension of its October 2025 rare-earth controls was extended on 2026-11-09.**
- **UBTech, AgiBot and Apptronik details** (prices, customers, what the robots do) beyond tracker counts.
- **The IFR robot-density revisions** (South Korea 1,220 → 1,066) are unexplained.

---

## What cuts against the obvious story

**Against "robots are about to take the physical jobs":**

1. **The installed base is negligible.** Roughly 100,000 humanoids or fewer exist; most are in labs and showrooms. The leading US deployer earned $1.8 million last year. IFR, the industry's own statistician, calls humanoids prototypes.
2. **Demos are not deployments.** 56% success in unseen homes is a research milestone. A product needs 99.9%, and compounding error makes that a different problem. Self-driving took about ten years to cross the same gap and is still at 4,000 cars.
3. **Speed.** Robots are 2-10 times slower at most manipulation. A robot at half speed needs to cost under half a worker to break even, per unit of work.
4. **Today's economics are upside-down.** At filed prices a humanoid costs more per unit of work than the person, except on multi-shift tasks. Waymo's segment loses several billion dollars a year on about half a billion of ride revenue.
5. **Promises have a ten-year record of slipping.** A million robotaxis by 2020; 10,000 Optimus in 2025. Amazon withdrew a flagship robot after four months.
6. **Hardware has hard limits software lacks.** Reducers, roller screws and magnets cap output; factories take one to three years; China controls the chokepoints and has used them.
7. **Even Amazon is still hiring.** A million robots, and headcount up 4% in a year. Automation there has so far meant slower hiring, not layoffs.
8. **The hardest third of physical work** (trades in old buildings, hands-on care, emergency work) has no credible demonstration yet.

**Against "physical automation is decades away, so physical workers are safe":**

1. **Driving is solved in the sense that matters.** A machine now drives more safely than people across 271 million miles. What remains is manufacturing, permits and money. 4.3 million-plus US jobs depend on that staying slow.
2. **The generalization result is new and real, if still self-reported.** Before 2025 no robot had done useful chores in homes it had never seen. By late 2026 Physical Intelligence and Figure had both reported it, NVIDIA reported 40% success on tasks its robot was never trained on, and one model matched human teleoperators on a task. The 9% → 56% jump from pretraining on human video suggests the data problem may have a scalable answer.
3. **The cost curve is steep.** Unitree builds a humanoid for about $10,000. If capability arrives, a $30,000-50,000 machine working at $5-10 an hour undercuts every US physical wage by a factor of three to seven. There is no gentle slope between "not economic" and "overwhelmingly economic"; the switch depends on capability, and capability is improving quickly.
4. **Scale-up is fast once demand is real.** Smartphones went from launch to a billion a year in six years. Epoch judges millions of humanoids a year feasible by 2030. Humanoid shipments are currently multiplying roughly fivefold a year.
5. **Capital is committed.** Waymo raised $21 billion in equity and debt in 2026; Figure has $3.5 billion of compute on order; Tesla has converted car lines; Unitree and Agility are public or going public; China treats this as industrial policy.
6. **Automation does not need humanoids.** Most of the physical automation that exists (603,000 arms a year, a million Amazon robots, 250,000 service robots) is special-purpose. Redesigning the task for a simple machine has always been the main route, and AI makes that redesign cheaper too.
7. **If AI automates the engineering,** as the premise of this guide assumes, then the bottlenecks above (hand design, data collection, factory planning, supervision ratios) are themselves cognitive work that gets cheaper. Forethought's one-year doubling estimate is speculative, but its direction is hard to dismiss: the robot problem is not independent of the AI problem.

**The honest synthesis for 2026-2036.** The evidence supports neither a 2020s collapse of physical employment nor its long-term safety. The most defensible reading: driving and warehouse work see large-scale substitution within the decade, starting now and limited mainly by build-out; factory and cleaning work follow as humanoid or simpler robots cross the reliability line, plausibly around 2029-2032 but with wide error bars; the skilled trades and hands-on care remain mostly human through 2036 unless the "robots designing robots" loop arrives early. The single most informative indicator to track is not unit shipments but **supervision ratio and intervention rate**: how many robots, or robotaxis, one human can oversee. That number is not public for any company.
