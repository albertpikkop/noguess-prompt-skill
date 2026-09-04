---
name: noguess
description: >-
  The TCE + NHA method: turn a raw ask or brain dump into a Task / Context /
  Expectations prompt where nothing is invented, run a gap analysis before building for
  a beginner, and check an AI's answer against the prompt that produced it. Use when the
  user asks for a prompt or a brief for Codex, Claude, ChatGPT or Cursor ("TCE this",
  "write the prompt for", "prompt likho"), when they describe something they want built
  and no truth file (BUSINESS-TRUTH.md, AGENTS.md, CLAUDE.md) exists yet ("can you build it
  for me", "mujhe app banani hai"), or when they paste an AI's answer and ask whether it
  made anything up ("check this", "ye sahi hai kya"). Stand down when the repo already
  has a truth file, when the ask names a file and a fix, when it is one small reversible
  step they want done now, or when the gap analysis already ran in this conversation:
  then just do the work.
---

# noguess: the shape of what you ask the machine

The method inside is TCE + NHA. Students say "TCE this"; the command is `noguess`.

A prompt does not need to be right the first time. It needs to make every gap visible.
Visible gaps are cheap to close. Hidden guesses cost a single builder a week. TCE (Task,
Context, Expectations) opens the loop with structured input. NHA (notes, facts, files)
closes it with verified output.

## When to stand down

Do the work, without a gap analysis and without writing a prompt block, when any of these
is true:

- The repo or project already has a truth file (AGENTS.md, CLAUDE.md, a project doc).
  Read it first; ask only what it does not answer.
- The ask names a file or a symptom and a fix ("the login rejects the second attempt,
  it is in session.ts, fix it").
- The ask is one small, reversible step and the person wants it done now.
- The gap analysis already ran in this conversation. Never run it twice on the same
  project.
- The ask is a question. Answer it in three lines first; offer the analysis after.

When you stand down: at most one question, and only if the truth file and the ask
disagree. No method talk: no plan of how you will work, no paragraph on what you are not
doing. If you cannot reach the file or the data you need, say so in one line and stop; do
not write a speculative fix with [PENDING] holes in it.

If the person asked for a prompt, the prompt block is the deliverable. If they asked for
the thing itself, write the block as your own brief and proceed; do not make them paste it
back to you.

## The three parts and the sorting rule

- **Task**: the one job. One sentence, starts with a verb, one deliverable, one audience.
  Two jobs means two prompts. Send the first.
- **Context**: what is already true. Facts, files, links, examples, what exists today.
  Information only. No orders. The one allowed exception is a line labelled
  "Assumptions I am making, not verified", because a guess that is labelled is
  information about the writer, not an order.
- **Expectations**: what the answer must obey. The shape of the output, the checks the
  person can run themselves, what not to touch, what is out of scope, and what to do
  when something is missing.

Two of the three are orders. T and E tell the machine what to do. C tells it what is
true. Every line of the raw ask goes to exactly one place. The test for C: if a line in
Context tells the machine to do something, it is not Context. (In the Hindi classroom
version: if C says *karo*, "do it", it is not C.) "Make it work on mobile" is a rule, so
it moves to Expectations. "Bookings come on WhatsApp today" is a fact, so it stays.
"Read AGENTS.md first" is an order, so it goes to Expectations; "AGENTS.md is the truth
file for this project" is a fact, so it stays.

Why the do-not lines matter: the machine does not know what is already correct. Until
it is written down, every part of the thing is fair game to change. So for anything live,
Expectations carries: "Before you change anything, tell me which file and which line
will change, then wait for my yes." That line is the difference between a colour change
and a rebuilt layout.

## Two levels, never mixed: the task and the truth file

A TCE is for one task. The business lives in one file, written once and read by every skill
that builds for this person: `BUSINESS-TRUTH.md`. Who the business is, what exists, the
numbers, the rules that never change, what has been built so far, and the prompting rules
learned from every check. Each task's Context names that file; each task's Expectations
says to read it first. A prompt that re-explains the business is a truth file that was
never written. For a person with only a phone, `BUSINESS-TRUTH` is a note in their notes
app with the same headings. A repo's AGENTS.md or CLAUDE.md counts as a truth file too.

The file, v0, has these headings and no more:

```text
# BUSINESS-TRUTH.md  (v0, <date>)
## Business: name, what it sells, main customer, location or service area, who runs it
## Public facts: phone or WhatsApp, email, address shown publicly, hours, prices or offer terms that may be shown, proof supplied
## Brand: logo or image source, existing site or reference, colours already approved
## How work happens today: one line each (the register, the sheet, the DMs)
## Numbers that matter: as given, never rounded up
## Rules that never change: what must not be touched, what must never be said
## Assumptions, not verified: one per line
## Still unknown: [PENDING: ...], one per line
## What exists now: what has been built, with its address (a site URL, a project name; never a key), updated by every skill that builds
## Prompting rules learned: one per line, dated, from every check's Next time line
```

Never put a password, an API key, a card number or a customer's personal details into
Context or into the truth file. Point at where they live, or write
[PENDING: I will supply this directly].

Who owns what when more than one skill is installed: `noguess` owns TCE #0, the truth
file and the check. A build skill (`build-first-crm`, `remotion-ffmpeg-video`, any skill
that says it builds a thing) owns the build once `BUSINESS-TRUTH.md` is approved, and
reads that file instead of asking again. "Build me my first CRM" with no truth file means
TCE #0 first, then the hand-over; with a truth file it means the build skill, straight away.

## Start here: TCE #0, the gap analysis

Use it only when none of the stand-down rules apply: a person describes what they want
built or improved and no truth file exists yet. The first time a person talks to an agent
about a project, the agent knows nothing and sounds like it knows everything. That is the
moment this matters. It is itself a TCE, the first one, and this skill carries it so
nobody has to type it:

```text
TASK: tell me what you understood about what I want to build or improve.
CONTEXT: my message, as it came. Nothing else yet.
EXPECTATIONS: the six steps below. Do not invent facts. Mark every guess as
Assumption. Wait for my approval before creating anything.
```

Show that TCE #0 block itself once, as a code block, so a beginner sees the method
applied to itself. Then answer it in plain text, not a code block, with these six labels
in this order:

1. What I understood: the ask in plain words, two or three lines.
2. Facts vs assumptions: Facts, what they said and nothing more. Assumptions, one per
   line, each one labelled Assumption.
3. Missing or unclear: one per line.
4. Your biggest unknown: the one thing that decides everything else.
5. Three easiest questions to answer next: three, answerable from memory, in order, one
   ask per question, no "and" joining two.
6. One small next move: one, doable today, no building: no field list beyond what they
   named, no tool, no cost, no time estimate. A column list is already a build.

Open with one plain line that answers the person ("Yes, and not today: if I build now I
would be guessing half of it"), then the six steps, then two closing lines: "Nothing has
been created." and "Reply yes when this is right. Then I write BUSINESS-TRUTH.md, and
[the build skill that is installed, by name] builds from it." A beginner must never have
to guess the word that moves them forward. One more line is allowed when the build skill
needs setup first (an account, a plugin, a connection): name that one step from its
SETUP.md, because it is the real next blocker; the ban on naming tools is about the build,
not about setup. If the installed build skill builds less than they asked for, say what it
builds first, at the top of Missing or unclear. "Can you build it for me" in a first message is not "do it now"; it is the
moment to run this. If a fourth question would change the build, it goes at the top of
Missing or unclear; three stays three. If the input contradicts itself, keep both as
[PENDING: which is right, X or Y] and never pick one.

Why: an agent without this step fills the gaps with the average project, and the person
finds out three weeks later. With it, the answers to the three questions become the
truth file, and every task after that gets its own TCE pointing at it. A beginner learns
the method by watching the agent refuse to guess.

## Procedure for a task prompt

1. **Capture before you sort.** If the person is mid brain-dump, do not interrupt to
   force the structure. Keep their words for facts: names, numbers, places, dates. Do
   not polish uncertainty into certainty.
2. **Find the one job.** Write the Task as one sentence. If you cannot, the ask is two
   asks; say which one you are writing first.
3. **Sort every line** with the rule above. Move orders out of Context. Move facts out
   of Expectations.
4. **Point at the truth, do not describe it.** Name the file, the link, the sheet, the
   folder, the live URL, as facts. If the machine cannot open the source (a Drive
   folder, a phone gallery), say so and ask the person to bring it where the machine
   can read it. The order to read the sources first goes in Expectations.
5. **Pin the shape of the answer.** Name the output structure (sections, screens,
   fields, length, language) so the answer cannot drift, and list the checks the person
   who asked can run themselves.
6. **Write the do-not lines.** What stays untouched. What is out of scope. "Nothing new
   that I did not ask for." If the value being changed could live in more than one
   place (a price, a phone number, a colour), tell the machine to list every place first
   and change only the one you name.
7. **Mark every gap.** Anything you do not know goes in as `[PENDING: what is needed]`,
   inside the line it belongs to. Never guess it, never leave it blank. Give the machine
   the same instruction.
8. **Label your assumptions**, under "Assumptions I am making, not verified".
9. **Ask at most three questions**, only ones whose answers would change the result. If
   the ask is too thin even for that, put reverse prompting into Expectations: "Before you
   start, ask me up to three questions whose answers would change the result, then
   wait." (Reverse prompting: the machine asks you before it answers.)
10. **Hand it over as one block**, then one line on what is missing.

## Output format

Plain text in a code block so it copies clean. Drop a line that has nothing to say;
never pad one.

```text
TASK
One sentence. One verb. One job.

CONTEXT
- The truth files: [files, links, docs the machine must follow]  (only if they exist)
- What exists today: [live URL / repo / nothing yet]
- Facts: [names, numbers, dates, places, exactly as given]
- What is already correct today: [list]
- Assumptions I am making, not verified: [list]
- Missing: [PENDING: anything needed that belongs to no line above]

EXPECTATIONS
1. Read the truth files first. They win on facts about the business; this prompt wins on
   the task. If they disagree about the task, stop and ask.  (only if they exist)
2. If any assumption above is wrong, say so before you start.
3. Output: [the shape: sections, screens, length, language]
4. Checks I will run: [things the person who asked can see or do]
5. Do not: [what not to touch, one line each]
6. Out of scope: [list]
7. If anything is missing, stop and write [PENDING: what you need]. Do not guess it.
8. Before you change anything that is live, tell me which file and which line will change,
   then wait for my yes.
```

Order the Expectations by what matters most. For an edit to something live, and for a
new build inside something live (a new page on a client's site), the do-not lines come
first and the tell-before-change line right after them. For a new build from nothing, the
output shape comes first. A numbered line is a rule only if the machine could break it;
if it cannot be broken, it is explanation, so cut it.

Below the block, at most two lines: "Gaps to close before sending: ..." naming every
[PENDING] in the block, no more and no fewer, and "When the answer comes back, paste it
here and say check it." Questions, three at most, only if their answers would change the
prompt. One plain line before the block is fine ("Copy this into your AI, then send me
its reply"); an explanation of the method is not. Do not append the check prompt; the
check runs when the answer comes back.

Length: an everyday ask fits on one screen; six to nine numbered lines is normal for an
edit, and past twelve something is being explained instead of ordered. A developer's new
build or refactor uses the long form in `references/build-prompt.md`. A non-technical
owner's new build stays in this short form. Worked examples are in
`references/examples.md`; read them the first time you use this skill and whenever the
ask is a kind you have not shaped before. `references/the-loop-once.md` walks one case
through the whole loop; read it before writing a first truth file.

## The check: close the loop

After the machine delivers, the person pastes the answer back, or says "check it". Run
this yourself and report in plain text; only the corrected answer goes in a code block:

- Invented (not in the spec or the facts): one line each. A fact the person gave that
  the machine swapped for one it worked out counts here too, labelled "swapped".
- Checks: every rule in the spec, one per line, marked met / not met / [PENDING]. A rule
  the text cannot prove, or one that reads two ways, gets [PENDING] with the reason.
- Assumed without being told: one line each.
- Why: one line, named from the five context problems below.
- The fix: the corrected answer, with [PENDING: ...] inside it wherever a fact is still
  missing; never a guess.
- Next time: the one line to add to the prompt so this cannot happen again. It goes into
  `BUSINESS-TRUTH.md` under Prompting rules learned. If a build skill ends with ready,
  not ready or blocked, keep those three words; they mean the same thing everywhere.

If they pasted an answer with no spec, write the implied spec in three lines from their
original ask, label it "Assumed spec", ask them to correct it, and check against that.
Report first, fix after, and fix only what the check surfaced. Do not hold the fix behind
questions: write it with the gaps marked.

To make the machine check its own work, send it: "Here is the original spec. Here is what
you produced. Check your own work against the spec only: list anything invented, mark
every check met / not met / [PENDING], list anything you assumed. Do not fix anything yet."

## NHA: the structure the answer keeps when the input is messy

NHA is Notas, Hechos, Archivos: notes, facts, files. Use it as the output structure for
any ask that starts from messy input (call notes, a chat export, a contract, a voice
memo, a transcript, a client's email), by putting it into Expectations:

```text
NOTES: the raw input, kept as it came. Nothing removed, nothing improved.
FACTS: only what the notes prove, one per line, each pointing at the note it came from.
Anything the notes do not prove is [PENDING: what would prove it].
FILES: the deliverable (the letter, the plan, the table, the code), built from FACTS only.
```

Three rules travel with it. A fact with no note behind it is a guess. A [PENDING] is
never filled in silently. The human decides before anything is sent or shipped.

## When the answer was bad: the five context problems

Almost every bad answer is one of these. Name it, then fix the prompt, not the model.

| Problem | What happened | The fix |
|---|---|---|
| Missing context | It did not know your situation | Put the facts in C |
| Outdated info | It used old knowledge | Name versions, dates and the current state in C |
| Ambiguous words | It guessed what you meant | One job in T; name the exact thing |
| Lost the thread | Twenty minutes in, "now fix it" points at nothing it remembers | Restate the facts. TCE again on every major prompt |
| Missing source data | It never saw the files | Point at them, paste them, upload them |

## Words and voice

- Write in the language the ask came in. Hindi and Hinglish asks get Hindi and Hinglish
  answers, including the six step labels of TCE #0. Only TASK, CONTEXT, EXPECTATIONS,
  [PENDING] and the file name BUSINESS-TRUTH.md stay in English, so every skill finds them.
- Keep every fact verbatim; never translate a name, a number or a place into a nicer
  guess. Quoted source text stays as it was, dashes included.
- Plain words an 8th grader reads without slowing down. No jargon on a beginner's
  prompt: "do not add anything new that I did not ask for" beats "do not add
  dependencies".
- No em-dashes or en-dashes in text you write. Commas and full stops.
- Numbered rules, short lines, one idea per line.

## Stage rules: the person never runs anything twice

The person talks, answers and says yes. Knowing which stage you are in is your job.

- **A truth file exists (`BUSINESS-TRUTH.md`, AGENTS.md, CLAUDE.md):** read it, do the task.
  No TCE #0. If a build skill is installed and the task is its kind of build, hand over. If
  the file describes a different business from the one the person is talking about, say so
  in one line, use nothing from it, and ask which is right; a wrong truth file is worse than
  none.
- **No truth file, and they describe what they want:** TCE #0. Six steps, nothing built.
- **They answer the questions or correct an assumption:** that is the review. Do not
  repeat the six steps. Update only what changed, then show `BUSINESS-TRUTH.md` v0 in the
  template above and ask one thing: "Is this right? Reply yes and I write it." Write it
  only after the yes. One more round of at most three questions is allowed if the biggest
  unknown is still open; never a third: a truth file with [PENDING] inside beats more
  questions.
- **They add a whole new idea, not an answer:** TCE #0 on the new idea only, with the
  truth file as its Context.
- **They say yes to the truth file:** if a build skill is installed, say its name and hand
  over. Otherwise propose the smallest task that pays, in one sentence, write TCE #1 for
  it, tell what will change, wait for the yes, then build.
- **An answer comes back, or they say "check it":** the check. Its "Next time" line goes
  into `BUSINESS-TRUTH.md` under Prompting rules learned; bump the version and date it.
- **They name the next task:** TCE #2, pointing at the truth file. The person never
  re-explains their business.

Say which stage you are in with one plain line when it changes ("That was the review;
here is your BUSINESS-TRUTH.md"). Show a beginner TCE #0 as a TCE once, so they see the
method applied to itself.

## Make it yours

This skill has no opinion about your product, your client or your stack. When you
correct a prompt it produced, write the rule into your `BUSINESS-TRUTH.md` under
Prompting rules learned, not into this file: this file is replaced when the skill updates. If a
rule made your agent better, send it to the skill's repo as an issue, with client names
and numbers removed. Two rules that came from real catches: do-not lines in everyday
words; an order never sits in Context, not even "read this file first".

## Credit

The method is by Ashish Punj: the sorting rule, the do-not lines, [PENDING] instead of
guessing, the check, and NHA. The three-part shape, Task + Context + Expectation, is
from OpenAI's teacher course. Free tool and course: ashishpunj.com/nha-tce.
