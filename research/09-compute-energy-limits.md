# 09. How fast can the supply of machine labor physically expand?

Compute, chips, energy, money, materials, and the limits on growth. Research date: 2026-11-12.

**Source markers.** `[opened]` means I read that page in this session. `[secondary]` means the figure comes from a search-result summary, or from an opened page that relays a source I did not open (the relay URL is given). `[memory]` means prior knowledge that I could not re-verify, because the shared web-search budget ran out after my 27th search and the rest of the work was direct fetches of known pages. Treat `[memory]` figures as leads to check, not as evidence. "H100e" means H100-equivalents in Epoch AI's sense (8-bit operations per second relative to an Nvidia H100).

---

## Summary

- **Stock.** Cumulative AI compute sold worldwide was about 0.3M H100e at end-2022, 1.6M at end-2023, 6.7M at end-2024, 20.3M at end-2025 and 31.6M at mid-2026 (Epoch data, my sums). Growth of the stock is slowing: 5.3x, 4.2x, 3.0x, then 2.6x year on year. End-2026 will be roughly 45-65M. The US holds about 72%, China about 10%.
- **Chips.** Nvidia's data-center revenue was $89.0B in the quarter to July 2026 and it says fiscal 2028 growth of about 70% is limited by supply, mainly memory. SK hynix says DRAM and HBM are sold out through 2029 and short through 2030. TSMC says demand far exceeds supply.
- **Power.** About 15 GW of IT load sits in the 96 largest AI sites. US turbine slots are being reserved for 2032, transformers take about 2.5 years, and the median grid connection takes about 5 years. Electricity is only about 7% of the annual cost of an AI data center, so the constraint is time-to-power and politics, not the price of energy.
- **Politics.** On 3 November 2026 voters sided against data-center development in all but one of 41 local measures (some counts were still partial), and governors-elect in Texas, Ohio, Georgia and Wisconsin campaigned on pauses or conditions. About half of the planned multi-gigawatt capacity is in those four states.
- **Money.** The four largest hyperscalers spent $376B in 2025 and guide to about $730B for 2026. Free cash flow has turned negative at Amazon and Alphabet. A Sequoia-style calculation now implies about $1.6T a year of end-user AI revenue is needed. OpenAI plus Anthropic run at roughly $115B.
- **Machine labor.** Hardware shipped through 2026 could run about 16-56M concurrent frontier agents (67-240M full-time equivalents), and through 2027 about 33-171M (140-720M FTE), if fully deployed (Epoch, October 2026). Capability and demand, not hardware, limit substitution today.
- **Binding constraint by year (my judgment).** 2026: memory and packaging. 2027: energized sites and permitting, with memory still tight. 2028-2029: capital and demand, plus US power. 2030-2032: generation, grid and fabs. 2033-2036: general industrial capital and materials, if automation is broad.

---

## 1. Installed AI compute

### 1.1 World stock, 2022 to 2026

Built from Epoch AI's chip-sales dataset. I summed the per-chip quarterly rows for 2022 and 2023 myself and used Epoch's own quarterly totals for 2024 onward.

| End of period | Added in period (M H100e) | Cumulative sold (M H100e) | Growth of stock | US share of additions | US stock (approx., M) |
|---|---|---|---|---|---|
| 2022 | 0.30 | 0.30 | n/a | ~60% | ~0.2 |
| 2023 | 1.29 | 1.59 | 5.3x | ~60% | ~1.0 |
| 2024 | 5.09 | 6.69 | 4.2x | ~60% | ~4.0 |
| 2025 | 13.61 | 20.30 | 3.0x | 72% | ~13.8 |
| Mid-2026 (Q2) | 11.31 (H1) | 31.61 | 2.6x vs Q2 2025 | 78% (H1) | ~22.8 |
| End-2026 (estimate) | 24-45 (full year) | 44-65 | 2.2x-3.2x | n/a | ~33-48 |

Sources and arithmetic:

- Quarterly additions Q1 2024 to Q2 2026 (0.83M, 1.03M, 1.31M, 1.92M, 2.57M, 2.93M, 3.70M, 4.41M, 4.98M, 6.33M H100e): Epoch, "New AI computing capacity is doubling every 9 months", published 2026-10-29, data as of 2026-10-19. https://epoch.ai/data-insights/ai-computing-capacity-additions-doubling [opened]
- 2022 and 2023: sum of the median H100e column for the 35 rows dated 2022-2023 in Epoch's timelines CSV (updated 2026-10-21). 2022 = 303,477. 2023 by quarter = 116,866 + 245,132 + 393,996 + 534,875 = 1,290,869. https://epoch.ai/data/ai_chip_sales_timelines_by_chip.csv [opened]
- Check: my cumulative figures reproduce Epoch's stated ratios. Q2 2026 / Q2 2025 = 31.61 / 12.19 = 2.59 (Epoch says 2.6x). Q2 2025 / Q2 2024 = 12.19 / 3.45 = 3.53 (Epoch says 3.5x). End-2025 = 20.30M matches Epoch's "about 20 million" (2026-05-20). https://epoch.ai/gradient-updates/frontier-labs-dont-use-most-ai-compute [opened]
- End-2026 estimate: flat Q3 and Q4 gives 31.6 + 2 x 6.33 = 44.3M. Continuing the latest 19% quarterly growth gives 31.6 + 7.53 + 8.96 = 48.1M. The high end uses the TrendForce-based production estimate of 45.2M H100e for calendar 2026 cited by IFP (below): 20.3 + 45.2 = 65.5M. A secondary report of an Epoch-based projection gives about 46M. https://cryptobriefing.com/epoch-ai-chips-billion-ai-agents/ [secondary]
- US share: Epoch's customs-based import explorer, as relayed on 2026-10-28: about 60% of additions in 2022-2024, 72% in 2025, 78% in H1 2026; cumulative since 2022 as of Q2 2026: US 72.2%, China 9.6%, EU 5.1%, Malaysia 2.4%, India 1.6%, Japan 1.6%, rest 7.5%. https://officechai.com/ai/the-uss-share-of-new-compute-has-risen-from-60-in-2024-to-78-in-first-half-of-2026/ [secondary: relay of Epoch] My US stock column applies those shares to each year's additions: 0.6 x 6.69 + 0.72 x 13.61 + 0.78 x 11.31 = 22.6M, against 72.2% x 31.61 = 22.8M.

Caveats that matter for the guide:

- These are sales, not installed chips. Epoch's reference case puts operational compute one quarter behind sales: about 16M H100e operational at end-2025 against 20M sold, or 12M with a two-quarter lag (2026-05-20). [opened, same Epoch URL as above]
- No retirements are subtracted. Before 2024 only Nvidia and Google are counted. Intel, Microsoft, Meta, Cerebras and Groq chips are excluded.
- The January 2026 snapshot of the same dataset gave "over 15 million" and more than 10 GW; the totals have been revised upward since. https://the-decoder.com/global-ai-compute-hits-15-million-h100-equivalents-epoch-ai-finds/ [opened]

### 1.2 Growth rate

| Measure | Rate | Date | Source |
|---|---|---|---|
| Cumulative stock since 2022 | 3.3x per year, doubling in 7 months (90% CI 6-8) | 2026-01-09 | https://epoch.ai/data-insights/ai-chip-production [opened] |
| Quarterly additions since 2024 | 2.5x per year, doubling in 9.1 months | 2026-10-29 | Epoch additions page [opened] |
| Additions in 2023 | about 6x | 2026-10-29 | same [opened] |
| Year-on-year growth of quarterly additions | 2.8x (Q2 2025) falling to 2.2x (Q2 2026) | 2026-10-29 | same [opened] |
| Quarter-on-quarter growth | from about 32% to 19%, trend not statistically significant | 2026-10-29 | same [opened] |

### 1.3 Who holds it

By chip designer, Q2 2026 additions (6.33M H100e): Nvidia 3.95M (62.5%), Google 1.61M (25.4%), Amazon 0.29M (4.6%), AMD 0.26M (4.1%), Huawei 0.20M (3.2%), Cambricon 0.01M (0.2%). Epoch additions page [opened]; percentages are mine.

By owner and user, end of 2025 (Epoch, 2026-05-20 and the AI Chip Users explorer, updated 2026-09-09):

| Entity | Estimate (H100e) | Note | Source |
|---|---|---|---|
| Google (owned) | ~5M, about a quarter of the world | ~4M with a one-quarter lag; about half goes to Google Cloud | Epoch gradient update [opened] |
| Meta (owned) | ~2.3M, roughly 10% | before deployment lags | same [opened] |
| OpenAI (used) | 1.74M (1.25-2.19M) | 103K in 2023, 386K in 2024; 1.9 GW at end-2025 | https://epoch.ai/latest/introducing-the-ai-chip-users-explorer [opened] |
| Google DeepMind (used) | 1.58M (1.01-2.55M) | | same [opened] |
| Anthropic (used) | 1.19M (0.84-1.72M) | about 1.4 GW per an OpenAI memo | same [opened] |
| Meta Superintelligence Labs (used) | 1.00M (0.61-1.64M) | | same [opened] |
| xAI, listed as SpaceXAI (used) | 0.62M (0.55-0.70M) | | same [opened] |
| Five hyperscalers (Amazon, Google, Meta, Microsoft, Oracle) | 67-71% of world compute | two write-ups of Epoch's April 2026 release disagree | https://techjacksolutions.com/ai-brief/epoch-ai-data-five-hyperscalers-control-71-of-global-ai-comp/ [secondary] |

The five frontier labs together used about 6.1M H100e, which is 30% of compute sold and about 38% of compute operational. Epoch's own reading is that the five most compute-rich developers use under half of the world total, and OpenAI plus Anthropic about 15-20%. The rest runs second-tier models, open-weight inference, recommender systems and non-language AI. [opened, Epoch gradient update]

Largest single sites (Epoch Frontier Data Centers, updated 2026-11-06): 96 tracked sites hold 15.8M H100e and 15.1 GW of IT power (about 19.6 GW with cooling and overhead), which Epoch puts at 44% of world AI compute (90% CI 30-78%). https://epoch.ai/data/frontier-data-centers [opened]

### 1.4 China

- Epoch import data: 9.6% of cumulative arrivals since 2022 (Q2 2026). [secondary, officechai relay above]
- Institute for Progress (2026-10-19): China will have access to about 4.6M H100e at end-2026 and 8.8M at end-2027, counting domestic chips, legal imports, smuggled chips and remote access to chips abroad. Components at end-2026: domestic stock 1.7M (1.4-2.2M), legal imports 0.85M, smuggled 1.0M (0.4-2.9M), remainder remote access. Domestic production is 986K H100e in 2026 (662K-1.4M) and 1.3M in 2027, which is 1-2% of US-ecosystem production. US frontier labs have about 16x the training compute of Chinese labs, and Chinese models trail by about 6.5 months. https://ifp.org/wp-content/uploads/How-to-Increase-Americas-AI-Lead-Over-China_IFP2026.pdf [opened, pp. 1-24]
- China's share of world access at end-2026 is therefore about 7-9% (4.6M over 50-65M, my arithmetic).

### 1.5 Forecasts

| Source and date | Forecast | URL |
|---|---|---|
| AI 2027 compute forecast (April 2025) | 18M at end-2025, 40M at end-2026, 100M at December 2027; 2.25x per year (1.35x chip efficiency times 1.65x production); production growth slows to about 1.25x per year after 2027 on wafer limits; China about 12% | https://ai-2027.com/research/compute-forecast [opened] |
| Epoch, "Can AI scaling continue through 2030?" (2024-08-20) | by 2030 a median of about 100M H100e could be dedicated to training (range 20-400M); power binds first, then chips | https://epoch.ai/blog/can-ai-scaling-continue-through-2030 [opened] |
| IFP using TrendForce (2026-10-19) | production outside Chinese designers: 5.4M (2024), 16.0M (2025), 45.2M (2026), 125.1M (2027) H100e | IFP PDF, footnote 32 [opened] |
| Nvidia (2026-08-26) | fiscal 2028 revenue up about 70%, stated as limited by supply | https://www.marketbeat.com/instant-alerts/transcript-nvidia-q2-earnings-call-highlights-2026-08-26/ [opened] |
| TSMC (2026-10-15) | AI accelerator revenue CAGR in the mid-to-high 50s percent for 2024-2029, CEO says probably higher | https://xenospectrum.com/en/tsmc-q3-2026-gross-margin-capex/ [opened] |
| Trend extrapolation reported on LessWrong (September 2026) | about 46M at end-2026, about 140M at end-2028 | cryptobriefing relay [secondary] |

Reality is ahead of the AI 2027 schedule. That forecast expected 40M H100e at end-2026; the actual figure will be 45-65M. If the TrendForce production numbers hold, cumulative production passes 190M by end-2027 (5.4 + 16.0 + 45.2 + 125.1 = 191.7M), nearly twice AI 2027's 100M.

**My estimate for end-2027: about 140M H100e (range 100-190M).** Arithmetic:

1. Nvidia fiscal 2027 revenue is about $406B (Q1 about $81.5B inferred from Q2's 18% sequential rise, Q2 $96.2B, Q3 guide $108B, Q4 assumed $120B). Plus 70% gives about $690B for fiscal 2028, which is roughly calendar 2027.
2. Nvidia says a gigawatt of Vera Rubin capacity carries about $40B of its revenue. $690B / $40B = about 17 GW of IT load. [opened, marketbeat]
3. Epoch equates the 9+ GW Stargate plan to roughly 20M H100e, or 2.2M per GW of facility power, about 2.8M per GW of IT power at a PUE of 1.25. 17 GW x 2.8M = 48M H100e from Nvidia. https://epoch.ai/blog/openai-stargate-where-the-us-sites-stand [opened]
4. Nvidia is 62.5% of additions, so the total is about 48 / 0.625 = 77M. A second route gives more: IFP reports a Rubin GPU as 8.8x an H100; if a Rubin rack needs about 2.6 kW of IT power per GPU position [memory, unverified], 1 GW holds about 385K GPUs or 3.4M H100e, so 17 GW is 58M from Nvidia and 58 / 0.625 = 93M in total.
5. End-2026 stock of 48-65M plus 77-93M gives 125-158M. I widen to 100-190M to cover a supply slip at the low end and the TrendForce production figure at the high end.

**My estimate for end-2030: about 400M H100e (range 250-600M), capped by power.** World AI data-center power today is about 45 GW (19.6 GW / 0.44, my inference from Epoch's coverage estimate). If it reaches 100-200 GW by end-2030 (Bain projects 200 GW of world compute demand by 2030), additions of 55-155 GW at about 0.3 kW of facility power per H100e give 180-520M, plus about 50M existing. The 0.3 kW figure sits between Epoch's 0.45 kW for 2027-2028 sites and what the 34% per year efficiency trend would give by 2030. This is my construction, not a published forecast.

---

## 2. Chips

### 2.1 Nvidia

| Item | Figure | Date | Source |
|---|---|---|---|
| Data-center revenue, Q3 FY2026 | $51.2B | quarter to Oct 2025 | https://www.zacks.com/stock/news/2798118/nvidias-q3-data-center-sales-soar-56-can-nvda-sustain-the-momentum [secondary] |
| Total revenue, Q2 FY2027 | $96.2B, up 106% year on year | quarter to 2026-07-26 | https://www.verdict.co.uk/nvidia-q2-fy27-results/ [opened] |
| Data-center revenue, Q2 FY2027 | $89.0B, up 117% year on year and 18% on the quarter | same | same [opened] |
| Split | hyperscale $48.7B; AI clouds, industrial and enterprise $40.3B | same | https://futurumgroup.com/insights/nvidia-q2-fy-2027-ai-infrastructure-demand-extends-into-fy-2028/ [opened] |
| Guidance, Q3 FY2027 | $108B plus or minus 2%, assuming no China data-center compute revenue | reports late Nov 2026 | verdict [opened] |
| Fiscal 2028 | about 70% growth, described as supply-constrained with demand above that | 2026-08-26 | marketbeat [opened] |
| Supply commitments | $279B, up from $119B a quarter earlier, mainly memory | 2026-08 | futurum [opened] |
| Inventory | $32B ahead of the Rubin ramp | 2026-08 | marketbeat [opened] |
| Vera Rubin | production shipments began August 2026; about 20% of Q3 data-center revenue | 2026-08 | marketbeat [opened] |
| Revenue per GW | Hopper about $18B, Blackwell about $25B, Vera Rubin about $40B | 2026-08 | marketbeat [opened] |
| Gross margin | 75% in Q2; guided to bottom at 71-72% in Q4 on memory costs | 2026-08 | futurum [opened] |

Unit shipments (Epoch estimates, not company disclosures; timelines CSV [opened]):

| Period | Units | H100e |
|---|---|---|
| 2023, H100/H200 | 0.89M | 0.89M |
| Q1 2026, Nvidia | 1.34M (0.35M B200, 0.99M B300) | 3.39M |
| Q2 2026, Nvidia | 1.58M (0.22M B200, 1.33M B300, 0.02M H100/H200) | 3.95M |
| Q2 2026, Google TPU | 0.68M | 1.61M |
| Q2 2026, Huawei Ascend | 0.31M (910C and 950PR) | 0.20M |

A B300 counts as 2.53 H100e (3,370,492 / 1,334,041). Unit counts are growing far more slowly than H100e, because each generation counts for more.

### 2.2 TSMC: leading edge and packaging

| Item | Figure | Date | Source |
|---|---|---|---|
| Q3 2026 revenue | $46.72B, up 41% year on year; HPC 68% of revenue | 2026-10-15 | https://thenextweb.com/news/tsmc-q3-2026-record-profit-prudent-2027 [opened] |
| 2026 revenue growth | about 44% in dollars | 2026-10 | same [opened] |
| 2026 capex | $60-64B, unchanged; $40.6B spent January to September | 2026-10 | xenospectrum [opened] |
| 2026-2028 capex | significantly above the prior three years; no 2027 number yet | 2026-10 | same [opened] |
| Supply and demand | demand far exceeds supply; cautious on 2027 only for consumer markets | 2026-10 | thenextweb [opened] |
| 2nm | 8% of wafer revenue in Q3; about 90K wafers per month at end-2026, 110K by mid-2027; capacity to more than double in 2027 | 2026-09 and 2026-10 | https://www.trendforce.com/news/2026-09-14/news-tsmc-reportedly-targets-22-2nm-16-3nm-capacity-boost-by-mid-2027-cowos-to-double-by-2028/ [opened]; xenospectrum [opened] |
| 3nm | 33% of wafer revenue; more than 180K wafers per month at end-2026, 210K by mid-2027 | same | same [opened] |
| CoWoS | about 130K wafers per month at end-2026 (June estimates were 120K-140K [opened]; one older bank estimate was 95K [secondary]), about 260K at end-2028 | 2026-09 | same TrendForce [opened] |
| CoWoS gap | shortfall about 20% in mid-2026, about 10% by end-2026; outsourced packagers add 50-60K | 2026-06-15 | https://www.trendforce.com/news/2026/06/15/news-tsmc-cowos-supply-demand-gap-reportedly-seen-narrowing-from-20-to-10-by-end-2026-as-capacity-expands [opened] |

### 2.3 High-bandwidth memory

- SK hynix Q3 2026 (2026-10-28): revenue KRW 104.6 trillion, operating profit KRW 83.3 trillion, an 80% margin. DRAM prices rose by a high-20s percent in one quarter. DRAM and HBM are effectively sold out through 2029 and the company expects shortage through 2030. Fourteen long-term agreements cover more than half of 2027 and 2028 capacity. 2027 HBM volume and price are already fixed. https://www.trendforce.com/news/?p=65818 [opened]
- HBM shipments, reconstructed by Epoch from TrendForce growth rates: 2.21 billion GB in 2025, 3.75 in 2026 (estimate), 5.81 in 2027 (estimate). That is growth of 1.70x then 1.55x. https://epoch.ai/publications/estimating-the-agent-population [opened]
- All major memory suppliers are booked through 2027 and chip designers receive only 60-70% of what they request. IFP PDF, p. 5 [opened]

### 2.4 Lead times and fabs

| Item | Time | Source |
|---|---|---|
| TSMC Arizona Fab 2 | construction complete, volume production Q3 2027 | xenospectrum [opened] |
| TSMC Japan Fab 2 (3nm) | volume production 2028 | same [opened] |
| New TSMC 3nm fab, Tainan | production H1 2028 | thenextweb [opened] |
| ASML tool orders | customers placing orders for 2029 and 2030 | thenextweb [opened] |
| TSMC Arizona Fab 1 | ground broken 2021, volume production around the turn of 2024-2025, so about 4 years | [memory] |
| Typical fab build | about 2-3 years in Taiwan, 3-5 in the US | [memory]; the CSET "No Permits, No Fabs" summary page did not contain the numbers. https://cset.georgetown.edu/publication/no-permits-no-fabs/ [opened] |

The practical lesson is that capacity for 2029-2030 is being decided by orders placed now. A fab decided in 2027 produces in 2030 or 2031.

### 2.5 Export controls and China's domestic chips

- January 2026: the US Commerce Department permitted case-by-case export of Nvidia's H200 and AMD's MI325X, capped at 75,000 H200s per customer. About 20,000 had shipped by October 2026. Nvidia wrote down about $400M of H200 inventory in July 2026. IFP PDF, p. 21 [opened]
- Chinese firms bought more than 1 million compliant gaming and workstation cards in 2026 for AI use, worth about 344K H100e. Same [opened]
- Smuggling: about 159K H100e in 2024 and 480K in 2025 (Epoch, wide ranges). Suspicious server imports through Malaysia and Singapore fell 82% in 2026. IFP PDF, pp. 23-24 [opened]
- China's binding constraint is memory, not lithography. It had about 270 immersion DUV tools in Q1 2026. Lithography alone would allow about 4M H100e in 2026 and 11M in 2027 under an all-out push, but HBM shortage cuts actual output to about 1M and 1.3M. Only 16% of Huawei's 2026 output uses domestic HBM. IFP PDF, pp. 16-19 [opened]
- Nikkei via TrendForce (2026-02-25): China makes fewer than 20K wafers of 7nm and 5nm-class logic, targets 100K within one to two years, and 500K more by 2030. https://www.trendforce.com/news/2026/02/25/news-china-reportedly-aims-to-boost-7nm-5nm-output-fivefold [opened]

---

## 3. Data centers and power

### 3.1 US data-center electricity

| Source and date | Current | 2030 (or stated year) | URL |
|---|---|---|---|
| LBNL 2024 report (2024-12-19) | 176 TWh in 2023, about 4.4% | 6.7-12.0% by 2028 | https://eta-publications.lbl.gov/publications/united-states-data-center-energy-2025 [opened for the 2028 range]; 176 TWh [secondary] |
| LBNL 2025 update (June 2026) | about 4.5% of US electricity | 649 TWh reference, 521-843 TWh bounds; 11.8% (9.5-15.3%) | same [opened]; https://www.eenews.net/articles/us-data-centers-electricity-use-could-double-by-2030-doe-lab-says/ [opened] |
| IEA, via APPA (2026-07-15) | 183 TWh in 2024, 224 in 2025, 250 in 2026 | 426 TWh | https://www.publicpower.org/node/30665 [secondary: relay, chart sources partly unnamed] |
| EPRI (2026), via Quartz/Yahoo | n/a | 9-17% of US electricity | https://finance.yahoo.com/sectors/technology/articles/ai-data-centers-pass-1-153946550.html [secondary: relay] |
| S&P Global 451 Research, via the same | grid demand 61.8 GW in 2025, 75.8 GW in 2026 | 134.4 GW | same [secondary: relay] |
| Bain (2025-09-23) | n/a | 100 GW of US compute demand, 200 GW world | https://www.bain.com/insights/how-can-we-meet-ais-insatiable-demand-for-compute-power-technology-report-2025/ [opened] |
| EIA STEO (2026-11-10) | US generation up 2.7% in 2026, 1.2% in 2027 | n/a | https://www.eia.gov/outlooks/steo/report/elec_coal_renew.php [opened] |
| PJM load forecast (2026-01-14) | near-term forecast through 2032 revised down from 2025, because only firm large-load commitments now count | n/a | https://www.pjm.com/-/media/DotCom/library/reports-notices/load-forecast/2026-load-report.pdf [opened, pp. 1-6] |

Reading the table: estimates of current use differ by almost a factor of two (about 190 TWh on LBNL's share, 366 TWh implied by S&P's 61.8 GW [secondary]). The 2030 projections span 426 to 843 TWh. LBNL's reference of 649 TWh equals a constant 74 GW (649,000 GWh / 8,760 h). LBNL attributes more than 40% of expected US demand growth over five years to data centers (eenews [opened]).

### 3.2 Gigawatt-scale projects: status in late 2026

| Project | Verified status | Plan | Source |
|---|---|---|---|
| OpenAI Stargate Abilene, TX (Oracle, Crusoe) | 824 MW IT and about 1.02M H100e (Epoch, 2026-11-06). Was about 0.3 GW in April 2026. Buildings 3 and 4 missed a March 2026 target. The 600 MW expansion was cancelled in March 2026. | 1.2 GW facility power in Q4 2026 | https://epoch.ai/data/frontier-data-centers [opened]; https://newsletter.cleanview.co/p/openais-stargate-data-centers-are [opened] |
| Other Stargate US sites | under construction, none operational as of April 2026 | Shackelford TX 2.0 GW, Dona Ana NM 2.2 GW, Milam TX 1.2 GW, Port Washington WI 1.3 GW, Saline MI 1.4 GW, all projected Q4 2028; total above 9 GW by 2029 | https://epoch.ai/blog/openai-stargate-where-the-us-sites-stand [opened] |
| Stargate on-site power | 6.8 GW of own generation planned: more than 670 reciprocating engines at Shackelford (2.58 GW), 2.45 GW of fuel cells in New Mexico, where the state blocked a gas pipeline in March 2026 | n/a | cleanview [opened] |
| OpenAI overall | 1.9 GW at end-2025; target 30 GW by 2030; about 12 GW of Nvidia systems through 2030 | n/a | Epoch gradient update [opened]; https://the-decoder.com/anthropic-reportedly-signs-517-billion-in-compute-deals-after-dario-amodei-warned-rivals-about-reckless-risk/ [opened]; marketbeat [opened] |
| SB Energy Portsmouth, OH | announced; Nvidia guarantees capped at $105B | 4.25 GW, first phase in Nvidia's fiscal 2029 | futurum [opened]; marketbeat [opened] |
| Meta Hyperion, LA | under construction; three gas plants approved, seven more (5.2 GW) awaiting state approval as of March 2026; $27B joint venture with Blue Owl | first phase about January 2028 at about 1.7 GW IT and 3.7M H100e; ten gas plants totalling 7.5 GW | https://fortune.com/2026/03/27/meta-hyperion-10-gas-power-plants-louisiana-entergy/ [opened]; https://epoch.ai/data-insights/frontier-data-center-power [opened] |
| Meta Prometheus, OH | 536K H100e | about 854 MW by January 2027 | Epoch frontier pages [opened] |
| xAI Colossus 2, Memphis | 946 MW IT, 1.11M H100e, $35.8B (imagery of 2026-06-15). Runs on gas turbines sited across the Mississippi line. Used by xAI, Cursor and, from June 2026, Anthropic. | 1.53 GW IT by February 2027, $58B | https://epoch.ai/data/ai-data-centers/directory/colossus-2 [opened] |
| Anthropic and Amazon, New Carlisle, IN | 1,037 MW IT, 818K H100e (October 2026) | about 1.9 GW IT by March 2028 | Epoch frontier pages [opened] |
| Anthropic overall | about 1.4 GW at end-2025; about 5 GW projected for end-2026; at least 14.8 GW contracted since October 2025 in deals reported at up to $517B | about 10 GW by end-2027 | https://cryptobriefing.com/anthropic-10-gw-compute-capacity-2027/ [secondary: relay]; decoder [opened] |
| Microsoft Fairwater Atlanta | 636 MW IT, 769K H100e | n/a | Epoch frontier data centers [opened] |
| Microsoft Fairwater Wisconsin | under construction | about 2.3 GW IT by May 2028 | Epoch power page [opened] |
| Microsoft leases | $364.6B of leases signed but not yet commenced, mainly data centers (2026-09-30) | n/a | https://www.universalassetowners.com/newsroom/hyperscaler-q3-capex-debt-equity-leases/ [secondary: relay of 10-Q] |
| Google Pryor, OK | 637K H100e | n/a | Epoch frontier data centers [opened] |
| Amazon | 2M more Nvidia GPUs to be deployed in 2027-2028 | n/a | verdict [opened] |

Caveat on the table: Epoch's summary page does not say whether each megawatt figure is operational or planned. For Colossus 2 the figure matches the "current" value on its own directory page; I assume the same for the others. Planned flagship capacity by state, from the rows above: Texas 4.4 GW (Abilene, Shackelford, Milam), Ohio 4.25 GW (Portsmouth), Wisconsin 3.6 GW (Port Washington, Fairwater), against Louisiana 5 GW design, New Mexico 2.2, Indiana 1.9, Tennessee 1.5, Michigan 1.4. That is 12.25 of 24.25 GW, about half, in states whose governors-elect pledged pauses or conditions (section 3.7).

Build speed: time from breaking ground to 1 GW has ranged from 1 to 3.6 years; Colossus 2 took under 12 months, Abilene about 2.1 years. https://epoch.ai/data-insights/data-centers-buildout-speeds [opened, 2025-11-10]. The record for single-site power has doubled about every 10 months since mid-2024. Epoch power page [opened, 2026-09-04]

### 3.3 Why power is slow: the time constants

| Item | Lead time or backlog | Date | Source |
|---|---|---|---|
| Grid interconnection | median 61 months from request to operation for 2025 projects; about 2,060 GW in queues; only 13% of 2000-2020 requests were ever built | end-2025 | LBNL "Queued Up 2026", https://emp.lbl.gov/queues [secondary: search summary; the page returned 403] |
| Active generation requests | 1.91 TW across 8,176 requests | 2026-11 | https://www.interconnection.fyi/ [opened] |
| Gas turbines (GE Vernova) | 122 GW under contract (64 GW firm backlog, 58 GW slot reservations), at least 130 GW by year-end; 5 GW shipped in Q3; reservations now being taken for 2032; prices up more than 20% since Q4 2025; data centers about 20% of demand | 2026-10-28 | https://www.turbomachinerymag.com/view/ge-vernova-q3-2026-gas-power-backlog-122-gw-trench-acquisition [opened]; https://www.utilitydive.com/news/ge-vernova-in-9b-deal-to-buy-high-voltage-manufacturer-as-gas-turbine-orde/873223/ [opened] |
| Combined-cycle plants | lead times up to 7 years | 2026-06 | cleanview [opened] |
| Large power transformers | 128 weeks average; 144 weeks for generator step-up units; estimated 30% US shortfall in 2025 | 2026-05 | Yahoo relay of Quartz [secondary: relay] |
| Transmission lines | 5-10 years; US high-voltage construction fell from 1,700 miles a year (2010-2014) to about 180 | 2026-05 | same [secondary: relay] |
| Northern Virginia grid connection | 2 to 7 years | 2026-06 | cleanview [opened] |
| Off-grid solar, battery and gas microgrid | about 2 years | 2024-12 | https://www.offgridai.us/ [opened] |

At 5 GW a quarter, GE Vernova ships about 20 GW of turbines a year worldwide. That is less than the AI sector alone would need if it added 25-40 GW a year, which is why sites are turning to engines, fuel cells, mobile turbines and batteries.

### 3.4 Nuclear

| Plant | Status | Source |
|---|---|---|
| Palisades, MI (805 MW) | Returned to operational licensing status in August 2025. A fuel assembly bent during loading in August 2026 and refuelling stopped. Not generating as of October 2026. | https://en.wikipedia.org/wiki/Palisades_Nuclear_Generating_Station [opened] |
| Crane (Three Mile Island 1), PA (819 MW) | Restart expected 2027; $1B federal loan; all output sold to Microsoft for 20 years | https://en.wikipedia.org/wiki/Crane_Clean_Energy_Center [opened] |
| TerraPower Natrium, Kemmerer, WY (345 MW) | Construction permit 2026-03-04, the first for a non-light-water reactor; construction began April 2026; main contractor left in September 2026. Meta is funding two units for 2032 and has rights to six more by 2035. | https://en.wikipedia.org/wiki/Natrium_reactor [opened] |

Nuclear adds under 2 GW in the US before 2030. It is a 2030s resource.

### 3.5 Solar plus storage

- Ember (2025-06-21): in Las Vegas, 6 GW of panels and 17 GWh of batteries deliver 1 GW for 97% of hours at about $104/MWh, down 22% in a year. https://ember-energy.org/latest-insights/solar-electricity-every-hour-of-every-day-is-here-and-it-changes-everything/ [opened]
- Off-grid microgrids for data centers cost $93-109/MWh against $86 for off-grid gas turbines, with more than 1,200 GW of suitable sites in the US Southwest. offgridai.us [opened, December 2024]
- Lazard's 2026 edition says renewables remain the cheapest unsubsidized new generation, storage costs rose in 2026 after years of decline, and costs are rising across all technologies. https://www.lazard.com/research-insights/levelized-cost-of-energyplus/ [opened; the landing page has no dollar figures]
- US deployment: 31 GW of solar in 2026 and about 40 GW in 2027; wind about 10 GW a year; 13 GW of coal retires by end-2027. EIA STEO [opened]

### 3.6 US versus China

| | China 2025 | US 2025 | Source |
|---|---|---|---|
| Net capacity added | about 540 GW (3.35 TW to 3.89 TW, up 16.1%) | about 63 GW planned, all technologies | https://carboncredits.com/china-adds-power-7x-more-than-the-us-in-2025/ [secondary: relay of NEA and EIA] |
| Solar | about 315 GW (NEA basis); IEA counts nearly 370 GW | 43 GW by IEA's count | same [secondary]; IEA figures from a search summary of https://iea.org/reports/global-energy-review-2026/technology-solar-pv-and-wind [secondary] |
| Wind | about 115-120 GW | about 5 GW | same [secondary] |
| Energy investment | 3.5 trillion yuan, nearly $500B | n/a | carboncredits [secondary] |

China adds roughly eight times as much generating capacity a year as the US. In power, China has the slack the US lacks; in chips, the reverse.

### 3.7 Prices and politics

- Residential price: 17.2 cents/kWh in 2025, 18.2 in 2026 (up about 6%), 18.7 forecast for 2027. EIA STEO, 2026-11-10 [opened]
- PJM: data-center load accounted for $6.5B, or 40%, of the $16.4B cost of the December 2025 capacity auction, per the market monitor. https://www.utilitydive.com/news/customers-should-not-expect-electric-bill-relief-in-2026-the-cake-is-bake/810450/ [opened]. Capacity prices cleared at the cap, about $329/MW-day for 2026/27 and $333 for 2027/28 [secondary: search summary].
- Counter-evidence: an LBNL and Brattle study found real retail prices in 2025 were 3% above 2019 and 6% below 2010, that states with more load growth tended to see lower prices, and that outside PJM customers were largely shielded. Electricity was 1.25% of household spending in 2025. https://www.eei.org/News/news/All/2026LBNLReport [opened; note the publisher is the utility trade group]
- A Dallas Fed working paper estimated data centers raised wholesale prices 6.9% in 2025. https://www.aljazeera.com/economy/2026/11/7/how-the-us-midterm-elections-reflected-resistance-to-data-centres [secondary: relay]
- **Midterms, 2026-11-03.** Voters decided 41 local data-center measures in 10 states and sided against development in all but one. Thirteen Ohio jurisdictions voted on bans and all were passing. Democrats won both chambers of Congress. Governors-elect who campaigned on limits: Texas (moratorium on new approvals), Ohio (conditional moratorium, bring-your-own generation), Georgia (pause by executive order), Wisconsin (pause pending environmental review). New York has had a moratorium of up to a year on projects above 50 MW since July 2026. The outgoing Texas governor had already ordered a halt to new connections pending an audit. Of 34 governors-elect, 32 support stronger regulation and 12 support bans or moratoria. Analysts cited there put up to 45-60% of planned 2028 US capacity at risk of delay, while projects already permitted or under construction are expected to proceed. https://www.renewableenergyworld.com/?p=80798142174 [opened]; https://www.latitudemedia.com/news/how-democrats-midterm-sweep-will-rewire-energy-and-data-center-policy/ [opened]; https://newrepublic.com/post/217485/data-centers-ballot-initiatives-midterms [opened]
- Polling: 75% opposed data centers in their own community (Heatmap, August 2026, via New Republic [secondary: relay]).
- Geography matters. Stargate's Shackelford and Milam sites are in Texas, Port Washington and Fairwater in Wisconsin, Prometheus and Portsmouth in Ohio, Fairwater Atlanta in Georgia, and Saline in Michigan.

---

## 4. Money

### 4.1 Capital expenditure

| Year | Microsoft + Alphabet + Amazon + Meta | Notes | Source |
|---|---|---|---|
| 2022 | about $150B | | [memory] |
| 2023 | about $150B | | [memory] |
| 2024 | about $230B | Q3 plus Q4 2024 alone were $131B [opened] | [memory] for the full year; https://walnutinvest.com/stats/ai-capex-statistics [opened] |
| 2025 | $376B | Microsoft about $83B, Alphabet $91B, Amazon $132B, Meta $70B | walnutinvest, compiled from filings [opened] |
| 2026, January to September | $497B | Q3 alone $201.9B, up 108% year on year | same [opened] |
| 2026 guidance | about $730B | Amazon about $220B, Alphabet $195-205B, Microsoft about $170B, Meta $135-145B (late October 2026) | same [opened] |
| 2027 | no numbers; Alphabet says a significant increase | | same [opened] |

Wider measures: Oracle spent $55.7B in its fiscal 2026 and guides up to about $95B for fiscal 2027 (walnutinvest [opened]). Epoch puts total AI capital spending near $1 trillion annualized in 2026, growing about 70% a year at the hyperscalers (Epoch gradient update [opened]). Expected 2026 hyperscaler capex rose from $296B at the start of 2025 to over $690B by May 2026. https://www.iese.edu/insight/articles/ai-credit-market-debt/ [opened]. AI 2027 had forecast $600B of AI data-center spending in 2026 and $1T in 2027, so spending is about a year ahead of that schedule.

Cost per gigawatt: about $38B per GW of IT power (Epoch trends, 2026-02-05, https://epoch.ai/trends [opened]), or $44B per GW of server power, of which $30B is IT hardware (https://epoch.ai/blog/introducing-the-frontier-data-centers-hub/ [opened]). Colossus 2 at $35.8B for 946 MW fits. A powered shell is typically $9-11B per GW; with on-site gas plants Crusoe's chief executive put it at $19.2B (cleanview [opened]).

### 4.2 How it is financed

| Channel | Evidence | Source |
|---|---|---|
| Operating cash flow | Still the largest source, but no longer sufficient. Q3 2026 free cash flow: Alphabet minus $9.1B, Microsoft plus $18.6B. Trailing twelve months: Amazon minus $42.4B. Oracle's capex is about twice its operating cash flow. | universalassetowners [secondary: relay of filings]; IESE [opened] |
| Bonds | Hyperscaler issuance about $20B a year before 2025, $109B in 2025, $225B in H1 2026 (including related issuers), on pace for $300-400B in 2026. AI-related debt is about 30% of net new US investment-grade supply. | IESE [opened]; https://fortune.com/2026/07/31/ai-debt-hypescalers-capex-capital-spending-hidden-borrowing-bond-issuance/ [opened] |
| Equity | Alphabet sold $12.4B of stock in Q3 2026 and stopped buybacks. Meta launched an equity raise on 2026-10-26 and plans about $60B more. | universalassetowners [secondary: relay] |
| Off-balance-sheet and private credit | Moody's counts $1.2T of off-balance-sheet commitments, over $820B for data centers under construction. Nikkei counts $1.65T of hidden obligations at five firms against $1.35T on balance sheet. Meta's Hyperion vehicle is $27B. | Fortune [opened]; https://www.bis.org/publ/qtrpdf/r_qt2603u.htm [opened] |
| Vendor financing and circular deals | Nvidia has invested nearly $50B in frontier labs, guarantees up to $105B for one Ohio campus, is arranging over $500B of third-party financing, and has extended payment terms (60 days sales outstanding). In 2025 Nvidia signed a letter of intent to invest up to $100B in OpenAI against 10 GW of its systems, and AMD gave OpenAI warrants against 6 GW. | marketbeat [opened]; futurum [opened]; https://www.implicator.ai/openais-trillion-dollar-tab-comes-due-by-2027/ [opened, dated 2025-10-07] |
| Lab fundraising | Frontier labs have raised more than $370B. OpenAI plans about $50B of compute spending in 2026 and reportedly projects about $278B of negative free cash flow for 2026-2030, with cash running out by 2028 absent new funding. | Epoch trends [opened]; Epoch gradient update [opened]; FT via search summary [secondary] |

The Bank for International Settlements calls the off-balance-sheet structures "shadow borrowing" and warns they tie hyperscalers to private credit funds and insurers. BIS [opened]

Macro backdrop in November 2026: reports mention worries about further Federal Reserve rate rises, higher borrowing costs for construction, higher gasoline prices after a war with Iran, and a Nasdaq 11% below its high after the election. thenextweb [opened]; renewableenergyworld [opened]; latitudemedia [opened]

### 4.3 Depreciation

| Company | Stated useful life of servers | Source |
|---|---|---|
| Alphabet | up to 6 years | https://www.cnbc.com/2025/11/14/ai-gpu-depreciation-coreweave-nvidia-michael-burry.html [opened] |
| Microsoft | 2 to 6 years | same [opened] |
| Amazon | cut from 6 to 5 years for a subset of servers in 2025 | same [opened] |
| Oracle, CoreWeave | up to 6 years; 6 years | same [opened] |
| Meta | 5.5 years | [memory] |
| Skeptic's view (Michael Burry) | true economic life is 2 to 3 years | same CNBC [opened] |

Evidence both ways: CoreWeave says 2020-vintage A100s are fully booked and H100s were re-contracted at 95% of the original price, while Nvidia's own annual release cadence shortens competitive life (CNBC [opened]). GPU-hour rental prices rose about 30% in 2026 (Epoch gradient update [opened]), which supports long lives for now.

### 4.4 Revenue needed

Three ways to size it:

1. **Sequoia's rule (2024-06-20):** multiply Nvidia's run-rate by two for total data-center cost and by two again for a 50% end-user gross margin. https://www.sequoiacap.com/article/ais-600b-question/ [opened]. Applied today: Nvidia data-center run-rate of about $400B a year (Q3 guide of $108B a quarter, about 93% data center) times 4 = **about $1.6 trillion a year**.
2. **Bain (2025-09-23):** about $500B a year of capex needs about $2T of annual revenue by 2030, and even optimistic assumptions leave an $800B shortfall. Bain [opened]. Capex is already nearly twice Bain's $500B.
3. **Cost of capital on one year's spending (mine):** take $900B of 2026 capex, 70% equipment written off over 5.5 years and 30% buildings over 25 years. Depreciation = 0.7 x 900 / 5.5 + 0.3 x 900 / 25 = $115B + $11B = $125B a year. An 8% return on $900B = $72B. Total about $200B a year of gross profit for the 2026 vintage alone, which at 50-60% gross margin means $330-400B of revenue a year from that vintage.

Against that: Anthropic's run-rate was about $65-74B and OpenAI's about $40-41B in July 2026, about $115B together. Anthropic went from about $9B at end-2025 to over $30B by April 2026. https://dealroom.co/charts/anthropic-vs-openai-arr [opened]; decoder [opened]. Hyperscaler cloud AI revenue is additional and I did not pin it down.

Epoch's framing of the same gap: using just 20% of the hardware shipped through 2027 for agents at $30 an hour would mean $2.6-5.3T a year of spending, against roughly $1T of developer revenue by end-2027 even at fivefold annual growth. Epoch agent population [opened]. And for the labs to keep growing compute 4x a year once they have absorbed the rest of the market, world capex would have to more than double every year from about $1T in 2027. Epoch gradient update [opened]

---

## 5. Efficiency trends

| Trend | Rate | Period | Source |
|---|---|---|---|
| Hardware price-performance | 1.49x per year, doubling in 1.7 years (1.4-2.3) | since 2023 | https://epoch.ai/trends/compute [opened, updated 2026-02-05] |
| Hardware energy efficiency (FLOP/s per watt) | 1.34x per year, doubling in 2.4 years | since 2008 | same [opened] |
| AI 2027's planning assumption | 1.35-1.4x per year price-performance, 1.26x per year power efficiency | 2025-2027 | AI 2027 compute forecast [opened] |
| Frontier training compute | 5x per year, doubling in 5.2 months | since 2020 | Epoch trends [opened] |
| Frontier training cost | 3.5x per year | since 2020 | same [opened] |
| Algorithmic efficiency (inference) | about 3x per year, after removing hardware and competition effects | 2023-2025 | Gundlach et al., https://arxiv.org/abs/2511.23455 [opened, abstract] |
| Software efficiency in Epoch's GATE model | about 70% per year initial default | model input | https://epoch.ai/gate [opened] |
| Price at fixed benchmark performance | 47% lower per quarter, about 13x per year; about 75x per year just after a level is first reached, 4.7x two years later | since 2023 | https://epoch.ai/publications/the-plunging-price-of-thought [opened, 2026-09-22] |
| Same, MIT estimate | 5-10x per year | | Gundlach et al. [opened, abstract] |
| Cost of running frontier-level models | rising 3-18x per year, because models are larger and reason longer | | same [opened, abstract] |
| GPU rental price | up about 30% during 2026 | 2026 | Epoch gradient update [opened] |

Throughput and energy per token:

- Epoch estimated in October 2025 that OpenAI's inference fleet of about 480K H100e produced about 19 trillion tokens a day. That is 19e12 / 480,000 = 39.6M tokens per H100e per day, or **about 460 tokens per second per H100e** at real-world utilization. GPT-5 was estimated at 100-600 billion FLOP per token. https://epoch.ai/gradient-updates/how-many-digital-workers-could-openai-deploy [opened]
- Fleet-average facility power is 19.6 GW / 15.8M = 1.24 kW per H100e (Epoch frontier data centers [opened]). So energy per token is about 460 x 3,600 / 1.24 = **1.3 million tokens per kWh** for a GPT-5-class model on the 2025-2026 fleet. This is my arithmetic from two Epoch figures and is uncertain by several fold.
- Google measured 0.24 Wh for the median Gemini text prompt in May 2025, down 33x in a year. https://arxiv.org/abs/2508.15734 [opened, abstract]
- For newer hardware, Epoch's Stargate figures imply about 0.45 kW of facility power per H100e (9 GW for 20M H100e). Epoch Stargate [opened]

Net effect: the cost of a fixed level of capability falls about 10x a year. My rough split is 1.5x from hardware and 3x from algorithms, with the remaining factor of 2-3 from competition and shrinking margins; Epoch does not publish a decomposition. The cost of the best available capability does not fall. Both statements are true and guide readers will confuse them.

---

## 6. Machine labor capacity

### 6.1 Published estimates

| Source and date | Estimate | Key assumptions | URL |
|---|---|---|---|
| Davidson (2023), as summarized by others | about 300,000 GPT-4-level instances, rising to millions and tens of millions for later models | about 10 words per second as a human-equivalent rate | https://www.lesswrong.com/posts/CH9mkk6BqASf3uztv/counting-agis [secondary: summary in an opened post] |
| Aschenbrenner, Situational Awareness (June 2024) | about 100 million human-researcher-equivalents by 2027 | tens of millions of A100-equivalent GPUs; fleet output about 1 trillion tokens an hour; a human "thinks" at 100 tokens a minute; half the fleet reserved for experiments | https://situational-awareness.ai/from-agi-to-superintelligence/ [opened] |
| "Counting AGIs" (2024-11-26) | tens of thousands to hundreds of millions at first AGI; 22 million in 2030 on a brain-FLOP basis; 20-750 million in 2030 on a chip basis | spans four methods | LessWrong link above [opened] |
| AI 2027 (April 2025) | leading lab runs 300K-600K research agents at 20-50x human speed in 2027, on about 6% of its compute | 10T-parameter model, in-house chips, 40% utilization | AI 2027 compute forecast [opened] |
| "Compute as People" (2025-06-14) | about 8 million expert work-hours per hour from 4M H100e, under 1% of the world's knowledge workforce | about 0.5 H100-hours per expert human-hour, from METR cost data | https://caseymilkweed.substack.com/p/compute-as-people [opened] |
| Epoch, OpenAI digital workers (2025-10-03) | about 7 million (90% interval 0.4M to 300M) for OpenAI alone | 480K H100e for inference; 19 trillion tokens a day; 0.8-8M tokens per human workday on METR-style tasks | Epoch digital workers [opened] |
| **Epoch, agent population (2026-10-02)** | hardware shipped through 2026: **16-56M concurrent agents, or 67-240M full-time equivalents**. Through 2027: **33-171M concurrent, or 140-720M FTE**. With an efficient open-weight model: about 1.9B concurrent agents. | counts HBM, not H100e; $30 per agent-hour; $5 per GB300-hour; price 5-10x serving cost, so 0.83-1.67 sessions per GB300; agents work 168 hours a week, 4.2x a human; assumes all hardware is deployed and devoted to agents | Epoch agent population [opened] |

For scale, the US has about 100 million knowledge workers (cited in a relay of the Epoch paper, https://fourweekmba.com/ai-epoch-ai-chips-by-2027-could-supply-140-720m-workers-hours/ [secondary]) and the world labor force is about 3.6 billion (Epoch GATE default [opened]).

### 6.2 My transparent calculation from tokens

Inputs: 460 tokens per second per H100e (section 5); 0.8-8M tokens per human workday on tasks the model can do (Epoch, METR-based); 50% of the stock serving inference (OpenAI's share was 44% in 2025).

- Per chip: 39.6M tokens a day / (0.8M to 8M) = **5 to 50 human workdays per H100e per day**.
- Mid-2026 stock of 31.6M H100e: 15.8M x 5 to 15.8M x 50 = **about 80 million to 800 million workday-equivalents a day**.
- End-2026 stock of 50M: about 125 million to 1.2 billion.

This is higher than Epoch's 2026 figure because it uses a 2025 model and 2025 token budgets. Agents in 2026 use far more tokens per hour (Epoch observes $16-50 of API spend per agent-hour). The two methods agree on the order of magnitude: **hardware in place by end-2026 could, if fully deployed on agent work, supply somewhere between tens of millions and several hundred million full-time-equivalent workers, on the tasks current models can actually do.** The last clause carries most of the uncertainty.

### 6.3 Extrapolation to 2030 (mine)

- Hardware: 250-600M H100e at end-2030 (section 1.5), which is 5-12x end-2026.
- If compute per agent stays constant because agents keep moving to larger models: 5-12x Epoch's 2026 range gives roughly 80M-670M concurrent frontier agents, or 0.3-2.8 billion FTE.
- If instead the task mix is held at 2026-frontier quality and algorithmic efficiency improves 3x a year for four years (81x): 1.3-54 billion concurrent agents on paper, well beyond the human workforce.
- Neither number is a forecast of employment effects. They say that by 2030 hardware is unlikely to be what stops machine cognitive labor from matching the human workforce in raw quantity. Capability, demand, power for the top end of the range, and physical embodiment are the open questions.

### 6.4 Brain-compute comparison

- Carlsmith (Open Philanthropy, September 2020) judged it more likely than not that 1e15 FLOP/s is enough to match the brain's task performance given the right software, with a plausible range of 1e13 to 1e17 and under 10% probability that more than 1e21 is needed. https://forum.effectivealtruism.org/posts/nGQJEYp5X2pCbeweg/new-report-on-how-much-computational-power-it-takes-to-match [secondary: search summary; the report page returned 403]
- One H100 delivers about 1e15 FP16 FLOP/s at peak (AI 2027 [opened]) or about 2e15 8-bit operations per second (Colossus 2: 2.20e21 / 1.112M, Epoch [opened]). So **one H100e is about one Carlsmith-median brain** at full utilization.
- Stock in brain-equivalents: 31.6M at mid-2026 and about 50M at end-2026 at the median; 0.3-0.5M at 1e17; 3-5 billion at 1e13.
- Epoch's cross-check: OpenAI's 1e25 FLOP a day of inference divided by 1e15 FLOP/s is about 100,000 brain-equivalents, some 500x fewer than its token-based 7 million. Token-based methods imply current models do human-level tasks with far less compute than the brain-median figure. Epoch digital workers [opened]

**Cost per brain-equivalent hour.** Epoch assumes $5.00 per GB300-hour. A B300 is 2.53 H100e, so about **$2.00 per H100e-hour**, which is $2 per hour for 1e15 FLOP/s. Across Carlsmith's range that is $0.02 (at 1e13) to $200 (at 1e17). At 40% utilization the median becomes $5. If price-performance keeps improving 1.49x a year, the median is about $0.40 by 2030 ($2 / 1.49^4).

**Cost per agent-hour.** Market price about $30 (Codex $16-18, Claude Code $24-50); serving cost about $3-6. Epoch agent population [opened]

### 6.5 Energy: human versus GPU

| Quantity | Value | Basis |
|---|---|---|
| Human metabolic power | 97 W | 2,000 kcal a day x 4,184 J / 86,400 s (arithmetic) |
| Human brain | about 20 W | standard figure, used in Carlsmith's limit method [memory] |
| US primary energy per person | 9.2 kW | 94.5 quadrillion Btu in 2025 (35.9 quads of petroleum at 38%) = 3.16 TW, over 342M people. https://www.eia.gov/energyexplained/us-energy-facts/ [opened for the petroleum figures]; population [memory] |
| US primary energy per hour worked | about 94 kWh | 3.16 TW x 8,760 h / (163M workers x 1,800 h); employment and hours [memory] |
| Facility power per H100e, current fleet | 1.24 kW | 19.6 GW / 15.8M (Epoch) |
| Facility power per H100e, 2027-2028 sites | about 0.45 kW | 9 GW / 20M (Epoch Stargate) |
| Electricity per frontier agent-hour | 1.7-3.4 kWh | a B300 draws about 1.4 kW (Epoch: 2.5e8 W for the 454,944 H100e of B300s sold in Q4 2025, which is about 180K chips [opened]), doubled for facility overhead per Epoch's rule, divided by 0.83-1.67 sessions |

Readings:

- Per brain-equivalent of computation, a GPU uses about 60x the power of a brain today (1,240 W against 20 W) and about 13x the power of a whole resting body. On 2027-2028 hardware the ratios are about 22x and 5x.
- Per hour of work delivered, the comparison reverses once the human's support system is counted. A US work-hour is backed by about 94 kWh of primary energy across the whole economy. A frontier agent-hour uses 1.7-3.4 kWh of electricity, perhaps 4-9 kWh of primary energy. The machine worker is roughly 10-20x less energy-intensive than the embodied American worker, before counting the energy to build the chips.
- At $0.07/kWh, electricity for one H100e-hour costs about 9 cents against a $2 rental. Energy is about 4% of the cost of machine cognition.

---

## 7. Physical limits on a larger machine economy

### 7.1 Electricity is cheap for AI but slow to get

A 1 GW IT site costs about $38B. Written off over five years that is $7.6B a year. Its electricity, at $70/MWh and 8,760 hours, is $0.6B a year, about 7% of the total. Even at $300/MWh for rental generators (offgridai [opened]) electricity would be $2.6B, a third of hardware depreciation. This is why developers pay for engines, fuel cells and mobile turbines, and why energy price will not restrain AI. Time and permission will.

### 7.2 Land and solar potential

- One gigawatt of near-continuous solar needs about 6 GW of panels and 17 GWh of batteries (Ember [opened]). At 0.35 MW of panels per acre for fixed-tilt plants [memory: LBNL land-use study], that is about 17,000 acres or 69 square km per GW.
- 100 GW would take about 6,900 square km, under 0.1% of the contiguous US (7.65M square km [memory]).
- Suitable private land in the US Southwest could host more than 1,200 GW of such microgrids (offgridai [opened]).
- Upper bound: Earth receives about 2e17 W of sunlight; 5% of it would run about 1e14 human-efficiency robots (Forethought [opened]).
- Land and sunlight do not bind in this decade. Panels, batteries, transformers, labor and permits do.

### 7.3 Materials

| Material | Requirement and supply | Status |
|---|---|---|
| Copper | Data centers use roughly 27 tonnes per MW, so 100 GW needs about 2.7 Mt, against world mine output of about 23 Mt a year. S&P Global projected a multi-million-tonne world shortfall by 2040 with data-center demand rising from about 1.1 Mt to 2.5 Mt a year. Grid and generation copper is additional. | [memory]; the S&P and USGS pages returned 403 |
| Copper wire, cable, switchgear | prices up more than 11% in a year and about 60% since 2020 | Utility Dive, 2026-01-30 [opened] |
| Mine lead times | about 16-18 years on average from discovery to production, longer in the US | [memory: S&P Global] |
| Lithium, rare earths | Needed for batteries and robot motors more than for chips. Refining is concentrated in China. | [memory: IEA]; the IEA pages returned 403 |
| Steel, cement | World output of about 1.9 Gt and 4 Gt a year dwarfs data-center needs | [memory] |
| Water | 0.26 mL per median Gemini prompt (Google [opened, abstract]). Local stress is real and political: Corpus Christi's reservoir fell to 8% in 2026 (Al Jazeera [opened]). Developers are pledging closed-loop cooling. | |

Materials do not bind the AI data-center build through 2030. They would bind a 2030s economy that tried to double its physical capital every year or two, because mines are the slowest link in the chain.

### 7.4 Time constants

| Asset | Time to build | Source |
|---|---|---|
| AI data center to 1 GW | 1-3.6 years | Epoch [opened] |
| Off-grid solar and battery microgrid | about 2 years | offgridai [opened] |
| Gas engines | about 1 year | offgridai [opened] |
| Gas turbine delivery | 5-7 years at today's backlog | Utility Dive, cleanview [opened] |
| Large transformer | about 2.5 years | Yahoo relay [secondary] |
| Grid interconnection | about 5 years median | LBNL [secondary] |
| Transmission line | 5-10 years | Yahoo relay [secondary] |
| Leading-edge fab | 3-5 years | xenospectrum [opened]; [memory] |
| Nuclear restart | 4+ years so far (Palisades was announced in 2023 and is not yet generating) | Wikipedia [opened] |
| New reactor design | permit in 2026, first power around 2030-2032 | Wikipedia [opened] |
| Mine | 16+ years | [memory] |

### 7.5 How fast has industrial capital ever grown?

| Episode | Rate | Source |
|---|---|---|
| US real GDP, 1941-1943 | 17.7%, 18.9%, 17.0%; then 7.9%, then contraction | https://fred.stlouisfed.org/data/A191RL1A225NBEA.txt [opened] |
| China real GDP, peak years | 14.3% (1992), 13.9% (1993), 14.2% (2007) | https://en.wikipedia.org/wiki/Historical_GDP_of_China [opened] |
| China generating capacity, 2025 | up 16.1% in one year | carboncredits [secondary] |
| World robot stock | last doubling took 6 years | Forethought, citing IFR [opened] |
| World AI compute stock | 5.3x, 4.2x, 3.0x, 2.6x a year (2023 to mid-2026) | section 1 |
| US generating capacity | about 60 GW a year on a base of about 1.3 TW, under 5% | carboncredits [secondary]; AI 2027 for the base [opened] |

No large economy has sustained more than about 15-19% a year, and the wartime case lasted three years and drew on idle capacity. A single sector can grow far faster while it is small: AI compute has roughly tripled each year for four years.

### 7.6 Theoretical estimates of self-replicating industry

- Forethought, "The Industrial Explosion" (Davidson and Hadshar, 2025-05-21): three phases. AI-directed human labor gives a one-time gain of about 10x in physical output. Autonomous robot factories start with a doubling time of about a year: US manufacturing produces $2.6T a year from $5.4T of capital, a two-year self-reproduction time, halved by AI-run operations. A humanoid costing about $100K and producing about $240K a year pays back in 5 months in an idealized case, 1-2 years with factory costs. Doubling times shorten as production scales and are bounded below by biology at days to weeks. The authors call the note rough, and their appendix says real-world doubling may be a few years. https://www.forethought.org/research/the-industrial-explosion [opened]
- Epoch's GATE model assumes steep adjustment costs for compute expansion and warns its quantitative outputs are unreliable and ignore robotics bottlenecks. https://epoch.ai/gate [opened]
- NASA's 1980 self-replicating lunar factory study proposed a seed of roughly 100 tonnes replicating in about a year. [memory; the reference page returned 404]

### 7.7 The strongest skeptical arguments

1. **Many small bottlenecks.** Matt Clancy gives explosive growth a 10-20% chance: robot bodies, raw materials, crop and trial durations, licensing, and human-preferred services each slow the whole. A 100-million-fold rise in AI compute over a decade has not yet moved the growth rate. https://asteriskmag.com/issues/03/the-great-inflection-a-debate-about-ai-and-explosive-growth [opened, June 2023]
2. **Diffusion is slow.** Narayanan and Kapoor argue impact takes decades: electrification took about 40 years to show in productivity; safety-critical adoption is slow; benchmark gains overstate real utility; 40% of US adults had used generative AI by August 2024 but it was 0.5-3.5% of work hours. https://knightcolumbia.org/content/ai-as-normal-technology [opened, 2025-04-15]
3. **Weak-link growth.** If output needs many complementary inputs, growth is set by the slowest-improving one, and automated sectors shrink as a share of spending (Aghion, Jones and Jones, 2017). [memory]
4. **The self-replication estimates are not engineering.** They divide output by capital. They assume mines, grids, permits and construction scale with the robots. The observed robot-stock doubling time is 6 years, and the slowest items in section 7.4 take 5-16 years.
5. **Consent.** The November 2026 votes show the public will slow physical build-out when it sees costs and no benefit. Explosive physical growth needs many more sites than AI data centers do.
6. **The response from the other side** (Besiroglu): investors target bottlenecks, experiments can run in parallel, and a resource only binds if it is vital, hard to substitute and cannot be scaled about tenfold. Asterisk [opened]

---

## 8. Which constraint binds first, year by year

This is my judgment. Confidence falls with distance.

| Year | Binds first | Next | Evidence and reasoning |
|---|---|---|---|
| 2026 | **Chips: memory, then packaging and leading-edge wafers** | Energized sites in the US | Nvidia says supply limits growth and its supply commitments more than doubled in a quarter, mainly for memory. Designers get 60-70% of the memory they ask for. CoWoS is 10-20% short. GPU rental prices rose 30%. Abilene and Palisades are late. Demand does not bind: Anthropic's revenue rose about sevenfold in seven months and labs are renting from rivals. Capital does not bind yet, though free cash flow is negative at two of four hyperscalers. |
| 2027 | **Power and permitted sites in the US** | Memory; first test of capital | Rubin raises compute per chip about 3.5x, so H100e supply could more than double (77-125M added) while the world must find roughly 25-50 GW to house it (at 0.3-0.45 kW per H100e). Turbines are sold out. State pauses begin in January in Texas, Ohio, Georgia and Wisconsin. Memory stays short (booked through 2027). Capex must pass $1T. OpenAI needs new money before 2028. |
| 2028 | **Capital and demand, jointly with US power** | Regulation | About 12 GW of flagship capacity is scheduled to arrive during 2028 (five Stargate sites totalling 8.1 GW in Q4, Hyperion phase one at 1.7 GW, Fairwater Wisconsin at 2.3 GW), several in states with new limits. Revenue must be on course for $1T or more to keep debt markets open. CoWoS reaches about 260K wafers a month and the packaging constraint eases. Memory is still tight per SK hynix. |
| 2029 | **Capital and demand** if AI revenue is under about $1T; otherwise **power** | Chips | Fork year. Bust path: capex falls, chips and power are in surplus, and the constraint becomes the willingness of customers to pay. Boom path: every new gigawatt is behind-the-meter gas, fuel cells, or solar with batteries, and fabs ordered in 2026-2027 arrive. |
| 2030 | **Generation and grid** on the boom path | Fabs and lithography tools | US data centers reach 520-840 TWh. Turbines ordered in 2026 are only now delivered. Transmission begun in 2025 is not finished. World AI power of 100-200 GW caps the stock at about 250-600M H100e. |
| 2031-2032 | **Power, shifting to chips** | Regulation | Turbine deliveries for 2031-2032 slots, first new reactors, and large solar-plus-storage fleets relieve power. Whether chip capacity keeps pace depends on fab decisions made in 2027-2029. Memory shortage is supposed to end after 2030. |
| 2033-2034 | **General industrial capital**: construction, grid equipment, robots | Materials | If AI can do most cognitive work, the limit moves to how fast factories, power plants and robots can be built. Historical ceiling about 15-19% a year for an economy; theoretical robot-economy doubling of 1-2 years is unproven. |
| 2035-2036 | **Materials and consent** | Energy at national scale | Copper and other mined inputs have 16-year lead times, so supply in 2035 reflects mines started by about 2020. Permitting and public consent govern how much land, water and grid a machine economy may take. |

Across the whole period, **cognitive labor quantity is not the scarce thing**. Hardware in place by 2027 already supports hundreds of millions of worker-equivalents on tasks models can do.

### Range of expert views

| View | Who | Source |
|---|---|---|
| Component supply, especially memory, limits growth through 2027 and beyond | Nvidia (supply-constrained into fiscal 2028), SK hynix (short through 2030), TSMC (demand far above supply), IFP | marketbeat, TrendForce, thenextweb, IFP [all opened] |
| Power binds first, then chip manufacturing | Epoch (2024); Bain (grid power takes four years or more) | Epoch scaling report [opened]; Bain [opened] |
| Chip packaging and memory set the pace through 2027 (1.65x a year), then wafers (1.25x a year); 60 GW of AI power by 2027 is achievable | AI 2027 | AI 2027 compute forecast [opened] |
| Money binds: revenue cannot fund the build | Bain ($800B shortfall), Sequoia, Burry on depreciation, BIS on shadow borrowing | Bain, Sequoia, CNBC, BIS [all opened] |
| Capital can keep doubling only until labs absorb the rest of the market, about 2.5 to 5 years | Epoch | Epoch gradient update [opened] |
| Demand and diffusion bind: adoption takes decades | Narayanan and Kapoor; Clancy | [opened] |
| Regulation and local consent now bind US siting | election analysts; Goldman Sachs figure of 45% of planned capacity at risk | renewableenergyworld [secondary: relay] |
| Power is a siting problem, solvable in about two years off-grid | off-grid solar study authors; Ember | [opened] |

---

## What I could not verify

- **Searches ran out.** The shared search budget ended after about 30 queries. Everything marked `[memory]` needs checking: 2022-2024 hyperscaler capex totals, Meta's 5.5-year server life, copper intensity and the S&P copper study, mine lead times, rare-earth concentration, fab build times, solar land density, US employment and hours, and the B300's power draw.
- **Nvidia's Q3 fiscal 2027 results** are due later in November 2026. Only guidance ($108B) is available.
- **Primary transcripts.** Nvidia, TSMC and SK hynix figures come from trade-press reports of the calls, not the filings.
- **Epoch's company-level ownership table** (the 67-71% hyperscaler share) and its import explorer were read only through secondary write-ups.
- **End-2026 stock.** Epoch's sales trend gives 44-48M; TrendForce production via IFP implies up to 65M. I could not reconcile them. The difference is probably Rubin's high H100e rating and the lag between production and sale.
- **Current US data-center electricity use.** Sources range from about 190 TWh to 366 TWh. I could not open the LBNL 2025 update's baseline tables, the IEA reports (403) or the S&P study (403).
- **LBNL "Queued Up 2026".** The PDF was too large to fetch and the landing page was blocked; figures are from a search summary.
- **PJM auction prices and the data-center load forecast** in megawatts: I opened only the first six pages of the PJM report.
- **Rubin rack power and tokens per megawatt.** I found no primary benchmark. The page at inferencex.semianalysis.com that I reached described itself as an unaffiliated copy and showed no numbers.
- **Tokens per second for 2026 frontier models.** The 460 tokens per second figure is for GPT-5 in 2025.
- **Lead time for GPUs themselves.** Not found.
- **Status since mid-2026** of the Louisiana approval for Hyperion's seven extra gas plants, the Colossus turbine litigation, and how much of Abilene is running beyond Epoch's November estimate.
- **Carlsmith's and Davidson's original reports** returned 403 or 404; figures come from a search summary and from other posts that cite them.
- **OpenAI's finances** ($278B cumulative burn, cash to 2028) are from a search summary of FT reporting.
- **Hyperscaler AI revenue**, as distinct from lab revenue, was not pinned down, so the revenue gap in section 4.4 is overstated by an unknown amount.
- **Election effects** are a week old. Pledged moratoria are not yet law, and vote counts were still partial in the reports I read.

---

## What cuts against the obvious story

1. **"Power is the bottleneck" is half right.** The companies that sell the parts say memory and packaging limit world supply through 2027 or later, and rental prices for GPUs rose in 2026. Power limits where and when chips can be switched on in the US. Both hold at once, at different levels.
2. **Energy cost is nearly irrelevant to AI economics.** Electricity is about 7% of a data center's annual cost and about 4% of the cost of an H100e-hour. Arguments that expensive energy will cap AI are wrong on the arithmetic. Arguments about time-to-power and consent are right.
3. **Per unit of work, machines use less energy than people, not more.** A GPU uses 13-60x the power of a body or brain per brain-equivalent of computation, but a frontier agent-hour uses perhaps a tenth to a twentieth of the primary energy that stands behind an American work-hour.
4. **The bill-shock narrative is weaker in the data than at the ballot box.** Real retail prices in 2025 were 3% above 2019 and below 2010, and outside PJM load growth has gone with lower prices. Voters sided against data centers anyway in all but one of 41 measures. Politics can bind before physics or prices do.
5. **Load forecasts are inflated by speculative requests.** PJM cut its near-term forecast in 2026 by counting only firm commitments, and only 13% of past interconnection requests were built. Projections of 2030 demand differ by 2x.
6. **Growth is decelerating, and also beating forecasts.** Stock growth fell from 5.3x to 2.6x a year. Yet end-2026 stock and spending are both ahead of the AI 2027 schedule, and a mainstream supply forecast has 125M H100e produced in 2027 alone.
7. **H100e flatters the trend.** A Rubin GPU counts as 8.8 H100s on 8-bit arithmetic but 6.6 on memory bandwidth, which is what limits much inference (IFP footnote 29 [opened]). Nvidia's unit shipments rose only about 18% from Q1 to Q2 2026 (1.34M to 1.58M, Epoch estimates). Memory-based counts, as in Epoch's agent paper, give slower growth in usable labor than H100e does.
8. **Most compute is not frontier machine labor.** The five leading labs use under half of world compute. Much of the rest runs recommendation systems and cloud workloads.
9. **Falling prices and rising costs coexist.** A fixed capability gets about 13x cheaper a year. The cost of running the best models rises 3-18x a year, and hardware rental got dearer in 2026. "Intelligence too cheap to meter" describes last year's model.
10. **Hardware already exceeds use.** Hardware shipped through 2026 could support 67-240M FTE of agents, and through 2027 up to 720M, yet a late-2026 poll found 26% of employed US adults used a paid AI service for work in a given week (Epoch/Ipsos via fourweekmba [secondary]). Capability, reliability and adoption are the present limits on substitution. More chips would not change that.
11. **The capital constraint may arrive before any physical one.** Negative free cash flow, $225B of bonds in six months, $1.2T off balance sheet, vendor guarantees, equity raises at Alphabet and Meta, and rising rates are the pattern of a build that needs revenue soon. A revenue requirement of $1.6-2T a year compares with about $115B at the two leading labs.
12. **China's limit is memory, not lithography, and its power is abundant.** With HBM, China could make 4-8x more AI chips on tools it already owns, and it adds eight times the generating capacity of the US each year. Export controls on memory matter more than is commonly assumed.
13. **Off-grid solar and storage is real but unused at scale.** It could deliver gigawatts in about two years at $93-109/MWh, yet the flagship sites chose gas. Developers value certainty and density over cost and speed on paper, or the two-year claim has not been tested.
14. **Historical ceilings and the AI sector point in opposite directions.** No economy has sustained more than about 19% a year. AI compute has tripled yearly for four years. Which precedent governs a robot-built economy is the central unknown, and the theoretical one-year doubling estimates rest on dividing output by capital.
