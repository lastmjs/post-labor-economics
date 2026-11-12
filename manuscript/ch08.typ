#import "template.typ": *

= What people can still be paid for <ch-residual>

The wage ceiling of @ch-wages applies wherever a machine is a substitute for a person. There is one kind of work to which it does not apply even under the full premise, and this chapter measures how much that exception is worth.

Recall how the horse survived (@ch-history). When it stopped being the cheapest way to pull a plow, it did not disappear. It became something that people with income chose to keep. Human work has the same refuge, and it is a larger one, because people want things from other people that they never wanted from horses.

== Where the buyer wants a person

#definition([Human-required work])[
  Work is human-required when the buyer's purpose is not served by a machine however capable the machine is, either because a human being is part of what the buyer wants, or because a rule demands that a human being do it.
] <d-human-required>

It helps to sort this work by the reason a person is required. Other writers have drawn up similar lists, and they largely agree.

- *Presence.* Some services are valued because another person is there: much of the care of small children and the old, the work of clergy, coaches and mentors, hospitality at its best, companionship. A machine may do every task involved and still not be what was wanted.
- *Contest and performance.* People want to watch people. Computers have played chess better than any human since 1997, and human chess is as popular as it has ever been; almost nobody watches computers play each other. The same holds for sport, live music and theater.
- *Provenance.* Some goods are valued for where they came from: a handmade table, a painting by a known artist, a letter someone wrote themselves. The machine-made version may be better in every measurable respect and still be a different product.
- *Accountability.* Some roles exist so that a person answers for a decision: the judge, the juror, the elected official, the company director, the engineer who signs the drawing. We want someone who can be blamed, sued, dismissed or voted out.
- *Legal reservation.* The law reserves some work for licensed people: prescribing drugs, arguing in court, flying passengers. This lasts as long as the law does.
- *Status.* Human service can be bought as a display of wealth precisely because it is unnecessary: the butler, the tailor, the concierge. The economist Thorstein Veblen described the pattern in 1899.

These are real, and under the premise they are what is left. Wages will not be zero. The question is whether this work can do what the labor market does today, which is to give most households most of their income.

== The arithmetic of human-required work

Under the premise, work that a machine can do is paid the machine price. Wages above that are paid only for human-required work. That gives a simple identity.

#proposition([The wage share is set by the appetite for human-required work], from: [@d-premise, @p-identity, @p-share-zero, @d-human-required])[
  In a post-labor economy, the share of national income paid as wages is, to a close approximation, the share of all spending that buyers choose, or are obliged by law, to direct to work done by people. Call that share _h_. Total pay is _h_ times total output.
] <p-residual-share>

Everything now depends on _h_, and nobody knows it. It is a fact about what people will want in a world that does not exist yet. The honest course is to show what different values would mean and then say where the evidence points.

#figure(
  datatable(
    columns: (1.5fr, 1fr, 1fr, 1fr, 1fr),
    align: (left, right, right, right, right),
    header: ([Share of spending on human-required work (_h_)], [Economy the size of today's], [Twice the size], [Five times], [Ten times]),
    [2 percent], [4%], [8%], [20%], [39%],
    [5 percent], [10%], [20%], [49%], [98%],
    [10 percent], [20%], [39%], [98%], [196%],
    [20 percent], [39%], [78%], [196%], [392%],
  ),
  caption: [Total pay for human-required work, as a percentage of everything American employers pay their workers today, for different values of _h_ and different sizes of the economy. Today about 51 percent of all income is paid to employees, a wider measure than the business-sector share used in @ch-economy.],
) <tab-h>

The table makes two things plain. In an economy the size of today's, even a generous _h_ supports a fraction of today's pay. And in an economy several times larger, a modest _h_ supports as much total pay as now. So paid work does not have to wither in absolute terms. Whether it can still be the way _most people_ make a living is a different question, which the next section takes up.

What does the evidence say about _h_? It points both ways.

On one side, wherever a machine has offered roughly the same result at a lower price, most buyers have taken it most of the time. People said they valued the bank teller and then used the cash machine. They valued the travel agent, the shop assistant and the local newspaper, and then used the website. Recorded sound put thousands of theater musicians out of work within a few years of reaching the cinemas.

On the other side, a good deal of human service has survived cheap substitutes for decades. Free recordings did not end the paid concert. Online courses did not empty the schools. Index funds did not end the financial adviser, nor listing websites the estate agent, nor exercise videos the personal trainer. People still pay a large premium to eat food cooked and served by other people. In each of these the human being turned out to be part of what was being bought.

There is also the law. Health care, education, the legal system and government together employ roughly a third of American workers, and they are the parts of the economy where work is most often reserved for licensed people and where a named person must answer for what is done. Much of that reservation would survive the arrival of capable machines for a long time, because the people it protects are numerous and organized.

History offers a further check. In societies where a small class held most of the income, one of the largest occupations was usually service to that class. In the United States in 1870, one worker in thirteen was a domestic servant, and as late as 1900 the country had more servants than construction workers @lebergott-1966. In Britain, a more unequal society, domestic service was by the usual account the largest single occupation at the census of 1901. That is what an economy does with people when the main source of demand for their work is the households of the rich. It employs them in large numbers and at low pay, because many compete for the places.

#hypothesis([The appetite for human-required work is real and limited])[
  Under the premise, between a twentieth and a quarter of all spending will go to work that buyers want from a person or that the law reserves for one. That is far below the half or so of income that is paid for work today. _My confidence that the share falls in this range: about two in three. I think a higher share more likely than a lower one in the first decades, while laws that reserve work for people remain in force. If the share is higher than this range, paid work for people survives on a larger scale than this guide expects, and @p-residual matters more._
] <h-residual>

== Who gets the work

Suppose _h_ is a tenth and the economy has doubled. Total pay for human-required work is then about two fifths of today's total pay. How is it shared out?

#proposition([Human-required work mirrors the distribution of income], from: [@p-residual-share, @p-ownership, @h-residual])[
  The pay for human-required work is set by how much those with income choose to spend on it, divided among everyone who seeks such work. It flows from whoever has income to whoever is chosen. If income is concentrated, nearly everyone without property has to seek this work, the same spending is divided among more of them, and pay is low for all but the most sought-after and the legally protected. If income is widely spread, fewer people need the work, people buy human services from one another, and pay can be respectable. In both cases the distribution of other income comes first, and the wages follow from it.
] <p-residual>

These are two very different societies, and it is worth picturing each.

In the first, the owners of the machine economy are the only people with much to spend. Around them grows an economy of attendants: household staff, private tutors, security, entertainers, craftspeople, companions. A few performers and personalities with a mass audience become very rich, since one star can serve millions. Those who hold a license or an office are comfortable for as long as the law protects them. Everyone else competes for the remaining places.

In the second, every household has an income from some other source, and people spend part of it on each other. One person coaches the neighborhood children at football and pays another to teach her the cello. There are more musicians, more small restaurants where the owner cooks, more teachers with five pupils. None of this is necessary in the sense that machines could not do it. People do it because they value doing it and value having it done by someone they know. This is a real economy, with prices and earnings, sitting on top of the machine economy, and it could be a good one. But notice that it exists only _because_ incomes were already spread. It is a result of the answer to the distribution question and cannot be the answer.

There is one argument for a larger _h_ in the long run, and it comes from the same principle as everything else in this guide. As machine-made things become very cheap, the share of spending that goes to them tends to fall and the share going to scarce things tends to rise. This is Baumol's pattern again (@a-complements). In a society many times richer than ours, where every manufactured thing costs almost nothing, a large part of spending might go to the two things that remain scarce: land and people. The bottom right of @tab-h is that world. It is possible. It also lies well beyond the ten-year horizon of Part IV, and it is still governed by @p-residual: the spending has to come from people who already have incomes.

== Owning and wanting

One last candidate for "what people still do" is often put forward: people will be the entrepreneurs and the directors, deciding what the machines should make.

Under the full premise this does not survive as work. Running a company, spotting an opportunity and allocating capital are tasks, and the premise is that machines can do tasks. What remains, after the tasks are subtracted, is a position. An owner is the one on whose behalf the machines act and to whom the proceeds are paid. A customer is the one whose wants production serves. A citizen is the one whose voice counts in setting the rules. These are roles a person holds because of what they own, what income they have and what rights they hold. They are the three ways in which people differ from horses, listed at the end of @ch-history, and they are positions of entitlement. They cannot be earned by effort after the fact. Whether most people hold them, and how securely, is the question the rest of this guide turns on.

== A note on purpose

This guide is about economics, and I will not pretend to settle what people would do with lives that did not need to be spent working. But one piece of evidence bears on the forecasts that follow.

Studies of life satisfaction find, fairly consistently, that people who lose their jobs become much less happy, by more than the loss of income explains, and that they do not fully adapt @lucas-2004. People who retire on a secure pension do not show the same effect. The difference seems to lie in whether the absence of work is chosen, respected and financially secure, or imposed, stigmatized and precarious. That suggests the damage is done less by the absence of work than by the terms on which it is absent. It also suggests, as a matter of political prediction, that societies will fight hard to keep "jobs" in existence long after the work is needed, because a job is how people currently receive not only income but standing. This will matter in Part IV.

#checkpoint[
  - Under the premise, wages above the machine price are paid only where a person is wanted as a person or required by law (@d-human-required).
  - Labor's share of income is then the share of spending that goes to such work (@p-residual-share). My estimate is between a twentieth and a quarter (@h-residual), against about half today.
  - In a much larger economy that could still be a great deal of money. Who receives it depends on who has income to spend (@p-residual). With concentrated income it is an economy of servants, stars and license-holders. With broad income it is an economy of people doing things for one another.
  - So Part II ends with a problem and no solution inside the market. Production is abundant; the channel that connected most people to it has narrowed to a remnant; what is left of paid work depends on a distribution of income that has to come from somewhere else. Where it comes from is a question of power.
]
