#import "template.typ": *

= What an economy is <ch-economy>

An economy is a way of answering two questions: what gets made, and who gets it. Money, firms, jobs, banks and markets are machinery for answering those two questions. The premise of this guide, machines that can do all the work, makes the first question easier than it has ever been and throws the second one wide open.

To see why, we need a handful of facts about how the machinery works. This chapter sets out five axioms and draws three propositions from them. None of them is controversial among economists. The work lies in keeping all of them in view at once, because the argument of the later chapters is nothing more than these facts applied to a new situation.

== Wants, production and ownership

#axiom([People want more than exists])[
  At a price of zero, people would take more food, housing, medical care, travel, security and free time than can be supplied. Because wants exceed supply, every society needs some rule that decides who gets what.
] <a-scarcity>

Particular wants can be satisfied. Nobody wants a tenth meal in a day. But total wants have never been satisfied in any society on record. People who have enough food want better housing; people with good housing want health, schooling, travel and standing among their neighbors. Some wants cannot be satisfied for everyone even in principle, because they are about rank: the best plot of land, the most admired school, the front row. This matters later, because it means that no amount of production makes the question of distribution go away.

#axiom([Everything is made from four kinds of input])[
  Every good and service is produced by combining:
  - *work*: human time, effort and skill;
  - *tools*: machines, buildings, vehicles and software, which are things made in order to make other things, and which economists call capital;
  - *nature*: land, energy and raw materials;
  - *knowledge*: the recipes for combining the other three.
] <a-production>

The four inputs differ in one way that will turn out to decide almost everything. Tools can be manufactured: if more are wanted, more can be built. Knowledge, once found, can be used by everyone at once without running out. Nature is fixed in quantity or expands slowly. And work has been limited by the number of people and the hours in their days. An economy can double its stock of machines in a decade. It cannot double its stock of adults.

#axiom([Every input has an owner])[
  In a market economy, each input belongs to someone who decides how it is used and collects what it earns. A person's work belongs to that person. Nobody can be made to hand over what they own, except to the state through taxes.
] <a-ownership>

#definition([Income])[
  A person's income is their claim on what the economy produces. In a market economy a claim can arise in only three ways: by *selling work* (wages), by *owning* something that earns a return (profits, interest, rent, royalties), or by *receiving a transfer* from someone who has a claim (family, charity or the state).
] <d-income>

There is no fourth way. Every scheme discussed in this guide, from a universal basic income to a public wealth fund to a law that reserves certain jobs for humans, works through one of these three channels.

#proposition([All output is somebody's income], from: [@a-production, @a-ownership])[
  Every dollar of output is paid to the owner of some input that helped produce it. The total income of a country therefore equals its total output, and the question "who gets the output?" is the same question as "who owns the inputs that production uses, and what is each input paid?"
] <p-identity>

Follow the money from a single sale. A buyer pays \$30,000 for a car. The carmaker pays some of it to its workers, some to its lenders, and some to suppliers of steel, glass and electricity; it keeps the remainder as profit, which belongs to its shareholders. Each supplier does the same with its part. Trace every branch to the end and the whole \$30,000 has landed in someone's pocket as a wage, as interest, as rent or as profit, with the government taking a share along the way. Nothing is left over, and nothing is paid out that was not first earned by a sale. National statistics are built on this fact: gross domestic product and gross domestic income are two measurements of the same number.

This identity will do a great deal of work in @ch-distribution. It means, for example, that wages cannot fall across an economy without the same dollars showing up as somebody else's income, so long as output itself does not fall.

== What a price is

#axiom([Nobody pays more than they must])[
  A buyer who can get the same result in two ways takes the cheaper one. A firm that can have a task done by either of two methods of equal quality uses the method that costs less; a firm that does not is undersold by a competitor that does.
] <a-substitution>

#proposition([An input is paid for its scarcity, not its importance], from: [@a-substitution])[
  The price of an input can never be more than the cost of the cheapest substitute that does the same job. Where there is no substitute, competition among buyers pushes the price up to the value of what one more unit of the input adds. In both cases, what sets the price is how hard it is to get one more unit, not how much the input matters in total.
] <p-price>

This is the old puzzle of water and diamonds. Water is necessary for life and costs almost nothing. Diamonds are ornaments and cost a great deal. The puzzle dissolves once you notice that a price attaches to one more unit, not to the whole supply. One more gallon of water is easy to get; one more diamond is not.

Apply the same reasoning to work. A wage is the price of an hour of someone's work. It is high when what that hour adds cannot be had more cheaply in any other way, and it is low when it can. A wage is not a measure of effort, of merit or of how much the worker needs the money, and it is not a measure of how important the work is. Home health aides do work on which lives depend and are among the lowest-paid workers in the United States, because many people are able and willing to do that work. *A wage is a price, and it is governed by what governs every other price.* Keep hold of this sentence. Most confusion about automation comes from letting go of it.

== How most people get their share

#axiom([Most people own little except their capacity to work])[
  In the United States the less wealthy half of households owns 2.3 percent of all household wealth, and most of that is the house they live in. The wealthiest tenth owns 69 percent of all wealth and 88 percent of all shares in companies. For a typical household, wages and the benefits that depend on wages are the main source of income for the whole of working life @fed-dfa-2026.
] <a-labor-only>

#proposition([The wage system is the distribution system], from: [@d-income, @p-identity, @a-labor-only])[
  Because most people own little except their work, most people's claim on output is their wage. The labor market is therefore doing two jobs at once. It is a *pricing* system, which tells firms where human work is worth using. And it is the *distribution* system, which decides how much of the output most households can buy.
] <p-wage-system>

The second job goes deeper than paychecks. In the United States most of the safety net is itself built on wages. Social Security and Medicare are financed by a tax on payrolls, and their benefits are earned through years of covered work. Unemployment insurance pays in proportion to past wages. About half the population gets health insurance through an employer. Mortgages are granted against expected wages. Even the federal government's own income rests mainly on work: taxes on wages and salaries supply most of its revenue @treasury-mts-2026.

The two jobs of the labor market have gone together for so long that they look like one thing. They are two. One is a matter of engineering and cost: is a person the cheapest way to get this task done? The other is a matter of how people live. For two hundred years the answer to the first has been "yes, for a great many tasks," and so the second took care of itself. The rest of this guide asks what happens when the answer to the first question becomes "no."

#checkpoint[
  - Output and income are the same total (@p-identity). Whoever owns the inputs that production needs receives the output.
  - Any input, human work included, is paid according to how hard it is to replace at the margin, and never more than its cheapest substitute costs (@p-price).
  - Most people own only their work (@a-labor-only), so the wage is how most people receive their share (@p-wage-system).
  - It follows that anything that makes human work easy to replace is a threat to distribution, even if it is a gift to production. To judge that threat we first have to understand why two centuries of machines did not carry it out.
]
