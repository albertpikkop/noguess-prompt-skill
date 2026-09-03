# Changelog

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
