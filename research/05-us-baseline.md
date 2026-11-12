# 05. The structure of the US economy: who earns, who owns, what the state collects

This note is shorter than the others and was compiled differently. The research
agent assigned to it did not deliver, so the lead author assembled it directly
from primary sources on 12 November 2026. Every series marked `[file]` is stored
in `data/fred/` exactly as downloaded, and the numbers below can be recomputed
from those files. Items marked `[opened]` were read on the publisher's own page
that day. Items marked `[memory]` are the author's recollection of a published
paper that was not re-opened, and should be checked before being relied on.

## 1. Work and pay

| Fact | Value | Date | Source |
|---|---|---|---|
| Unemployment rate | 4.1% | Oct 2026 | BLS via FRED `UNRATE` [file] |
| Employment rate, ages 25 to 54 | 80.7% | Oct 2026 | FRED `LNS12300060` [file] |
| Labor force participation | 61.9% | Oct 2026 | FRED `CIVPART` [file] |
| Payroll employment change | +165,000 | Oct 2026 | BLS Employment Situation [opened] |
| Long-term unemployed, share of unemployed | 27.6% | Oct 2026 | BLS Employment Situation [opened] |
| Labor share, nonfarm business | 53.0% | Q3 2026 | BLS; FRED index `PRS85006173` [file] |
| Mean hourly wage, all occupations | $33.54 | May 2025 | BLS OEWS [opened] |
| Employer cost per hour, private industry | about $47 | June 2026 | BLS ECEC [opened] |
| Poverty guideline, one person | $15,960 a year | 2026 | HHS [opened] |

Notes.

- **Labor share.** FRED carries the series as an index (2017 = 100). The guide
  scales the index so that its latest value, 93.729 in Q3 2026, equals the level
  BLS published for that quarter, 53.0 percent. On that scaling the share ranged
  between 60.4 and 66.2 percent from 1947 to 1999, with a mean of 62.9, and the
  Q3 2026 value is the lowest in the series. The fall begins around 2000.
- **Poverty line per hour.** $15,960 divided by a full-time year of 2,080 hours
  is $7.67. The guide uses this as a deliberately low figure for what a person
  needs to live on.

## 2. Three kinds of work

The scenario model divides US employment into three kinds.

| Kind | Share of jobs | Share of wages | Basis |
|---|---|---|---|
| Screen-based | 37% | 46% | Dingel and Neiman (2020): jobs that can be done entirely at home [memory] |
| Physical | 42% (65.1 million jobs) | 29% ($3.19 trillion) | Nine mainly physical occupation groups in BLS OEWS, May 2025; see note 04 |
| In-person | 21% | 25% | The remainder |

- Dingel and Neiman, "How Many Jobs Can Be Done at Home?", Journal of Public
  Economics 189 (2020). Their headline result is that 37 percent of US jobs can
  be done entirely at home and that those jobs account for 46 percent of wages.
  The paper classifies occupations by whether the work can be done **at home**.
  The guide treats that as a measure of work done **at a computer**. The two are
  close and are not the same: some home-workable jobs are mostly telephone work,
  and some computer work has to be done on site. The figures are quoted from
  memory of the published paper.
- The three shares add to 100 percent by construction. The in-person remainder
  therefore absorbs any error in the other two.

## 3. Who owns what

Federal Reserve, Distributional Financial Accounts, 2026 Q2 [file].

| Group of households | Share of net worth | Share of corporate equities and mutual fund shares |
|---|---|---|
| Top 1% | 32.5% | 50.9% |
| 90th to 99th percentile | 36.4% | 37.2% |
| 50th to 90th percentile | 28.8% | 11.4% |
| Bottom 50% | 2.3% | 0.6% |

FRED series: `WFRBST01134`, `WFRBSN09161`, `WFRBSN40188`, `WFRBSB50215` (net
worth) and `WFRBST01122`, `WFRBSN09149`, `WFRBSN40176`, `WFRBSB50203` (equities).

- The top tenth holds 68.9 percent of net worth and 88.1 percent of equities.
- The same shares in 1989 Q3, the first quarter in the series: top 1 percent
  22.8 percent of net worth and 42.8 percent of equities; bottom half 3.5 and
  1.1 percent.
- Household and nonprofit net worth: $185.65 trillion, 2026 Q2 (FRED
  `BOGZ1FL192090005Q`, in millions) [file].
- Household debt: $21.4 trillion, of which home mortgages $14.0 trillion, 2026 Q2
  (FRED `CMDEBT`, `HHMSDODNS`) [file]. These debts are serviced mostly out of
  wages, which is why chapter 7 treats a fast fall in wage income as a threat to
  lenders as well as to borrowers.

## 4. What the federal government collects

Monthly Treasury Statement, fiscal year 2026 [opened].

| Source | Amount | Share of receipts |
|---|---|---|
| Individual income taxes | $2.85 trillion | 53% |
| Payroll taxes (social insurance) | $1.81 trillion | 34% |
| Corporate income taxes | $381 billion | 7% |
| Customs duties | $173 billion | 3% |
| All other | about $0.19 trillion | 3% |
| Total receipts | $5.40 trillion | 100% |

- Outlays were $7.40 trillion and the deficit $1.99 trillion.
- Individual income taxes are not all taxes on wages: they include tax on
  capital gains, dividends, interest and business income. Payroll taxes are
  levied on wages alone. The guide's statement that "taxes on wages and salaries
  supply most of federal revenue" rests on payroll taxes plus the wage part of
  the income tax, which together are well over half.
- Acemoglu, Manera and Restrepo, "Does the US Tax Code Favor Automation?",
  Brookings Papers on Economic Activity, Spring 2020, 231-300. Brookings'
  summary of the paper: effective taxes on labor "stand above 28.5 percent",
  and the effective rate on capital invested in equipment and software "has
  declined to about 5 percent"; removing the bias would raise employment by 6.5
  percent
  (https://www.brookings.edu/articles/does-the-u-s-tax-code-favor-automation/
  [opened]).

## 5. Social Security and Medicare

2026 Trustees Reports [opened, summary page].

| Fund | Projected depletion |
|---|---|
| Old-Age and Survivors Insurance (retirement) | fourth quarter of 2032 |
| Hospital Insurance (Medicare Part A) | second quarter of 2033 |
| Combined OASDI (a hypothetical merger of the retirement and disability funds) | third quarter of 2034 |

These projections assume employment and wages on roughly their recent trends.
Both funds are financed mainly by the payroll tax, so anything that lowers the
wage bill brings the dates forward.

## 6. A cost yardstick for universal payments

- About 270 million US adults (author's round figure from Census estimates
  [memory]).
- $1,000 a month to each is $3.24 trillion a year: 9.8 percent of a $33.0
  trillion economy and 60 percent of fiscal 2026 federal receipts.
- A fund paying $12,000 a year per adult at a 4 percent payout needs $81
  trillion, which is 44 percent of household net worth.

## 7. Recessions and routine jobs

- Jaimovich and Siu, "The Trend is the Cycle: Job Polarization and Jobless
  Recoveries" (NBER working paper 18334, 2012; later in the Review of Economics
  and Statistics). Finding as the guide uses it: almost all of the long-run
  loss of routine jobs in the United States occurred during recessions, and in
  the recessions of 1990-91, 2001 and 2007-09 those jobs did not return in the
  recovery [memory].
- Frequency of recessions. The NBER dates twelve US recessions from 1948 to
  2020, about one every six years. If recessions arrived at that average rate
  independently of one another, the chance of at least one beginning in a given
  three-year window would be a little under 40 percent. Since 1982 there have been four
  (1990, 2001, 2007, 2020), which gives about 25 percent on the same arithmetic
  [author's calculation from the NBER chronology, quoted from memory].

## What this note does not cover

It has no original work on consumption patterns, on the industry composition of
output, or on state and local budgets, all of which the missing agent was asked
for. Where the guide touches those subjects it relies on notes 03, 07 and 08, or
says that the figure is the author's estimate.
