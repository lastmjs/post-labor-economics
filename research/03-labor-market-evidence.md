# 03. Labor-market evidence, 2022 to November 2026: what can be attributed to AI, and what cannot

Compiled 2026-11-12. Focus: United States, with international cases at the end.

**How to read the source marks.** `[opened]` means I read the source page or file myself in this session. `[secondary]` means the figure comes from a news report, a search summary, or another paper's description of the source, and I did not read the original. `[opened; tertiary]` marks Wikipedia. "My calculation" means arithmetic I did on opened figures. Web search stopped working partway through (the shared search budget ran out), so several company and international items could only be checked by fetching pages whose address I already knew. Everything I could not check is listed in "What I could not verify".

**Two data gaps to keep in mind.** The federal shutdown in autumn 2025 means there is no household-survey or CPI data for October 2025, so twelve-month comparisons for October 2026 are missing. And the payroll data for 2025 were revised down heavily, so older articles quote job growth that no longer exists in the official series.

---

## Verdict

As of November 2026 there is **no visible economy-wide displacement of workers by AI in US data**. The unemployment rate is 4.1% (October 2026), the prime-age employment rate is 80.7%, within half a point of its two-decade high, and layoffs are low (about 1.6 million a month, a 1.0% rate). The labor market is weak in a different way: hiring is slow (hires rate 3.4% against 3.9% in 2019), payrolls grew by only about 116,000 in all of 2025, long-term unemployment has climbed to 27.6% of the unemployed, and real hourly pay has been falling since April 2026 because of an energy-led inflation spike. Most of that weakness has better-documented causes than AI: the 2022 to 2023 interest-rate increases, the unwinding of pandemic over-hiring in technology, a sharp slowdown in immigration, federal job cuts in 2025, and tariffs.

There **is** a narrower signal that keeps getting stronger. In ADP payroll records, employment of 22-to-25-year-olds in the most AI-exposed occupations is 19% below where it would be had it tracked less-exposed peers (June 2026), up from 15% a year earlier. It works through hiring that did not happen, not through layoffs. It is far larger in ADP's sample than in Census survey data, it shrinks when education is controlled for, and a Danish study finds the same decline in firms that did **not** adopt AI. So it is a real pattern with a disputed cause.

Occupation data show clear declines in a handful of jobs that AI can do end to end: computer programmers (down 31%, May 2022 to May 2025), data entry keyers (down 19%), customer service representatives (down 10%), writers and editors (down about 10%), and call centers (down 27% since November 2022). Several of these were already shrinking before ChatGPT. Software developers, paralegals and accountants grew.

The best estimates of the total effect so far are small: about 0.1 percentage point on the unemployment rate (Dallas Fed, Goldman Sachs), or a net drag of 11,000 to 16,000 jobs a month (Goldman Sachs, 2026). Company announcements blaming AI reached 121,401 job cuts in the first ten months of 2026, about a fifth of all announced cuts, but many of those are firms cutting staff to pay for AI investment, and the count fell to 1,265 in October. Productivity growth (2.3% in 2025, 2.1% over the year to Q3 2026) is at its long-run average, not above it. The labor share of income is at a record low, but it has been falling since about 2000.

Short version: AI's footprint is visible at the entry level of a few white-collar and clerical occupations and in corporate rhetoric. It is not yet visible in aggregate employment, unemployment, wages or productivity.

---

## 1. The headline US labor market

Latest readings and how they moved.

| Indicator | Latest | Path through 2025 | Path through 2026 | Source |
|---|---|---|---|---|
| Unemployment rate | 4.1% (Oct 2026) | 4.0% in Jan, rising to 4.5% in Nov, 4.4% in Dec | 4.3 to 4.4% Jan to May, then 4.1 to 4.2% Jun to Oct | BLS release https://www.bls.gov/news.release/empsit.nr0.htm [opened]; series LNS14000000 via https://api.bls.gov/publicAPI/v2/timeseries/data/LNS14000000 [opened] |
| Payroll jobs | +165,000 in Oct 2026; level 159.29 million | +116,000 for the whole year, Dec 2024 to Dec 2025 (about 10,000 a month, after benchmark revision) | +861,000 Jan to Oct (about 86,000 a month) | BLS release [opened]; series CES0000000001 via BLS API [opened]; changes are my calculation |
| Labor force participation | 61.9% (Oct 2026) | 62.6% in Jan, 62.2% in Jul, 62.4% in Dec | 62.1% in Jan, low of 61.4% in Jul, back to 61.9% | https://fred.stlouisfed.org/data/CIVPART.txt [opened] |
| Prime-age (25 to 54) employment rate | 80.7% (Oct 2026) | 80.4 to 80.7% | 80.2 to 80.8% | https://www.bls.gov/web/empsit/cpseea08a.htm [opened]; LNS12300060 via BLS API [opened] |
| Job openings | 7.52 million, 4.5% rate (Sep 2026) | 7.4 million in Jan, 6.55 million in Dec | 6.9 to 7.6 million | https://www.bls.gov/news.release/archives/jolts_11032026.htm [opened]; JTSJOL via BLS API and https://fred.stlouisfed.org/data/JTSJOL.txt [opened] |
| Hires rate | 3.4% (Sep 2026) | 3.2 to 3.4% | 3.1 to 3.5% | JOLTS release [opened]; https://fred.stlouisfed.org/data/JTSHIR.txt [opened] |
| Quits and layoffs | Quits 3.4 million (2.1%); layoffs 1.6 million (1.0%) (Sep 2026) | n/a | Layoffs low all year | JOLTS release [opened] |
| Long-term unemployed (27 weeks or more) | 2.0 million, 27.6% of the unemployed (Oct 2026) | 21.1% in Jan, 26.0% in Dec | 24.7% in Jan, 27.6% in Oct | BLS release [opened]; LNS13025703 via BLS API [opened] |
| U-6 underemployment | 7.9% (Oct 2026) | 7.5% in Jan, 8.7% in Nov | 8.1% in Jan, 7.6% in Sep | LNS13327709 via BLS API [opened] |
| Real average hourly earnings, 12-month change | -0.7% (Sep 2026); no October figure | +1.0% to +1.8% all year | +1.2% in Jan, negative from April, -0.8% in May | https://www.bls.gov/opub/ted/2026/real-average-hourly-earnings-decreased-0-7-percent-from-september-2025-to-september-2026.htm [opened]; https://www.bls.gov/news.release/realer.htm [opened] |
| Nominal average hourly earnings | $38.00, +3.1% over 12 months (Oct 2026) | n/a | n/a | BLS release [opened] |

Context for each.

- **Unemployment.** The post-pandemic low was 3.4% in April 2023; it was 4.3% in March 2026 (Yale Budget Lab, https://budgetlab.yale.edu/node/1495/pdf [opened]). BLS says the rate has stayed between 4.1% and 4.3% since March 2026 [opened]. A rate that peaked at 4.5% and then drifted down is not what mass displacement looks like.
- **Payrolls.** Since November 2022, the month ChatGPT launched, payroll employment is up 5.05 million, or 3.3% (154.24 million to 159.29 million; BLS API, my calculation) [opened]. The near-zero growth of 2025 followed a final benchmark revision of about -898,000 for the year to March 2025 [secondary: search summary of coverage of the BLS benchmark, for example https://www.americanactionforum.org/daily-dish/revisions-published-with-thankfully-little-fanfare/, not opened]. The preliminary benchmark for the year to March 2026 is much smaller, -79,000 [secondary: BLS notice https://www.bls.gov/news.release/archives/prebmk_08282026.htm, seen only in search summary]. The Yale Budget Lab names the slowdown in net immigration as a principal reason for weak job growth, because it cut labor-force growth [opened].
- **Participation** fell 0.7 point between January 2025 and October 2026. Part of the January 2026 step is new population controls (BLS note on the series) [opened]. Aging and lower immigration are the usual explanations; I did not find a study tying it to AI.
- **Openings and hires.** Openings peaked at 12.3 million in March 2022 and were 6.97 million in February 2020 [opened, FRED]. The hires rate averaged 3.87% in 2019 and peaked at 4.6% in 2021 [opened, FRED]. Today's "low hire, low fire" market is the main reason new entrants struggle.
- **Real pay.** The reversal in 2026 is an inflation story: CPI inflation was 3.7% over the year to September 2026, driven by energy [secondary: https://usinflationcalculator.com/inflation/us-cpi-sept-2026-inflation-hits-3-7-as-gas-prices-surge/100073364]; the PCE price index rose at a 5.0% annual rate in Q2 2026 (BEA, https://www.bea.gov/news/2026/gdp-advance-estimate-3rd-quarter-2026 [opened]). A different BLS measure, real hourly compensation in the nonfarm business sector, was still up 1.0% over the four quarters to Q3 2026 (https://www.bls.gov/news.release/archives/prod2_11052026.htm [opened]). The two measures conflict because they use different pay concepts and deflators.
- **Graduates aged 25 and over.** Unemployment for people with a bachelor's degree or more averaged 2.1% in 2019, 2.6% in 2025, hit 3.0% in January and February 2026 and was 2.6% in October 2026 (https://fred.stlouisfed.org/data/LNS14027662.txt [opened]). Higher than before, still low.

---

## 2. Young and entry-level workers

**Recent college graduates (New York Fed, ages 22 to 27).**

- Unemployment was 5.2% in 2026:Q3, which the New York Fed describes as the lowest in more than a year; underemployment (graduates in jobs that do not need a degree) was 42.5% (https://www.newyorkfed.org/research/college-labor-market [opened]).
- Earlier readings: about 5.6% unemployment and 42% underemployment in 2026:Q2 [secondary: search summary of the same page before its update]; 5.6% in March 2026 against 3.6% in March 2019 (New York Fed media advisory, https://www.newyorkfed.org/newsevents/mediaadvisory/2026/0528-2026 [opened]); underemployment of 42.5% in 2025:Q4, the highest since 2020 [secondary: search summary of news coverage, not opened].
- Recent graduates used to have lower unemployment than the workforce as a whole. On a 12-month average the gap flipped in February 2019, three years before ChatGPT, and reached a record 1.4 points in early 2026 (5.6% against 4.2%) [secondary: https://randalolson.com/2026/06/04/recent-grad-unemployment-flip/, opened, built on New York Fed data].

**Ages 20 to 24 (BLS).**

- Unemployment, seasonally adjusted: annual averages of 6.7% (2019), 6.6% (2023), 7.4% (2024), 8.3% (2025, eleven months). Low of 5.5% in April 2023. Peak of 9.2% in August and September 2025. In 2026: 7.0% in January, 7.1% June to August, 8.0% in September, 7.5% in October (https://fred.stlouisfed.org/data/LNS14000036.txt and BLS API [opened]).
- Bachelor's-degree holders aged 20 to 24, not seasonally adjusted: September readings of 6.1% (2019), 6.7% (2023), 6.8% (2024), 9.7% (2025) and 7.6% (2026); October 2026 was 5.5% (https://fred.stlouisfed.org/data/CGBD2024.txt [opened]). This series is noisy.
- Employment rate, ages 20 to 24: 66.5% in October 2026 (https://www.bls.gov/web/empsit/cpseea08a.htm [opened]).

So young workers' unemployment rose about two points from the 2023 low to a late-2025 peak and has **partly recovered in 2026**.

**Entry-level postings.** I could not open a clean entry-level postings series for 2026 (Handshake and NACE were not reachable). What I did open:

- The New York Fed found that junior and senior postings within AI-exposed occupations moved in parallel, with no clear relative fall for entry-level roles (Lightcast data; https://libertystreeteconomics.newyorkfed.org/2026/05/do-job-postings-show-early-labor-market-effects-of-ai/ [opened], 14 May 2026).
- Indeed found that 71% of the rise in software postings between May 2025 and May 2026 came from senior roles (https://hiringlab.indeed.com/?p=20708 [opened], 8 July 2026).
- LinkedIn found entry-level software-engineer hiring tracked overall software hiring over the decade but did not share the late-2025 rebound, and that a smaller share of computer-science graduates now start in software engineering (LinkedIn Economic Graph, February 2026, https://economicgraph.linkedin.com/content/dam/me/economicgraph/en-us/PDF/us-software-engineer-talent-landscape-2026.pdf [opened, first pages]).

**What the best studies conclude about AI's role.**

| Study | Finding | Reads as |
|---|---|---|
| Brynjolfsson, Chandar and Chen, "Canaries" (Aug 2026 revision) [opened] | Ages 22 to 25 in the two most exposed quintiles: employment down about 11% from Nov 2022 to Jun 2026, against +10% in the three least exposed. Total employment of 22-to-25-year-olds in the sample down 1.9%; every older group grew | AI is a plausible cause; authors say descriptive, not causal |
| Dallas Fed, Atkinson and Yamco (6 Jan 2026) [opened] | Share of 20-to-24-year-olds' employment in the most exposed occupations fell from 16.4% to 15.5% (Nov 2022 to Sep 2025). Driven by fewer entries from outside the labor force, not layoffs. Worth at most 0.1 point on the national unemployment rate | Real but small |
| Anthropic, Massenkoff and McCrory (5 Mar 2026) [opened] | No systematic rise in unemployment for exposed workers. For ages 22 to 25, the job-finding rate into exposed occupations is about 14% lower than in 2022, barely significant | Weak hiring signal, no unemployment signal |
| New York Fed, Emanuel, Harrington and Pallais (1 Jun 2026) [opened] | Remote work can explain 64% of the rise in young graduates' unemployment between 2017-19 and 2022-24 (their back-of-envelope). The rise predates AI's spread and survives a control for AI exposure | Mostly not AI |
| St. Louis Fed, Rodgers and Kassens (30 Jun 2026) [secondary via https://www.hrdive.com/news/the-economy-shutting-young-adults-out-of-career-entry-jobs/824891/, opened] | Employment rate of 18-to-24-year-olds fell more than 2 points, Apr 2023 to Dec 2025. About one-third of the rise in their unemployment is linked to rising demand for AI skills; the rest to the general shortage of openings | One-third AI-related, two-thirds cyclical |
| Fairlie and Wu, NBER w35796 (Sep 2026) [opened, abstract page] | Recent graduates' unemployment did not spike in summer 2026 against earlier summers, older graduates or young non-graduates | No AI effect detected yet |
| EPI, "Class of 2026" [secondary: search summary; site returned 403] | Unemployment rose for young graduates and young non-graduates alike; a depressed hires rate is the main cause | Not AI |
| Humlum and Vestergaard, Denmark (Mar 2026) [opened] | Early-career employment in exposed occupations fell in Denmark too, but not more in firms that adopted chatbots | Not caused by adopters |

---

## 3. Occupation-level evidence

### 3a. Employment by occupation (BLS Occupational Employment and Wage Statistics)

BLS warns that this survey is not built for year-to-year comparison, so read these as rough. Sources: May 2019, May 2022 tables (https://www.bls.gov/oes/2019/may/oes_nat.htm, https://www.bls.gov/oes/2022/may/oes_nat.htm) [opened]; May 2025 values from the BLS API (series OEUN0000000000000 + occupation code + 01, for example https://api.bls.gov/publicAPI/v2/timeseries/data/OEUN000000000000015125201) [opened]. Percent changes are my calculation.

| Occupation | May 2019 | May 2022 | May 2025 | 2019 to 2022 | 2022 to 2025 |
|---|---|---|---|---|---|
| All occupations | 146,875,480 | 147,886,000 | 155,495,730 | +0.7% | +5.1% |
| Computer and mathematical (group) | 4,552,880 | 5,003,910 | 5,260,110 | +9.9% | +5.1% |
| Software developers | n/a (code changed) | 1,534,790 | 1,687,890 | n/a | +10.0% |
| Computer programmers | 199,540 | 132,740 | 92,230 | -33.5% | -30.5% |
| Web developers | n/a | 88,620 | 70,190 | n/a | -20.8% |
| Customer service representatives | 2,919,230 | 2,879,840 | 2,595,750 | -1.3% | -9.9% |
| Data entry keyers | n/a | 157,380 | 127,080 | n/a | -19.3% |
| Telemarketers | 134,800 | 96,520 | 58,430 | -28.4% | -39.5% |
| Bookkeeping, accounting and auditing clerks | n/a | 1,550,750 | 1,373,680 | n/a | -11.4% |
| Writers and authors | 45,860 | 54,010 | 47,940 | +17.8% | -11.2% |
| Editors | 95,970 | 101,430 | 91,690 | +5.7% | -9.6% |
| Technical writers | 50,760 | 48,620 | 45,500 | -4.2% | -6.4% |
| Interpreters and translators | 58,870 | 52,160 | 52,060 | -11.4% | -0.2% |
| Graphic designers | 215,930 | 211,890 | 197,830 | -1.9% | -6.6% |
| Paralegals and legal assistants | 329,870 | 345,240 | 392,880 | +4.7% | +13.8% |
| Accountants and auditors | 1,280,700 | 1,402,420 | 1,449,500 | +9.5% | +3.4% |

What stands out:

- **Programmers, telemarketers and translators were already falling fast before ChatGPT.** Programmers lost a third of their jobs from 2019 to 2022 and another 31% after. That is a long-running trend that AI may be extending, not a break that AI created. (BLS phased in a new occupation classification between 2019 and 2021, so part of the 2019-to-2022 change may be reclassification.)
- **The break after 2022 is clearest for customer service representatives, writers, editors and graphic designers,** which were flat or growing before and shrank by 7 to 11% after. Customer service alone is about 284,000 fewer jobs.
- **Software developers, paralegals and accountants grew.** The software developer mean wage rose from $132,930 (May 2022) to $148,100 (May 2025), up 11.4% [opened, same sources].
- BLS projections for 2025 to 2035: software developers +10%, customer service representatives -5% (-141,800), computer programmers -7% (https://www.bls.gov/ooh/computer-and-information-technology/software-developers.htm, https://www.bls.gov/ooh/office-and-administrative-support/customer-service-representatives.htm [opened]; programmer figure [secondary: search summary of BLS handbook]).

### 3b. Employment by industry (BLS payroll survey, via BLS API) [opened]

| Industry | Earlier | Nov 2022 | Latest | Change since Nov 2022 |
|---|---|---|---|---|
| Telephone call centers (CES6056142001) | 506,100 (Jan 2019) | 423,000 | 307,000 (Sep 2026) | -27.4% (and -16.4% from Jan 2019 to Nov 2022) |
| Information sector (CES5000000001) | 2,910,000 (Feb 2020) | 3,115,000 (the peak) | 2,734,000 (Oct 2026) | -12.2%; 6.0% below Feb 2020 |
| Computer systems design and related services (CES6054150001) | 2,234,100 (Feb 2020) | 2,482,900 (peak 2,483,500 in Mar 2023) | 2,354,100 (Oct 2026) | -5.2%; still 5.4% above Feb 2020 |
| Total nonfarm | 152,293,000 (Feb 2020) | 154,242,000 | 159,293,000 (Oct 2026) | +3.3% |

Call centers are the largest proportional loss I found in any US industry series: about 116,000 jobs since November 2022. The industry was already shrinking (offshoring and self-service), but the decline went from about 16% over the 46 months before ChatGPT to about 27% over the 46 months after. The Dallas Fed puts employment in the top tenth of AI-exposed industries at -1% since late 2022 against +2.5% for the whole economy, and computer systems design wages at +16.7% against +7.5% nationally (https://www.dallasfed.org/research/economics/2026/0224 [opened], 24 Feb 2026): fewer people, paid more.

### 3c. Job postings (Indeed)

- **Software development postings**, index with 1 Feb 2020 = 100: peak 233.8 (28 Feb 2022); 142.5 on 30 Nov 2022; low of 61.1 (17 May 2025); 73.4 (30 Jun 2026); 81.4 (6 Nov 2026) (https://fred.stlouisfed.org/data/IHLIDXUSTPSOFTDEVE.txt [opened]). Two facts matter. Postings had already fallen 39% from their peak **before** ChatGPT was released. And they have risen 33% from the May 2025 low, during the period when coding agents spread (my calculations).
- **All postings**: peak 161.2 (Mar 2022); 146.7 (Nov 2022); 103.8 (30 Oct 2026) (https://fred.stlouisfed.org/data/IHLIDXUS.txt [opened]).
- Indeed (8 July 2026): from May 2022 to May 2026 more AI-exposed occupations had bigger falls in postings (significant, but with no controls); since 2025 the relationship has reversed and exposed occupations have rebounded most; 37% of the software rebound is in jobs with AI in the title (https://hiringlab.indeed.com/?p=20708 [opened]).
- Indeed (23 July 2026): software development, marketing and data analysis postings are roughly 30% below February 2020; AI-related postings are 5.9% of all postings against a 2022 peak of 3.3%; posted wage growth 2.4% (https://hiringlab.indeed.com/blog/us-labor-market-snapshot-june-2026/ [opened]).
- SignalFire, via TechCrunch (24 June 2026): hiring at large tech firms was 25% below 2019 in 2025, but engineering hiring only 11% below; engineers were 55% of new hires at twelve big tech firms, up from 46% [secondary: https://techcrunch.com/2026/06/24/ai-was-supposed-to-kill-engineering-jobs-but-new-data-suggests-theyre-the-most-resilient/, opened].

### 3d. Freelance markets

- **Upwork (Hui, Reshef and Zhou, Organization Science 2024).** After ChatGPT, freelancers in exposed categories such as copyediting and proofreading got about 2% fewer new contracts a month and earned about 5% less. Image generators had a similar effect on graphic designers. Higher-rated freelancers were hit harder. The window is only 6 to 8 months (authors' summary at Brookings, 8 July 2025, https://www.brookings.edu/articles/is-generative-ai-a-job-killer-evidence-from-the-freelance-market/ [opened]).
- **Demirci, Hannane and Zhu** (Harvard Business Review, 11 Nov 2024, https://hbr.org/2024/11/research-how-gen-ai-is-already-impacting-the-labor-market): I could open only the introduction. From memory, they report about a 21% fall in postings for automation-prone freelance jobs within eight months of ChatGPT (writing about -30%, software and web development about -21%) and about -17% for image-related jobs. Treat these numbers as [secondary, not re-verified].
- I found no opened 2026 update for Upwork or Fiverr. This is a gap.

Freelance markets are where substitution should show first, because a client can swap a contractor for a tool overnight. The measured effects are real, concentrated in writing, translation and simple design, and modest in size.

---

## 4. The key studies and trackers, with critiques

**Brynjolfsson, Chandar and Chen, "Canaries in the Coal Mine?" (first version Aug 2025; revised 12 Aug 2026)** (https://digitaleconomy.stanford.edu/app/uploads/2026/08/Canaries_August2026.pdf [opened]).

- Data: ADP payroll records, a balanced panel of 3.5 to 5 million workers a month, January 2021 to June 2026.
- Findings: (1) no economy-wide displacement: sample employment up about 6% since November 2022, the most exposed fifth up about 4%; (2) ages 22 to 25 in exposed occupations 19% below the path of less-exposed peers; (3) the gap has widened (15% at the July 2025 data, 19% at June 2026; earlier versions headlined regression estimates of 13% and 16%); (4) it comes from less hiring, not more separations, and separation rates actually fell as much or more for exposed young workers; (5) it is concentrated where AI use automates rather than assists; (6) base pay has not adjusted. New in 2026: declines for young workers track occupations built on codified ("book") knowledge; experienced workers in occupations built on tacit knowledge gained.
- The authors' own caveats, which are substantial: exposed and unexposed occupations diverged somewhat before ChatGPT, around the pandemic; the effect shrinks when occupations' college share is controlled for; and the gap is much bigger in ADP than in Census data. For 2022 to 2024 the most-versus-least-exposed gap for young workers is -0.132 in ADP but -0.022 (confidence interval -0.055 to +0.011) in the American Community Survey. The two sources agree for professional, information and financial services (-0.231 against -0.213) and disagree for education, health and public administration. The authors warn against scaling the ADP magnitudes to the whole economy.
- Their replies to critics: the result survives dropping computer occupations and tech firms (which they say also speaks against the Section 174 tax explanation); AI exposure and interest-rate exposure are negatively correlated across occupations; the gap kept widening long after rates peaked; controls for remote work do not remove it. In a February 2026 note they concede that with firm-by-time controls the decline becomes notable only in 2024, not in late 2022 (https://digitaleconomy.stanford.edu/news/canaries-interest-rates-and-timinga-more-on-recent-drivers-of-employment-changes-for-young-workers [opened]).
- Monthly dashboard, last updated 21 Oct 2026: for ages 22 to 25 in the most exposed fifth, employment has fallen about 4.5% a year for women and 2.5% a year for men since November 2022 (https://digitaleconomy.stanford.edu/project/indicators/canaries-dashboard/ [opened]).
- Outside critiques: the New York Fed finds the postings gap opened before ChatGPT and stabilized after 2023, with junior and senior postings moving together [opened]; Humlum and Vestergaard find the Danish decline is not at adopting firms [opened]; the Economic Innovation Group and the Yale Budget Lab find nothing in the household survey [opened]; the New York Fed's remote-work paper offers a rival cause [opened]. Canaries cites Tucker (2026, Census Bureau) as showing consistent patterns in government administrative data, and Hyman et al. (2026) as finding higher layoff rates for AI-exposed college-educated workers in California; I did not open either [secondary].

**Yale Budget Lab tracker (Gimbel, Kinder, Kendall and others)** (https://budgetlab.yale.edu/node/1419/pdf [opened]; published 16 July 2026, updated 15 Sep 2026 with August 2026 household-survey data).

- Finding: no clear evidence of AI-related disruption. Occupational churn, AI exposure among the unemployed and usage measures are flat, inside historical ranges, or on pre-AI trends.
- Companion piece by Ryan Nunn, 7 May 2026 (https://budgetlab.yale.edu/node/1495/pdf [opened]): a synthetic difference-in-differences comparison of exposed and comparable unexposed occupations finds employment and real-wage effects statistically indistinguishable from zero. It notes that AI-exposed occupations were less cyclical than others before the pandemic, which matters for any simple comparison. It also says AI will quite likely leave a mark eventually.
- Critique: the household survey is small. The Canaries authors note it contains only 23 to 48 young software developers a month, so it cannot see narrow groups. The tracker can rule out large economy-wide effects; it cannot rule out a concentrated entry-level effect.

**Anthropic.**

- Labor-market paper, Massenkoff and McCrory, 5 Mar 2026 (https://www.anthropic.com/research/labor-market-impacts [opened]): builds "observed exposure" from real usage (computer programmers 75% of tasks covered, data entry keyers 67%). No systematic rise in unemployment for exposed workers; the method could detect a differential of about 1 point. A 10-point rise in coverage goes with about 0.6 point lower BLS projected growth for 2024 to 2034.
- Economic Index, March 2026 report (https://www.anthropic.com/research/economic-index-march-2026-report [opened]; data from 5 to 12 Feb 2026): about 49% of jobs have had at least a quarter of their tasks done with Claude; computer and mathematical tasks are 35% of Claude.ai conversations; coding is moving from chat to the API, which the report reads as a sign of nearer change for those jobs. Earlier (January 2026 report, November 2025 data): 52% of chat use was augmentation and 45% automation, while roughly three-quarters of enterprise API use was automation [secondary: search summary].
- "How employment is changing at Anthropic", 16 Oct 2026 (https://www.anthropic.com/research/employment-at-anthropic [opened]): inside one frontier firm, the junior share of technical hires fell from 27% to 9% since early 2025, and code commits per engineer rose about fivefold in six months. The authors call the firm a leading indicator, not a representative one.
- Critique: usage data from one vendor; exposure is not displacement; the firm has an interest in the subject.

**Humlum and Vestergaard, Denmark** ("Still Waters, Rapid Currents", 13 Mar 2026; earlier title "Large Language Models, Small Labor Market Effects"; https://www.rfberlin.com/wp-content/uploads/2026/03/26078.pdf [opened]).

- Data: surveys of 25,000 workers at 7,000 workplaces in 11 exposed occupations, linked to tax and payroll registers through December 2024.
- Findings: precise zeros on earnings and hours, ruling out effects above 2% two years after ChatGPT, at both worker and workplace level, including for daily users. Workplaces that encourage chatbot use show no differential change in employment, wage bills, hiring or separations, including for early-career workers. What does change: tasks (8 to 17% of users report new tasks) and occupational mobility (adopters who switch occupations see earnings grow 12 points faster).
- Critiques: data end in December 2024, before capable agents; Denmark has strong employment protection and centralized wage-setting; chatbots are not agents; firm adoption may be mismeasured, and effects may spill across firms (points the Canaries authors raise).

**Federal Reserve banks.**

- New York: recent-graduate tracker (Section 2). Business surveys (1 Sep 2026): AI use rose to 61% of service firms and 51% of manufacturers (40% and 26% in 2025); 4% of AI-using service firms laid workers off because of AI in the past six months (1% in 2025); about 15% hired fewer (12%); about 13% hired more; a third retrained (https://libertystreeteconomics.newyorkfed.org/2026/09/businesses-are-using-ai-to-transform-work-not-cut-jobs/ [opened]). Postings study (14 May 2026): AI is not the main driver of the hiring slowdown [opened]. Remote-work study (1 June 2026) [opened].
- St. Louis: across occupations, AI exposure and the 2022-to-2025 rise in unemployment correlate at 0.47 (0.57 using adoption), with computer and mathematical occupations among the steepest rises; the authors stress correlation only (26 Aug 2025, https://www.stlouisfed.org/on-the-economy/2025/aug/is-ai-contributing-unemployment-evidence-occupational-variation [opened]). The Economic Innovation Group, using the same survey and five exposure measures, found the opposite sign on its main measure: unemployment up 0.30 point for the most exposed fifth and 0.94 for the least exposed, 2022 to early 2025 (https://eig.org/ai-and-jobs-the-final-word/ [opened], 10 Aug 2025). The answer depends on the exposure measure and the window.
- Dallas: the two notes above [opened].
- Atlanta, with Richmond and Duke (survey of about 750 finance chiefs, Nov 2025 to Jan 2026): AI raised output per worker by a reported 1.8% in 2025; headcount effect negligible in 2025 and near zero expected for 2026, but large firms expect -0.8%; routine clerical share expected to fall 0.76% in 2026 and 2.19% by 2028 (https://www.atlantafed.org/research-and-data/publications/policy-hub-macroblog/2026/03/25/how-might-ai-change-the-workplace-evidence-from-corporate-executives [opened]). A second Atlanta survey (March 2026): firms expect AI to cut hiring over the next 12 months by 0.8% for college-educated and 1.1% for non-college workers; AI spending per employee is expected to rise from $1,358 (2025) to $2,068 (2026) (https://www.atlantafed.org/research-and-data/publications/policy-hub-macroblog/2026/05/06/how-much-firms-spending-on-ai-and-what-will-happen-to-headcounts [opened]).

**Goldman Sachs** (primary notes are paywalled; Goldman's public page returned 403).

- April 2026 (Elsie Peng): AI has cut net payroll growth by roughly 16,000 a month over the past year, made up of about 25,000 lost to substitution and 9,000 gained from augmentation, and raised unemployment by about 0.1 point. The authors say the true effect is probably smaller because the method misses data-center hiring and demand effects [secondary: https://fortune.com/2026/04/06/ai-tech-displacement-effect-gen-z-16000-jobs-per-month/, opened].
- June 2026: net drag down to about 11,000 a month, mainly because data-center construction now adds about 9,000 jobs a month (212,000 since 2022); only a slight link between AI adoption and under-30 unemployment across industries; young tech workers' unemployment back in line with other tech workers [secondary: https://fortune.com/2026/06/01/how-many-jobs-is-ai-destroying-goldman-sachs-11000-per-month-gen-z-economy/, opened].
- Critique: regression inference, not a count.

**Indeed, LinkedIn, Lightcast, ADP.** Indeed and LinkedIn are covered in Section 3. LinkedIn's summary line is that software hiring follows the broad cycle and evidence of AI displacing software engineers as a whole remains scarce [opened]. Lightcast data underlie the New York Fed postings study; a Lightcast economist told HCAMag that mass-replacement narratives are not supported by the labor data [secondary: https://www.hcamag.com/us/specialization/transformation/ai-blamed-for-121401-job-cuts-but-the-labor-data-isnt-buying-it/594129, opened]. ADP's own monthly report page did not load; ADP's microdata are what Canaries uses.

**Other 2025 and 2026 papers I know of but did not open** (listed in the Canaries literature review): Hosseini Maasoum and Lichtinger (2025) on junior hiring at adopting firms; Klein Teeselink (2025) on the UK; Tucker (2026); Crane and Soto (2026); Bonney et al. (2026); Lambert and Schindler (2026) on remote work; Iscenko and Curto Millet (2026) on interest rates; Chen and Stratton (2026); Ozimek and Goldschlag (2026).

**Where the literature stands.** Studies that use big payroll or resume data and look at narrow young groups find an effect. Studies that use the household survey, or that compare adopting with non-adopting firms, mostly do not. Everyone agrees there is no aggregate effect yet.

---

## 5. Layoffs and hiring freezes tied to AI

### Challenger, Gray and Christmas counts (announced cuts, by the reason the employer gives)

| Period | All announced cuts | Cuts attributed to AI | AI share |
|---|---|---|---|
| 2023 to 2024 combined | n/a | about 17,000 (71,825 through 2025 minus 54,836) | n/a |
| 2025 | 1,206,374 (up 58% on 2024; top reason: federal "DOGE" actions, 293,753) | 54,836 | 4.5% |
| Jan to Oct 2026 | 617,189 (down 44% on the same months of 2025) | 121,401 | 19.7% |
| May 2026 (record month for AI) | 97,006 | 38,579 | 40% |
| October 2026 | 43,994 (lowest October since 2023) | 1,265 | 2.9% |
| Cumulative since tracking began in 2023 | n/a | 193,226 | n/a |

Sources: https://www.challengergray.com/blog/october-layoffs-at-three-year-low-seasonal-hiring-plans-up-26/ [opened]; https://www.challengergray.com/blog/2025-year-end-challenger-report-highest-q4-layoffs-since-2008-lowest-ytd-hiring-since-2010/ [opened]; https://www.challengergray.com/blog/challenger-report-may-job-cuts-rise-16-from-april-highest-may-total-since-2020/ [opened]. Shares are my calculation.

- AI was the top stated reason for five straight months (March to July 2026); by October "market and economic conditions" (130,531 for the year) had overtaken it [opened].
- Technology firms announced 171,501 cuts in January to October 2026, up 21% on 2025, while cuts in retail, government and warehousing fell 77 to 93% [opened].
- Scale check: US employers lay off or discharge about 1.6 million people **every month** (Section 1). AI-attributed announcements in 2026 average about 12,000 a month, under 1% of that flow (my calculation).
- These are stated reasons. Andy Challenger of the firm has said that naming AI can please investors, and that as rules take shape firms will become more careful, making AI's role harder to track (https://www.challengergray.com/blog/challenger-report-layoffs-fall-hiring-picks-up-ai-leads-for-fifth-straight-month/ [opened]).

### Company statements

From TechCrunch's running list of 2026 layoffs where employers cited AI (https://techcrunch.com/2026/07/25/the-running-list-major-tech-layoffs-in-2026-where-employers-cited-ai/ [opened]) unless another source is given. I sort them by what the company actually claimed.

**AI does the work (direct substitution claimed).**

- **Salesforce.** Support staff cut from about 9,000 to about 5,000; the chief executive said in 2025 that AI agents meant he needed fewer people (https://www.cnbc.com/2025/09/02/salesforce-ceo-confirms-4000-layoffs-because-i-need-less-heads-with-ai.html [opened]). A further cut of under 1,000 in February 2026. No reversal found.
- **Block.** About 4,000 jobs, nearly half the company, February 2026; the chief executive said AI tools allow smaller, flatter teams.
- **Cloudflare.** About 1,100 jobs (20%), May 2026, in a quarter when revenue grew 34%; the chief executive tied it to AI productivity in support and "measurement" roles, said it was not cost-cutting, and expects more employees in 2027 than at any point in 2026 (https://techcrunch.com/2026/05/08/cloudflare-says-ai-made-1100-jobs-obsolete-even-as-revenue-hit-a-record-high/ [opened]).
- **Oracle.** 21,000 jobs over 12 months (13%); its filing says AI adoption has led to reductions and may lead to more. The March 2026 round was also described as paying for data centers.
- **IBM.** About 200 human-resources roles replaced by AI agents; at the same time it says it is tripling entry-level hiring.
- **Klarna.** Workforce fell from 5,527 (Dec 2022) to 3,422 (Dec 2024) through a hiring freeze and attrition, with an AI assistant said to do the work of 700 agents. **Partly reversed:** in May 2025 the chief executive said the all-AI approach had lowered service quality and that Klarna would recruit human agents again in a gig-style setup (https://www.cnbc.com/2025/05/14/klarna-ceo-says-ai-helped-company-shrink-workforce-by-40percent.html [opened]). Headcount was reported at 2,907 later in 2025 (https://en.wikipedia.org/wiki/Klarna [opened; tertiary]).

**Cutting people to pay for AI, or reorganizing around it (AI as budget priority, not as worker).**

- **Amazon.** 14,000 corporate roles in October 2025 and 16,000 in January 2026, over 30,000 in total. The October memo cites bureaucracy and layers and calls AI transformative, but does not say AI did the work (https://www.aboutamazon.com/news/company-news/amazon-workforce-reduction [opened]; January figure from the TechCrunch list and https://fortune.com/2026/02/02/ai-labor-market-yale-budget-lab-ai-washing/ [opened]).
- **Meta.** About 8,000 jobs (10%) from 20 May 2026 and 6,000 open roles closed, to run more efficiently and offset other investments; about 7,000 staff moved into AI roles (https://techcrunch.com/2026/04/23/meta-job-cuts-10-percent-8000-employees/ [opened]; TechCrunch list).
- **Microsoft.** About 4,800 (2.1%) in July 2026; says the roles were not replaced by AI.
- **Cisco** (nearly 4,000, May 2026), **Intuit** (about 3,000, 17%), **GitLab** (about 350, 14%), **Atlassian** (about 1,600, 10%), **PayPal** (4,500 over two to three years), **Coinbase** (about 700), **Snap** (about 1,000, 16%), **Monday.com** (about 600; a co-founder said the cuts were not to replace people with AI), **Dell** (about 11,000; no AI attribution), **General Motors** (500 to 600 IT staff, to hire people with stronger AI skills).

**Signs that the AI label is partly marketing.**

- Robinhood cut 10% in June 2026 and conspicuously avoided the word AI; TechCrunch reports the label is falling out of favor amid public backlash (https://techcrunch.com/2026/06/16/robinhoods-note-on-10-layoffs-shows-blaming-ai-isnt-cutting-it/ [opened]).
- A Financial Times analysis found shares of firms that cited AI for layoffs lagged the Nasdaq by almost 10% over the next 30 trading days [secondary: TechCrunch list].
- Yale's Martha Gimbel argues AI is a convenient story for chief executives who are really dealing with tariffs, immigration limits, past over-hiring and high rates (Fortune, 2 Feb 2026 [opened]).
- The October 2026 collapse in AI-attributed cuts (1,265) came with no fall in AI capability. Stated reasons move with fashion.

**Hiring freezes and survey evidence.** The better measure of "freeze" behavior is the New York Fed survey: 15% of AI-using service firms hired fewer people because of AI in the six months to August 2026, while 13% hired more [opened]. I could not re-verify 2025 reports on UPS, Accenture, banks, consultancies and law firms; see "What I could not verify".

---

## 6. Macro signals

**Productivity (BLS, nonfarm business;** https://www.bls.gov/news.release/archives/prod2_11052026.htm [opened], 5 Nov 2026).

- Annual averages: 3.2% in 2024, 2.3% in 2025 (both revised up 0.2 point).
- 2026 quarters at annual rates: 1.4% (Q1), 2.1% (Q2), 3.6% (Q3, preliminary). Over the year to Q3 2026: 2.1%.
- Since Q4 2019 the average is 2.2% a year. That beats the 1.5% of 2007 to 2019 but equals the average since 1947. There is no AI-sized acceleration in the official numbers yet. The St. Louis Fed's Ozkan points out that the gains from computers took nearly two decades to appear (https://www.stlouisfed.org/open-vault/2026/feb/six-questions-employment-generative-ai [opened]).

**Output against jobs ("jobless growth"?).**

- Real GDP grew 2.3% in 2025 (https://fred.stlouisfed.org/series/A191RL1A225NBEA [opened]); payrolls grew 0.07% (116,000) between December 2024 and December 2025 [opened, my calculation]. Quarterly growth: 0.1%, 4.0%, 3.9%, 0.2% in 2025; 2.5%, 2.2%, 3.4% in the first three quarters of 2026 (https://fred.stlouisfed.org/data/A191RL1Q225SBEA.txt [opened]).
- In the nonfarm business sector, output rose 2.3% over the year to Q3 2026 while hours rose 0.2% [opened].
- So 2025 does look like growth without jobs. But the identified causes are a labor-supply slowdown from lower immigration (Yale [opened]), federal job cuts, and ordinary productivity growth of about 2%. Job growth resumed in 2026 (86,000 a month). Equipment investment in Q3 2026 was led by computers and peripherals (BEA [opened]): AI is showing up as capital spending, and as about 9,000 data-center construction jobs a month (Goldman, [secondary]).

**Labor share.**

- BLS nonfarm business labor share: 53.0% in Q3 2026, which BLS says is the lowest in a series that starts in 1947 [opened]. A search summary of the same release quoted 52.8% for Q2 2026 as the record low; the two statements cannot both be exact, and I could not resolve it [secondary].
- BEA compensation of employees as a share of gross domestic income: 53.0% (2021), 51.7% (2022), 51.5% (2023), 51.4% (2024), 50.9% (2025) (https://fred.stlouisfed.org/series/A4002E1A156NBEA [opened]). Wages and salaries alone: 43.5% (2021) to 42.0% (2025) (https://fred.stlouisfed.org/series/W270RE1A156NBEA [opened]).
- The New York Fed (24 June 2026): the labor share is about 1.6 points below its pre-pandemic level and at a post-war low; the fall is within industries, not from a shift between industries; it follows the usual pattern after recessions; the article does not mention AI (https://libertystreeteconomics.newyorkfed.org/2026/06/the-post-covid-decline-in-the-labor-share/ [opened]). The longer decline dates from the early 2000s.

**Profits.** Corporate profits from current production: $3,736.0 billion (2024), $4,025.0 billion (2025, up 7.7%), and $4,709.5 billion at an annual rate in Q2 2026 (https://www.bea.gov/data/income-saving/corporate-profits [opened]; growth rates are my calculation). Against nominal GDP of $32,563 billion in Q2 2026 (https://fred.stlouisfed.org/series/GDP [opened]) that is about 14.5% (my calculation). The jump from Q1 to Q2 2026 (about 9%) is unusually large; I would recheck it against the 25 November 2026 release before leaning on it.

**Reading.** Output is growing faster than hours, profits are growing faster than pay, and the labor share is at a record low. All three fit an AI story. All three also began before generative AI, and no study I opened attributes them to it.

---

## 7. International

**United Kingdom.**

- Unemployment 4.7% (June to August 2026); payrolled employees down 111,000 (0.4%) over the year to August 2026; vacancies 691,000 (July to September 2026), down 5.1% on the year; regular pay growth 3.7%. The statistics office links weak vacancies to smaller firms and higher labor costs (https://www.ons.gov.uk/employmentandlabourmarket/peopleinwork/employmentandemployeetypes/bulletins/uklabourmarket/latest [opened], 20 Oct 2026).
- Indeed UK (3 Aug 2026): all postings 32% below February 2020; graduate postings down about 7% on the year and at their lowest for the season since 2020; youth unemployment described as a decade high (no figure given); 9.4% of postings mention AI, a record. The report blames cost pressures and uncertainty, not AI (https://hiringlab.indeed.com/uk/blog/2026/08/03/mid-year-uk-jobs-hiring-trends-report/ [opened]).
- The UK is the cleanest case of a graduate slump with an obvious non-AI cause: employer payroll taxes and the minimum wage both rose in April 2025 (from memory; not re-verified). UK-specific AI studies (for example Klein Teeselink, 2025) were not opened.

**India's IT services** (headcounts from Wikipedia infoboxes and text; the companies' investor pages blocked automated access).

- TCS: above 600,000 in July 2022; 584,519 in March 2026. In July 2025 it announced a cut of about 12,000 (2%), which its chief executive attributed to skill mismatch, not AI automation. In June 2026 it agreed to train 50,000 staff on Anthropic's models (https://en.wikipedia.org/wiki/Tata_Consultancy_Services [opened; tertiary]).
- Infosys: 317,240 (March 2024); 328,594 (March 2026) (https://en.wikipedia.org/wiki/Infosys [opened; tertiary]).
- Wipro: 234,054 (March 2024); 242,156 (March 2026) (https://en.wikipedia.org/wiki/Wipro [opened; tertiary]).
- Reading: the three largest firms together are roughly flat over two years, after adding staff at a furious pace in 2021 and 2022. That is a stall, not a collapse, and the firms' own explanation is weak client demand and skill mix. I could not get the September 2026 quarter.

**Philippine call centers.**

- The industry body's home page shows 1.9 million workers and $40 billion in revenue, without a date (https://www.ibpap.org/ [opened]). Wikipedia gives 1.3 million workers and $38.7 billion for 2024 (https://en.wikipedia.org/wiki/Business_process_outsourcing_in_the_Philippines [opened; tertiary]). The two headcounts conflict (they probably count different things), and neither shows a decline. I found no opened source documenting net job losses there.
- Compare the US: telephone call center employment down 27% since November 2022 (Section 3b). If AI is replacing voice work, it has so far shown up in the high-wage country, alongside continued offshoring.

**Denmark.** Humlum and Vestergaard (Section 4): no earnings or hours effects through December 2024.

**Sweden.** Klarna (Section 5): the best-known corporate reversal.

---

## 8. A sober verdict

**How much aggregate displacement is visible?** Very little. The credible estimates cluster around one-tenth of a percentage point of unemployment or a few hundred thousand jobs, mostly jobs young people were never hired into.

- Dallas Fed: at most 0.1 point on the unemployment rate through September 2025 [opened].
- Goldman Sachs: about 0.1 point, and a net drag of 11,000 to 16,000 jobs a month in 2026, against payroll growth of 86,000 a month and a workforce of 159 million [secondary].
- Canaries: no economy-wide effect; total employment of 22-to-25-year-olds in the ADP sample down 1.9% since November 2022 while every older group grew [opened].
- Yale, Economic Innovation Group, Anthropic, Humlum and Vestergaard: no detectable aggregate effect [opened].
- Firm surveys: 4% of AI-using service firms in the New York region laid anyone off because of AI in six months [opened]; finance chiefs report a negligible effect for 2025 [opened].

**Where is it concentrated?**

1. **Entry-level hiring in exposed white-collar occupations** (software, customer support, and other codified-knowledge work), ages 22 to 25. Evidence: Canaries, Dallas Fed, Anthropic's job-finding result, LinkedIn's entry-level series, Anthropic's own hiring mix.
2. **A few routine occupations**: programmers, data entry, customer service, telemarketing, bookkeeping clerks, and to a smaller degree writers, editors, graphic designers. About 284,000 fewer customer service representatives and 116,000 fewer call-center jobs are the largest absolute numbers.
3. **Freelance writing, translation and simple design work.**
4. **Large technology firms**, where 2026 layoffs are openly linked to AI, mostly as a spending priority.

**Press claims the data do not support.**

- *"AI is causing mass unemployment" or "white-collar jobs are disappearing."* Unemployment is 4.1%; graduates aged 25 and over are at 2.6%; prime-age employment is near its high.
- *"AI caused the 2025 hiring slump."* The hires rate has been stuck near 3.3% since mid-2024; job postings peaked in early 2022 and software postings had fallen 39% before ChatGPT launched; immigration, rates, tariffs and federal cuts are documented causes.
- *"AI is the reason new graduates cannot find work."* The graduate gap flipped in 2019; remote work, weak hiring and (in the UK) labor costs explain most of it; graduate unemployment improved in 2026 as AI improved.
- *"AI is the leading cause of layoffs."* True of stated reasons for five months of 2026, and false by October. Averaged over 2026, AI-attributed announcements are under 1% of the monthly flow of layoffs; even in the record month (May) they were about 2% (my calculation; announcements and actual layoffs are not the same thing).
- *"AI has replaced software engineers."* Software developer employment rose 10% from May 2022 to May 2025, wages rose 11%, and postings are up a third from their May 2025 low. The older, narrower "computer programmer" job is the one that is vanishing.
- *"AI has already produced a productivity boom."* Productivity is growing at its 80-year average.
- *"Nothing is happening."* Also unsupported. The young-worker gap in payroll data has widened in every data vintage since 2025 and survives the controls tried so far, though it shrinks when education is added; firms increasingly tell surveyors that AI reduced their hiring; and at the first frontier firm to publish its own data, the junior share of technical hires fell by two-thirds (a share, not a count: the firm was growing).

---

## What I could not verify

Web search stopped partway through, so the following rest on memory, search summaries or tertiary sources.

- **2025 company announcements not re-opened**: UPS (about 48,000 jobs cut in 2025, attributed mainly to network reconfiguration and automation), Accenture (about 11,000 staff "exited" who could not be retrained for AI, September 2025), Microsoft (about 15,000 in 2025), bank statements about operations headcount (JPMorgan, Goldman Sachs, Wells Fargo, Citi), consultancies cutting graduate intake (PwC, McKinsey, the Big Four in the UK), and law-firm business-services cuts. All from memory of 2025 reporting. Do not publish these numbers without checking.
- **Other reversals** often cited (for example an Australian bank reinstating call-center jobs in 2025, and survey claims that many firms regret AI layoffs): not verified.
- **Entry-level postings series** (Handshake, NACE, Revelio): not opened. No clean number for 2026.
- **Recent-graduate outcomes by major** (computer science unemployment): the New York Fed table did not load.
- **Freelance studies other than Hui, Reshef and Zhou**: Demirci et al., Teutloff et al., and any 2026 Upwork or Fiverr analysis are from memory or not found.
- **Translators**: the Oxford study by Frey and Llanos-Paredes was not opened. BLS data show US translator employment flat since 2022.
- **Goldman Sachs primary notes**: paywalled; figures are from Fortune.
- **St. Louis Fed June 2026 paper**: read only through HR Dive. A Bloomberg summary gives a different-looking breakdown (2.9 points from the lack of openings, 1.1 points from AI-skill demand) that I could not reconcile with "about one-third".
- **Yale tracker numbers**: I opened the summary and the companion piece but the interactive charts (dissimilarity index values) did not render. One commentary put the change in the US occupational mix since late 2022 at about 1%; I could not confirm it.
- **Anthropic Economic Index after March 2026**: the index page shows a June 2026 update that did not load. The 52%/45% augmentation-automation split is from a search summary of the January 2026 report.
- **India**: no figures for the quarter ending September 2026; March 2026 headcounts are from Wikipedia. HCLTech and the wider industry (Nasscom) not checked.
- **Philippines**: no dated 2025 or 2026 headcount; no opened study of AI's effect.
- **UK**: no youth unemployment figure, no Institute of Student Employers data, no opened UK causal study.
- **BLS labor share**: 53.0% (Q3 2026, release as opened) against 52.8% (Q2 2026, search summary); unresolved.
- **Corporate profits Q2 2026**: the size of the quarterly jump needs rechecking.
- **September 2026 CPI of 3.7%** and the energy explanation: from a secondary site; the BLS October release confirms only monthly changes.
- **Section 174**: I did not verify the current tax treatment of research costs. The only evidence here is the Canaries authors' robustness check.
- **Tariff effects on employment**: not researched in this pass; Challenger attributes only 7,908 announced cuts to tariffs in 2025 [opened].

---

## What cuts against the obvious story

Against "AI is already taking the jobs":

1. **Timing.** Software postings fell 39% from their February 2022 peak before ChatGPT existed. The information sector's employment peak was November 2022. The graduate unemployment gap flipped in 2019. The New York Fed finds the postings gap between exposed and unexposed occupations opened before ChatGPT and stopped widening after 2023.
2. **Recovery during the agent era.** Since coding agents arrived in 2025, software postings are up 33% from their low, exposed occupations have rebounded most in Indeed's data, graduate unemployment has fallen to 5.2%, and unemployment for ages 20 to 24 has come down from 9.2% to 7.5%.
3. **Adopters do not shed more.** In Denmark the early-career decline shows up equally in firms that did not adopt chatbots. In the New York Fed survey nearly as many firms hired more because of AI (13%) as hired fewer (15%).
4. **The headline occupations grew.** Software developers +10%, paralegals +14%, accountants +3%. Translators have been flat since 2022 after falling earlier.
5. **Stated reasons are unreliable.** AI-attributed layoffs went from 38,579 in May 2026 to 1,265 in October with no change in the technology. Most named firms were cutting to fund AI, during record revenue.
6. **Magnitude depends on the data set.** The same young-worker gap is -13 points in ADP and -2 points (not distinguishable from zero) in the Census survey.
7. **Macro trends predate AI.** The labor share has fallen since the early 2000s and productivity is at its long-run average.

Against "nothing is happening":

1. **The young-worker gap keeps widening**: 13%, 16%, then 19% across three data vintages, long after interest rates peaked, and it loads on occupations where AI use is automating rather than assisting.
2. **Adjustment through hiring is invisible in layoff and unemployment statistics.** People who are never hired do not show up as displaced. The Dallas Fed finds the fall comes from fewer entries from outside the labor force.
3. **Specific occupations have broken from trend**: customer service, writers, editors and graphic designers were stable before 2022 and fell 7 to 11% after. Call-center job losses accelerated.
4. **Firms say it is coming.** Large firms expect AI to cut their headcount 0.8% in 2026; executives expect routine clerical work to shrink 2% by 2028; AI spending per employee is expected to rise about 50% in 2026.
5. **The frontier firm looks different.** At Anthropic the junior share of technical hires fell from 27% to 9% in under two years and agents now log about six hours for every human hour. If other firms follow with a lag, today's aggregate data say little about 2028.
6. **Slack is building in ways that fit slow displacement.** Long-term unemployment is 27.6% of the unemployed, up from about 21% in early 2025; the hires rate has not recovered; tech-sector announced layoffs are up 21% in a year when total announced layoffs fell 44%.
7. **Most evidence predates capable agents.** The Danish data stop in December 2024, the BLS occupation data in May 2025, and several null results use 2022-to-2025 windows. The tools that can complete multi-hour tasks spread in 2025 and 2026.

The honest position in November 2026: the aggregate data rule out large displacement so far; the entry-level data rule out "no effect"; and almost every data set that could settle the size of the effect ends before the current generation of AI agents was widely deployed.
