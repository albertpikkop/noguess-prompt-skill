# Changelog

## business-blueprint v0.2.0, 8 October 2026

The ten questions, reworded for the two people who answer them. Students with a salary
stalled on "price", "capacity" and "who is it for"; the words assumed a shop.

- The ten questions carry an example line for both profiles, and "business or job?" is
  asked in the same message, never as a turn of its own. The lines are shapes, never
  answers; the agent fills none in.
- Question 6 is now "What is it worth, and to whom?": a price for an owner, hours saved or
  a raise or side income for an employee, and "not sure yet" stays [PENDING] by design.
- Question 7 is "How much can I take on?", with the job's own limits (company data, tools,
  clients) written down as facts. Question 10 keeps "biggest unknown or decision" and adds
  the test: the one that, if wrong, makes the rest pointless.
- Plan file headings are unchanged, so existing PLAN files still match.

## live-shopping v0.1.0, 25 September 2026

New skill, the kit's first selling skill. For a seller in India who wants to sell live on
Instagram or Facebook, learning from live selling in China and TV selling in the US.

- Can you go live today: Instagram needs a public account and 1,000 followers; Facebook, a
  Page or a profile with professional mode on, 100 followers and an account at least 60
  days old. The Live screen in the app is the final word, read without pressing Go Live.
  Not eligible yet: a runway of short videos, and no go-live date until the app says yes.
- Shopping inside a live has ended on both platforms, so the plan joins three things by
  hand: the show, the order on WhatsApp, payment by UPI. Paid means the money shows in the
  seller's own bank or UPI app; a screenshot is not payment.
- The running order from a Chinese operator guide: the opener and the bestseller first,
  profit items and an optional anchor for a bigger show, and a closer. A 90-second script
  per product in five beats.
- The order desk: a code in the comments, first comment first chance, the details with a
  pay-by time, one reminder and never a second, then the next in line.
- Honest urgency only, read from India's 2023 dark patterns guidelines as a law firm
  summarises them: the real count, and at most one show-only price with a real end time.
  Videos that stay up after the show carry no count and no show price.
- The trust kit, seven days to the first show, and a five-number scorecard after it.
- Five evals: a Surat saree seller, a Mohali bakery below both follower lines, a seller who
  wants a resetting timer and "sirf 2 piece bache hain" with 50 in stock, a one-line ask,
  and a seller who wants the agent to send payment reminders and chase every two hours.
- Blind run, one grader per answer, not told which answer had the skill: with the skill 44
  of 44 checks, without it 30 of 44. Without it: no eligibility check for the saree seller
  and an invented saree, fabric and price; a forecast of 5 to 15 viewers for the bakery; a
  resetting timer kept as "rounds"; four questions for the one-line ask; a screenshot taken
  as payment and a second reminder planned. One of the 14 misses is the [PENDING] label
  itself, which only the skill asks for. The answers came from the skill as it stood at
  its third review. Fixed after it: recorded videos and the replay carry no count and no
  show price, advice lines are labelled, the UPI PIN joins the trust kit, a two-hour
  pay-by window with the one reminder 30 minutes before it, and a tighter checklist in
  which no mistake counts twice.

## churn-autopsy v0.1.0, 15 September 2026

New skill, the fourth thinking piece of the kit. Built for an owner with 100% client churn
who was hoping the cause was quality, CX or UX and asking the machine to confirm it.

- One law: no cause before the ledger. One row per customer who left, from the owner's own
  data, every silent cell [PENDING].
- Five suspects tried in a fixed order so the unfamiliar ones cannot be skipped: selection,
  promise, delivery, experience, economics. Each scored per row, with the cell it rests on.
- The counting rule: a cause is ranked by how many rows it explains; one row is an anecdote;
  the owner's own theory is reported with its count, whether it came first or last.
- Five exit interview questions, drafted by the agent, sent by the owner, pasted back verbatim.
- The autopsy file in the NHA shape; no retention plan, offer, tool or hire inside it.
- Three evals: an Upwork agency at 100% churn with a 12 row sheet, an owner certain it is the
  report when 6 of 8 students left before ever seeing one, and a gym owner with no sheet who
  wants an offer.
- After the first cold run (with the skill 27 of 28 checks, without it 11 of 28): a norm
  claim with no number ("normal for an account this size") is a benchmark too and is cut
  unless sourced; every derived number is shown with its cells and arithmetic, and "X times"
  names both ends of the comparison.

## business-blueprint v0.1.1, 5 September 2026

After a cold review of v0.1.0 (30 findings). The worked example invented a business name, a
price, an offer and a customer quote in a skill whose one promise is that nothing is
invented; all three fixtures are rewritten so every line is a fact the person gave, an
Assumption, or [PENDING], and disproven assumptions stay visible with their counts.

- A lift is something to find out or decide, never the answer itself ("ask three owners
  what they pay today", never "charge Rs 500").
- A plan that arrives good enough is offered the attack, never ambushed with it.
- A survey that contradicts nothing is a warning and a result, not a dead end; a missing
  bar writes v1 instead of refusing.
- The pivot procedure also fires when the offer moves, and "keep" is argued as what would
  have to be true for the data to be wrong.
- `BUSINESS-TRUTH.md` is shown and gets the same yes `noguess` asks for before it is
  written, and uses the shared template's headings exactly, so `build-first-crm` never
  re-interviews.
- Triggers added for the later pivot ("a customer told me something", "should I pivot")
  and more Hinglish; a work-shaped ask is handed back to `noguess`.
- Plain words: "cost if it stays" instead of "size", "the survey" instead of "the
  instrument", long sentences split.
- Evals aligned with the skill's own rules.

## business-blueprint v0.1.0 and noguess v0.5.0, 5 September 2026

- New skill in the kit, `business-blueprint`: the plan in three kept versions. Ten plain
  questions answered in the person's own words become `PLAN-v0.md`; a gap attack that
  scores each area, names the gap under every score and never scores an assumption
  above 7 becomes `PLAN-v1.md`; seven survey questions and ten answers from strangers
  become `PLAN-v2-BLUEPRINT.md`. `BUSINESS-TRUTH.md` is written from v0 onward so a
  builder never interviews twice.
- A pivot is handled, not just named: the data that contradicts the plan, the three
  options with their cost, one recommendation with the reason, what survives of anything
  already built, and the person decides. A later pivot writes `PLAN-v3-BLUEPRINT.md`; the
  highest number is current.
- A plan that already exists under any name (a business-plan.md, notes, a pasted
  paragraph) is read and judged, not re-asked: at most three questions, none if it is
  good enough, then straight to the next real step.
- The folder decides, not the order: one shared contract, identical in every skill of the
  kit. Read the folder first, never re-ask what a file answers, never refuse because an
  earlier step is missing, one skill answers a message, facts live in one file.
- noguess: a business idea with no plan is handed to the plan skill, not straight to a
  builder.

## v0.4.0, 4 September 2026

The three-skill journey, after a cold review of the set.

- The truth file has one name everywhere: `BUSINESS-TRUTH.md`, with one template shared by
  noguess, build-first-crm and remotion-ffmpeg-video, including "What exists now" and
  "Prompting rules learned" so the file keeps getting smarter.
- Hand-over rules: noguess owns TCE #0, the truth file and the check; an installed build skill
  owns the build once the file is approved, and reads it instead of asking again.
- TCE #0 ends by naming the word that moves the student on: "Reply yes when this is right."
- The marketplace lists all three plugins, so Claude Code students run one marketplace add.
- SETUP.md: day one per machine (Claude Code, Codex, Mac, Windows, FFmpeg, Python, Supabase).
- The `tce` alias survives being copied alone.

## v0.3.0, 3 September 2026

- Renamed to `noguess`. The repo, plugin, skill and command are `noguess`; `/tce` stays as an alias.
- The method inside is unchanged: TCE + NHA, four moves, stage rules.
- Promise line and topics on the repo, so strangers can find it.

## v0.2.0, 3 September 2026

Rewritten after a cold review by a separate agent that had not seen the skill being built.

- Stand-down rules, in the description and the body: a repo that already has a truth file,
  an ask that names a file and a fix, one small reversible step, a gap analysis that already
  ran, or a question. Then the agent does the work.
- Settled prompt versus doing the work: the block is the deliverable only when a prompt was
  asked for; otherwise it is the agent's own brief.
- The truth file has a template inside SKILL.md, and a phone-only version.
- No secrets, keys, card numbers or customers' personal details in Context or the truth file.
- The check has a path when no spec is attached: an assumed spec, three lines, corrected by
  the person.
- Truth files win on facts about the business; the live person wins on the task.
- Assumptions are labelled "not verified" and are the only guesses allowed in Context.
- Language: Hindi and Hinglish asks get Hindi and Hinglish answers; the labels stay English;
  Hindi trigger phrases in the description.
- The long form is for developers; an owner's new build stays in the short form.
- Questions: one ask each. Contradicting input becomes [PENDING: which is right].
- Your own rules go into your project's truth file, not into this file, which updates.
- Credit trimmed to two lines inside the skill; the author's house rules removed from the
  examples. About a quarter of the body cut.
- Tests: a developer in a repo with AGENTS.md (the skill must stay out of the way) and a
  Hinglish first message.

## v0.1.0, 3 September 2026

First public version.

- The four moves: TCE #0 (the gap analysis at first contact, six fixed steps, invent
  nothing, wait), the truth file, one TCE per task, the check that closes the loop.
- The sorting rule: T and E are orders, C is facts only. An order never sits in Context.
- [PENDING] instead of guessing, do-not lines, tell-before-change, three questions at most,
  one ask per question.
- NHA as the output structure for messy input: notes, facts, files.
- Stage rules so the person never runs anything twice.
- Tested with and without the skill on fictional asks, graded by separate agents: 88% vs
  54%, then 95% vs 63%, then 91% vs 32% on first contact.
