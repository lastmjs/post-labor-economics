"""Figure: two inputs that machines replaced. Farm workers moved on; horses did not."""
import style

# Horses and mules on US farms, thousands, 1 January. Historical Statistics of the
# United States (1975), series K 570-573, as transcribed in research/06-history.md.
HORSES = {
    1900: 20004, 1901: 21145, 1902: 21232, 1903: 21474, 1904: 21796, 1905: 22077, 1906: 22486, 1908: 23393,
    1909: 23816, 1910: 24211, 1911: 24847, 1912: 25277, 1913: 25691, 1914: 26178, 1915: 26493, 1916: 26534,
    1917: 26659, 1918: 26723, 1919: 26490, 1920: 25742, 1921: 25137, 1922: 24588, 1923: 24018, 1924: 23285,
    1925: 22569, 1926: 21986, 1927: 21192, 1928: 20448, 1929: 19744, 1930: 19124, 1931: 18468, 1932: 17812,
    1933: 17337, 1934: 16997, 1935: 16683, 1936: 16226, 1937: 15802, 1938: 15245, 1939: 14792, 1940: 14478,
    1941: 14104, 1942: 13655, 1943: 13231, 1944: 12613, 1945: 11950, 1946: 11108, 1947: 10129, 1948: 9279,
    1949: 8498, 1950: 7781, 1951: 7036, 1952: 6150, 1953: 5403, 1954: 4791, 1955: 4309, 1956: 3958, 1957: 3632,
    1958: 3415, 1959: 3189, 1960: 3089,
}
# Farm share of the US labour force, percent. Lebergott (1966) to 1960; USDA ERS for 1970 and 2000.
FARM = {
    1800: 73.7, 1810: 80.9, 1820: 78.8, 1830: 68.8, 1840: 63.1, 1850: 54.8, 1860: 52.9, 1870: 52.5, 1880: 51.3,
    1890: 42.7, 1900: 40.2, 1910: 31.4, 1920: 25.9, 1930: 21.6, 1940: 17.0, 1950: 12.0, 1960: 8.1, 1970: 4.0,
    2000: 1.9,
}

fig, (left, right) = style.figure(height=2.9, ncols=2, gridspec_kw={"wspace": 0.28})

years, values = list(FARM), list(FARM.values())
left.fill_between(years, 0, values, color=style.BLUE, alpha=0.10, lw=0)
left.plot(years, values, color=style.BLUE)
left.set_title("People: farm work as a share of all US work, %")
left.set_ylim(0, 90)
left.set_xlim(1800, 2006)
left.set_xticks([1800, 1850, 1900, 1950, 2000])
style.end_label(left, 2000, 1.9, "1.9% in 2000", style.BLUE, dy=22, dx=-50)
left.annotate("74% in 1800", (1800, 73.7), xytext=(34, 18), textcoords="offset points", fontsize=7.5, color=style.SOFT)

years, values = list(HORSES), [v / 1000 for v in HORSES.values()]
right.fill_between(years, 0, values, color=style.ORANGE, alpha=0.10, lw=0)
right.plot(years, values, color=style.ORANGE)
right.set_title("Horses and mules on US farms, millions")
right.set_ylim(0, 32)
right.set_xlim(1900, 1962)
right.set_xticks([1900, 1920, 1940, 1960])
right.plot([1918], [26.723], marker="o", ms=4.5, color=style.ORANGE, mec=style.SURFACE, mew=1.2, zorder=5)
right.annotate("Peak: 26.7 million in 1918", (1918, 26.723), xytext=(8, 6), textcoords="offset points", fontsize=7.5,
               color=style.SOFT)
style.end_label(right, 1960, 3.089, "3.1 million in 1960", style.ORANGE, dy=-9, dx=-84)

fig.subplots_adjust(left=0.055, right=0.985, top=0.88, bottom=0.10)
style.save(fig, "two_inputs", tight=False)
