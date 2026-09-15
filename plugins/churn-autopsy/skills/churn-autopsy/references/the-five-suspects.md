# The five suspects

Every churn case is tried against these five, in this order. The order runs from the
thing owners look at least (who they sold to) to the thing they look at most (how it
felt). Trying them in this order is what stops the familiar suspect from being convicted
before the others are questioned.

For each suspect: what it means, what it looks like in the ledger, the one number that
confirms or kills it, and the tell that the owner is weighting it wrongly.

## 1. Selection: who was sold to

**Meaning.** The customer was never going to stay, because of who they were and what
they came for. A buyer who came for one job leaves when the job is done. A buyer who
came through a marketplace compares every month. A buyer whose budget was borrowed leaves
when the loan does.

**In the ledger.** The source column and the paid for column, read together. Rows from
the same source leaving at the same age. Stated reasons like "going in house", "project
over", "found cheaper".

**The number.** Days from start to stopped, grouped by source. If one source leaves at a
different age from the others, selection is in the room.

**The tell.** The owner talks only about what happened after the sale. Ask where each row
came from and what it was told before it paid.

## 2. Promise: what was said against what the money could buy

**Meaning.** The sale set an expectation that the price could not meet. Not lying;
usually optimism written into a proposal. The customer measures the first month against
the promise, not against the market.

**In the ledger.** The promised column against the price and paid for columns. A promise
of results with a budget that cannot produce them by day 30. Stated reasons like "no
results", "not what we discussed".

**The number.** Delivered at 30 days divided by promised, per row. If most rows sit well
under one, the promise is the suspect, whatever the delivery team did.

**The tell.** The owner says "the results were actually fine". Fine against what? Against
the promise in the proposal, or against what the budget could buy? Those are two numbers.

## 3. Delivery: what was delivered against what was promised

**Meaning.** The promise was fair and the work fell short of it. Late starts, missed
targets, work not done. This is the suspect owners call "quality".

**In the ledger.** Delivered at 30, 60 and 90 days against promised, for rows where the
promise was achievable. Stated reasons that name a specific miss.

**The number.** Rows where delivery was below promise and the promise was within what
the price could buy. Delivery only counts where promise does not already explain the row.

**The tell.** The owner blames the team. Check the promise column first; a team asked
for the impossible did not fail at delivery.

## 4. Experience: how it felt to be a customer

**Meaning.** CX and UX together. Response times, reporting, onboarding, the dashboard,
surprises on the invoice, a different person every week. The customer got what was
promised and still felt uncared for or confused.

**In the ledger.** The last contact column and who started it. Stated reasons in the
customer's words about communication, reports, confusion, waiting. Rows that left right
after a first report, a first invoice, a handover.

**The number.** Rows whose stated reason names an experience, plus rows that stopped
within a few days of a specific touchpoint. Count both, report them separately.

**The tell.** The owner is sure it is "the dashboard" or "the report". Check how many
rows ever saw one before they left. A customer who stopped on day 12 was not confused by
a report sent on day 30.

## 5. Economics: what they paid against what it costs to serve them

**Meaning.** The fee does not pay for the promise, so the business cuts corners, and the
customer meets the corner. Junior staff, fewer hours, slower replies. The customer
experiences it as delivery or experience, but the cause is the price.

**In the ledger.** The price column against what the promise needs in hours or spend.
Rows where the fee is small next to what the customer is spending elsewhere; rows where
the business could not have afforded to do the job well.

**The number.** Hours the promise needs, times the cost of an hour, against the fee. If
the fee is below that line for most rows, economics is a cause even when no customer
names it.

**The tell.** No customer mentions price, so the owner rules it out. Economics rarely
appears in a stated reason. It appears in every other column.

## Reading the count

- A suspect explains a row when a cell in that row supports it. Name the cell.
- Two suspects can explain the same row. Promise and economics often do, because a fee
  too small to deliver the promise is one mechanism with two names. Say so.
- A rule of thumb, labelled as one: uneven churn points at delivery and experience,
  because customers tolerate those differently. Even churn, close to everyone leaving,
  points at what everyone shared: selection, promise, economics. Look there first. The
  count decides.
