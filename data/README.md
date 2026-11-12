# Data

Public data series used in the figures and the text. Each file is stored as
downloaded from FRED (Federal Reserve Bank of St. Louis) on 12 November 2026.

| File | Series | Original source |
| --- | --- | --- |
| `fred/UNRATE.csv` | US unemployment rate, monthly, seasonally adjusted | BLS. https://fred.stlouisfed.org/series/UNRATE |
| `fred/LNS12300060.csv` | Employment-population ratio, ages 25 to 54, monthly | BLS. https://fred.stlouisfed.org/series/LNS12300060 |
| `fred/CIVPART.csv` | Labor force participation rate, monthly | BLS. https://fred.stlouisfed.org/series/CIVPART |
| `fred/PRS85006173.csv` | Nonfarm business sector: labor share, index 2017 = 100, quarterly | BLS. https://fred.stlouisfed.org/series/PRS85006173 |
| `fred/WFRBST01134.csv` | Share of net worth held by the top 1% of households, quarterly | Federal Reserve, Distributional Financial Accounts |
| `fred/WFRBSN09161.csv` | Share of net worth held by the 90th to 99th percentiles | same |
| `fred/WFRBSN40188.csv` | Share of net worth held by the 50th to 90th percentiles | same |
| `fred/WFRBSB50215.csv` | Share of net worth held by the bottom 50% | same |
| `fred/WFRBST01122.csv` | Share of corporate equities and mutual fund shares held by the top 1% | same |
| `fred/WFRBSN09149.csv` | Share of corporate equities and mutual fund shares held by the 90th to 99th percentiles | same |
| `fred/WFRBSN40176.csv` | Share of corporate equities and mutual fund shares held by the 50th to 90th percentiles | same |
| `fred/WFRBSB50203.csv` | Share of corporate equities and mutual fund shares held by the bottom 50% | same |
| `fred/BOGZ1FL192090005Q.csv` | Households and nonprofit organizations: net worth, millions of dollars, quarterly | Federal Reserve, Financial Accounts of the United States (Z.1) |
| `fred/CMDEBT.csv` | Households and nonprofit organizations: debt securities and loans, millions of dollars, quarterly | same |
| `fred/HHMSDODNS.csv` | Households and nonprofit organizations: one-to-four-family residential mortgages, millions of dollars, quarterly | same |

Each series has a page at `https://fred.stlouisfed.org/series/<name>`.

The labor-share series is an index. The figures scale it so that its latest
value equals the level BLS published for the third quarter of 2026, 53.0 percent
(see `research/05-us-baseline.md`).

Smaller tables that were transcribed from published sources (horse numbers, farm
labor shares, benchmark results and so on) are kept next to the figure scripts
in `models/`, with their sources named in the script and in the research notes.
