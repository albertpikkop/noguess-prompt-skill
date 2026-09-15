---
name: churn-autopsy
description: >-
  Find why customers leave before deciding how to keep them: build a ledger of every
  customer who left from the person's own data, score the five suspects (selection,
  promise, delivery, experience, economics) against that ledger, and rank the causes by
  how many customers each one explains. Use whenever someone says "clients keep
  leaving", "100% churn", "customers do not come back", "retention is bad", "nobody
  renews", "hamare clients ruk nahi rahe", "clients chhod ke ja rahe hain", "is it our
  quality or our UX", "help me find the root cause of churn", or asks for a retention
  plan, a loyalty offer, a win-back campaign or a discount before the cause is known.
  Also use when an owner arrives already certain of the cause ("it is the dashboard",
  "the team is slow", "our reports are confusing"). Stand down when the ask is a prompt
  (noguess owns it), a plan for a business with no customers yet (business-blueprint
  owns it), or a fix to one named thing one customer complained about.
---

# Churn Autopsy

## What this makes

Two files in the person's own folder, in this order, never the other way round:

```text
CHURN-LEDGER.md    one row per customer who left, from the data. Every silent cell is [PENDING]
CHURN-AUTOPSY.md   NOTES, FACTS, FINDINGS: the five suspects scored, causes ranked by count,
                   the owner's own theory with its count, one experiment, the next gaps
```

Speak in plain words, short sentences. Answer in the language the person wrote in; the
file headings, the suspect names and [PENDING] stay in English. No em-dashes in text you
write.

## The one law: no cause before the ledger

An owner who asks why customers leave already has an answer in mind. Quality. The team.
The dashboard. An agent that agrees with it is a mirror, and a mirror is what they had
before they asked. The customers who left are the evidence, one row each, and a cause
counts only when it explains most of those rows. So the ledger comes first, every time,
even when the person asks for the fix, the offer or the campaign in their first message.

Why the order matters: a fix chosen before the count is a bet on one story. If the story
is wrong, the fix costs money and the customers keep leaving, and the owner concludes
that nothing works. If the story is right, the count would have shown it in an hour.

## Stand down

- The ask is a prompt for another AI ("TCE this", "write the brief"): noguess owns it.
- The business has no customers yet: business-blueprint owns it. There is nothing to count.
- One customer complained about one named thing and the ask is to fix that thing: fix it.
- A `CHURN-AUTOPSY.md` already exists and the ask is to act on its top cause: act on it;
  do not rerun the autopsy on the same data.

Nothing here is permission. This skill reads data and writes two files in the person's
folder. It sends nothing to any customer, creates no account and costs nothing.

## The folder decides, not the order

Read the folder before you decide anything. A person may arrive with a sheet, a CRM
export, a half-written list, a WhatsApp screenshot, or only a feeling.

| In the folder | What it means | What you do |
|---|---|---|
| nothing, only what they typed | a feeling, no bodies yet | Stage 0 and Stage 2: define churn, name the three columns you need, hand them the exit questions. Rank nothing |
| a sheet, an export, a list | the bodies are here | Stage 0, then build the ledger from it, then the rest |
| `CHURN-LEDGER.md` | the bodies are already counted | continue from it; never rebuild it from scratch |
| `CHURN-AUTOPSY.md` | causes already ranked | act on it, or update it when new answers arrive |
| `BUSINESS-TRUTH.md` | the facts every skill in this kit reads | read it first; take the offer, the price and the customer from it, never re-ask |

Four rules, the same in every skill in this kit:

1. **Never re-ask what a file already answers.** Read first, then ask at most three
   things, and only about what is missing.
2. **Do the thing they asked.** If they ask for the retention plan, say in one line why
   the ledger comes first and what it risks to skip it, then build the ledger, and give
   them what the ledger supports. Never a refusal with no next move. One line means one
   line: the count is the argument, and a page explaining why you will not guess is
   itself a way of not doing the work.
3. **One skill answers.** Whichever skill owns the thing they actually asked for runs
   the conversation.
4. **Facts live in one file.** `BUSINESS-TRUTH.md` holds what is true about the
   business. The ledger holds the customers. Never a second copy of either.

## Stage 0: what counts as a body

Before counting, write one line at the top of the ledger that says what "left" means for
this business, in the person's words: stopped paying the monthly fee; did not renew at
the end of the term; cancelled; went silent for 30 days. If they have not said, ask this
one thing before anything else. Without it, "100% churn" and "40% churn" are the same
word meaning different things, and the whole count is built on sand.

Also write the window: which customers are in scope (the last 90 days, this year, all
time). The person's number ("100%") is kept exactly as they said it, and the ledger says
in one line whether the rows support it.

## Stage 1: the ledger

Fill `assets/LEDGER-TEMPLATE.md` and write `CHURN-LEDGER.md`. One row per customer who
left, in the scope. The columns, and why each one is there:

| Column | Why it is there |
|---|---|
| id or name | as the person supplies it; an id is enough, never add details they did not give |
| source | where the customer came from. The channel is the first suspect |
| start | when they began paying |
| promised | what was said to win them, in the words used to sell |
| price | what they paid the business |
| paid for | what the money was meant to buy (spend managed, sessions, seats, units) |
| delivered at 30, 60, 90 days | a number each, or [PENDING]. This is where promise meets reality |
| last contact, and who started it | silence has a direction |
| stopped | the date they left, by the Stage 0 definition |
| stated reason | the customer's words, or [PENDING] |
| suspected reason | the owner's words, labelled as the owner's |

Rules that keep the ledger honest:

- Every cell comes from the data or the person. A silent cell is [PENDING], never a
  guess. A ledger with visible holes is worth more than a ledger with invisible ones.
- Keep their words. Do not translate "no results" into "unmet expectations".
- No row is skipped because it is awkward, old or incomplete. If there are more rows than
  can be done in one pass, do them all in passes; if the person says sample, write
  "sample, N of M" at the top so nobody mistakes it for the whole.
- Compute days from start to stopped for every row that has both dates. Where customers
  leave is often the loudest fact in the sheet.
- Every number you derive (days, a ratio, a median, a total, a cost per lead) appears with
  the cells and the arithmetic it came from, the first time it appears, so the owner can
  recompute it on paper. Recompute each one once before writing FINDINGS. A derived number
  that cannot be traced back to cells is [PENDING], not a number. When you say "X times",
  name both ends of the comparison, and compare like with like: the best result against
  the best promise, the median against the median, never the top of one range against the
  bottom of the other.
- The owner's theory goes in the suspected column, per row, labelled as theirs. It is
  data about the owner, not about the customer.

Show the ledger and say one line: this is who left, and this is what the data does and
does not say about each of them. Then continue; the ledger is not a place to stop.

## Stage 2: the exit interviews

Read `references/exit-interview.md`. Five questions, sent by the owner to the customers
who left, on the channel those customers used, and pasted back verbatim. The agent drafts
the questions and never sends anything. Interviews are the only way to fill the stated
reason column for the rows where it is [PENDING], and the ranking says how many rows are
waiting on them. Give the questions in the first answer even when the sheet is rich; a
count with no words behind it is a count that will be argued with.

## Stage 3: the five suspects

Read `references/the-five-suspects.md`. Every churn case is tried against the same five,
in the same order, so the one the owner is not looking at cannot be skipped:

1. **Selection**: who was sold to. Where they came from and what they came for.
2. **Promise**: what was said to win them against what the money could actually buy.
3. **Delivery**: what was delivered against what was promised, by day 30, 60 and 90.
4. **Experience**: how it felt to be a customer. Response times, reporting, onboarding,
   surprises, the dashboard. CX and UX live here, together.
5. **Economics**: what they paid against what it costs to serve them properly. A fee that
   cannot pay for the promise produces corners cut, and the customer feels the corner.

Score each suspect against each row: explains it, does not, or [PENDING], and name the
cell it rests on. A suspect with no cell behind it is an opinion.

A rule of thumb, labelled as one: quality and experience problems lose some customers,
because some customers tolerate more than others. When every customer leaves, look first
at what every customer shares: the channel they came from, the promise they were made,
and the price. Total churn is usually structural. This is a place to look first, not a
conclusion; the count decides.

## Stage 4: the ranking, and the counting rule

Rank the suspects by how many rows each explains. That is the whole method:

- One row is an anecdote. List it under "seen once", never in the ranking.
- Ties are ties. Say so.
- If [PENDING] cells could change the order, say which cells and rank "as far as the
  data goes". Never resolve a tie by guessing what the empty cells would say.
- The cause the owner named is reported with its count, in one plain line, whether it
  came first or last. "The dashboard explains 2 of 8. Five of the 8 left before they
  ever saw a report." No softening, no scolding.
- A suspect can explain a row together with another; say so. Two causes with the same
  rows are one mechanism with two names.

## Stage 5: the autopsy file

Write `CHURN-AUTOPSY.md` in the NHA shape, because the input was messy and the output
must stay checkable:

```text
NOTES:    what the sheet, the statement and the interviews actually say, kept as they came
FACTS:    only what the notes prove, one per line, each pointing at the row it came from.
          Anything the notes do not prove is [PENDING: what would prove it]
FINDINGS: the five suspects with counts, ranked; the owner's theory with its count;
          one experiment for the top cause, with the one number to measure in 30 days
          and the value that would mean the cause is real; the three [PENDING] cells
          worth closing next, and which interview answer closes each
```

What the autopsy does not contain: a retention plan, a pricing change, a loyalty offer, a
win-back message, a hire, a tool, an agency. Those are the next task, owned by the
person, after the count. If they insist, write the one experiment for the top cause only,
and say why the rest waits.

## What "no magic bullet" means here

The tells, and the answer to each:

- The owner names the cause in the first message. Answer with its count against the rows.
- A single fix is proposed before the ledger exists. Answer with the ledger.
- An industry benchmark appears ("agencies average 15% churn"). Answer: no outside
  number without a named source, and even with one it is context, not a cause.
- A norm appears without a number ("that is normal for an account this size", "typical
  for the industry"). It is the same benchmark in plain clothes, and it usually turns up
  in the sentence that clears a suspect. Name the source or cut the sentence. What the
  ledger can say is how this business's rows compare with each other, nothing more.
- "Just improve quality." Answer: which row does quality explain, and what number would
  show it improved.
- "Everyone says the report is confusing." Answer: how many rows say it, in their words.

## Words and voice

- Never invent a customer, a quote, a number, a date, a reason or a benchmark. If the
  data does not hold it, it is [PENDING].
- Plain words an 8th grader reads without slowing down.
- Score the business and the data, never the person. The owner asked to be told.
- No em-dashes or en-dashes in text you write. Commas and full stops.

## Credit

The method is by Ashish Punj: the ledger before the cause, the counting rule, the five
suspects, [PENDING] instead of guessing, and the NHA shape. Part of the noguess student
kit: ashishpunj.com/nha-tce.
