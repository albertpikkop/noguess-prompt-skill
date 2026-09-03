---
name: tce
description: >-
  Turn any raw ask or brain dump into a copy-ready Task / Context / Expectations prompt
  (TCE + NHA: structured input, nothing invented), check an AI's answer against the
  prompt that produced it, and run the gap analysis at the start of any new project. Use
  WHENEVER a prompt is the deliverable: the user wants a prompt written or improved,
  wants to brief Codex, Claude or Cursor on a build, an edit or a message, pastes a
  messy note and asks what to tell the AI, or says "TCE this". WHENEVER the user says
  "the AI changed things I did not ask for", "it invented stuff", or pastes an answer
  and asks "check this". And, on your own, WHENEVER someone describes what they want to
  build or improve, even if they never say prompt: restate, separate facts from
  assumptions, name what is missing and the biggest unknown, ask three easy questions,
  recommend one move, and wait before creating anything. Skip only when the ask is
  already clear and small and they want it done now; a first message about a project is
  never that.
---

# TCE: the shape of what you ask the machine

## North star, one line

A prompt does not need to be right the first time. It needs to make every gap visible.
Visible gaps are cheap to close. Hidden guesses cost a single builder a week.

## Why this exists

Most people ask the AI the way they would ask a friend: "help me improve this, I talked
to a client, sales is messy, give me a plan." The machine then has to guess the job, the
facts, the format, what is missing and what must not change. It guesses confidently. That
is where invented data, rebuilt layouts and lost threads come from. The fix, taught to
lawyers, shop owners and developers alike: put every line of the ask in one of three
places before sending it, and write down what you do not know instead of letting the
machine fill it in. TCE opens the loop with structured input. NHA closes it with
verified output. Together they are the method one person used to ship a WhatsApp CRM
and a lead funnel with no team, and the spine of a twelve-class course that teaches
others to do the same.

## The three parts and the sorting rule

- **Task**: the one job. One sentence, starts with a verb, one deliverable, one audience.
  "Change only the colour of the submit button on my booking page." Two jobs means two
  prompts. Send the first.
- **Context**: what is already true. Facts, files, links, examples, who the user is, what
  exists today, what is already correct. Information only. No orders.
- **Expectations**: what the answer must obey. The shape of the output, the checks a
  human will run, what not to touch, what is out of scope, and what to do when something
  is missing.

Two of the three are orders. T and E tell the machine what to do. C tells it what is
true. Every line of the raw ask goes to exactly one place:

- Is it the job? Task.
- Is it a rule the answer must follow? Expectations.
- Is it a fact that is already true? Context.

The one-line test for C: if a line in Context tells the machine to do something, it is
not Context. (In the Hindi classroom version: if C says *karo*, "do it", it is not C.)
"Make it work on mobile" is a rule, so it moves to Expectations. "Bookings come on
WhatsApp today" is a fact, so it stays. "Read AGENTS.md first" is an order, so it goes to
Expectations; "AGENTS.md is the truth file for this project" is a fact, so it stays.

Two levels, never mixed. A TCE is for one task. The business lives in a truth file
(an AGENTS.md, a CLAUDE.md, a project file: who the business is, what exists, the rules
that never change), written once. Each task's Context names that file; each task's
Expectations says "read it first, it wins". A prompt that re-explains the business is a
truth file that was never written. When the user has no truth file yet, the first TCE
you write for them should be the one that creates it. For a person with only a phone, the
truth file is a note in their notes app or a pinned message in the chat: it is the written
record of the business, not a piece of software.

Why the do-not lines matter: the machine does not know what is already correct. Until it
is written down, every part of the thing is fair game to change. So Expectations always
carries what must stay exactly as it is, and for anything live it carries this line:
"Before you change anything, tell me which file and which line will change." That one
line is the difference between a colour change and a rebuilt layout.

## Start here: build the context before you build anything

The first time a person talks to an agent about a project, the agent knows nothing and
sounds like it knows everything. That is the moment this skill matters most. When someone
describes what they want to make or improve, when a brain dump lands, or when the Context
of a would-be TCE would be mostly [PENDING], do not build and do not write the prompt
yet. Run the gap analysis first, on your own. It is itself a TCE, the first one, and the
skill carries it so nobody has to type it:

```text
TASK: tell me what you understood about what I want to build or improve.
CONTEXT: my message, as it came. Nothing else yet.
EXPECTATIONS: the six steps below. Do not invent facts. Mark every guess as
Assumption. Wait for my approval before creating anything.
```

Answer it in this exact shape:

```text
1. What I understood: [restate the ask in plain words, two or three lines]
2. Facts vs assumptions: [Facts: what they said, nothing more. Assumptions: every guess,
   one per line, each one labelled Assumption]
3. Missing or unclear: [one per line]
4. Your biggest unknown: [the one thing that decides everything else]
5. Three easiest questions to answer next: [three, easy to answer from memory, in order,
   one question each: no "and" joining two asks]
6. One small next move: [one, doable today, no building yet: no field list beyond what
   they named, no tool, no cost, no time estimate; a column list is already a build]
```

Do not invent facts. Mark every guess as Assumption. Wait for approval before creating
anything: no code, no file, no plan, no message on their behalf, until they say yes.
Write it as plain text with the six labels, not in a code block; it is read and answered,
not copied. Open with one plain line that answers the person ("Yes, and not today: if I
build now I would be guessing half of it"), then the six steps, then one line saying
nothing has been created. "Can you build it for me" in a first message is not "do it
now"; it is the moment to run this. If a fourth question would change the build, it goes
at the top of Missing or unclear, not into the question list; three stays three.

Why: an agent without this step fills the gaps with the average project, and the person
finds out three weeks later. With it, the person is on the right track from the first
conversation, and the answers to the three questions become the truth file: the approved
restatement and the facts are its first version, and every task after that gets its own
TCE pointing at it. This is also how a beginner learns the method without being taught
it: they watch the agent refuse to guess.

## Procedure

1. **Capture before you sort.** If the user is mid brain-dump, do not interrupt to force
   the structure. Take all of it. Keep their words for facts: names, numbers, places,
   dates. Do not polish uncertainty into certainty. Separate what they observed,
   decided, assumed and asked.
2. **Find the one job.** Write the Task as one sentence. If you cannot, the ask is two
   asks. Say which one you are writing first.
3. **Sort every line** with the rule above. Move orders out of Context. Move facts out
   of Expectations.
4. **Point at the truth, do not describe it.** In Context, name the file, the link, the
   sheet, the folder, the live URL, as facts. "The photos are in the Drive folder
   [link]" beats "we have some photos". The order to read those files first goes in
   Expectations, because an order is never Context.
5. **Pin the shape of the answer.** In Expectations, name the output structure
   (sections, screens, fields, length, language) so the answer cannot drift, and list
   the checks the human will run. A check is something a non-coder can see: "the form
   submits and a row appears in the sheet".
6. **Write the do-not lines.** What stays untouched. What is out of scope. "Nothing new
   that I did not ask for."
7. **Mark every gap.** Anything you do not know goes in as `[PENDING: what is needed]`.
   Never guess it, never leave it blank. Give the machine the same instruction: "If
   anything is missing, stop and write [PENDING: ...]. Do not guess."
8. **Label your assumptions.** "Assumptions I am making:" then the list. This is how
   you avoid asking ten questions.
9. **Ask at most three questions**, and only ones whose answer would change the result.
   Everything else is an assumption or a [PENDING]. If the ask is too thin even for
   that, put reverse prompting into Expectations: "Before you start, ask me up to three
   questions whose answers would change the result, then wait."
10. **Hand it over as one block** in the format below, then one line on what is missing.

If the user wants the thing done, not just the prompt: use the finished TCE as your own
brief and proceed. Do not make them copy-paste it back to you.

## Output format

Always this shape, plain text in a code block so it copies clean. Drop a line that has
nothing to say; never pad one. A gap sits inside the line it belongs to, as
[PENDING: ...]; the Missing line is only for gaps that belong nowhere else.

```text
TASK
One sentence. One verb. One job.

CONTEXT
- The truth files: [files, links, docs the machine must follow]
- What exists today: [live URL / repo / nothing yet]
- Facts: [names, numbers, dates, places, exactly as given]
- What is already correct today: [list; the order to leave it alone goes in Expectations]
- Assumptions I am making: [list]
- Missing: [PENDING: anything needed that belongs to no line above]

EXPECTATIONS
1. Read the truth files first and follow them. If they conflict with this prompt, they win.
2. If any assumption above is wrong, say so before you start.
3. Output: [the shape: sections, screens, length, language]
4. Checks I will run: [things a non-coder can see]
5. Do not: [what not to touch, one line each]
6. Out of scope: [list]
7. If anything is missing, stop and write [PENDING: what you need]. Do not guess it.
8. Before you change anything that is live, tell me which file and which line will change, then wait for my yes.
```

Order the Expectations by what matters most for this ask. For an edit to something
live, the do-not lines come first and the tell-before-change line right after them; the
output shape and the checks come last. For a new build, the output shape comes first.
A new build inside something live (a new page on a client's site) is an edit: the
do-not lines come first. A numbered line is a rule only if the machine could break it; if it cannot be broken, it is
explanation, so cut it. If the value being changed could live in more than one place (a
price, a phone number, a colour), tell the machine to list every place first and change
only the one you name.

Below the block, at most two lines: "Gaps to close before sending: ..." and "When the
answer comes back, paste it here and say check it." The gaps line names every [PENDING]
in the block, no more and no fewer. Questions, three at most, only if their answers would
change the prompt. One plain line before the block is fine ("Copy this into your AI,
then send me its reply"); an explanation of the method is not. Do not append the check
prompt to the delivery; the check runs when the answer comes back, as a separate step.
The prompt is the deliverable.

Length: an everyday ask fits on one screen. Six to nine numbered lines is normal for an
edit; past twelve, something is being explained instead of ordered. A new build,
refactor or client site uses the long form in `references/build-prompt.md`, which adds
the pre-flight. Worked examples, from a button colour to a login bug to a reply to a
customer, are in `references/examples.md`. Read them the first time you use this skill
and whenever the ask is a kind you have not shaped before. `references/the-loop-once.md` walks one case through all four moves; read it when someone
asks where the TCE is after seeing a gap analysis.

## The check: close the loop (do not skip)

TCE opens the loop with structured input. NHA closes it with verified output. After the
machine delivers, paste the spec and the answer back and run this. Most people skip it.
It is the half of the method that catches the invented parts.

```text
Here is the original spec: [TASK + EXPECTATIONS + the checks].
Here is what you produced: [the answer, or the files].

Check your own work against the spec ONLY:
1. List anything in the output that the spec or the source files do not support (invented).
2. List every check and mark it: met / not met / [PENDING].
3. List anything you assumed without being told.
Do not fix anything yet. Just report the gaps.
```

When the user pastes an answer and asks "is this right", run this check yourself and
report in this shape:

```text
Invented (not in the spec or the facts): [one line each; a fact the user gave that the
machine swapped for one it worked out counts here too, labelled "swapped"]
Checks: [every rule in the spec, one per line, marked met / not met / [PENDING]]
Assumed without being told: [one line each]
Why: [one line, named from the five context problems below]
The fix: [the corrected answer, with [PENDING: ...] inside it wherever a fact is still
missing; never a guess]
Next time: [the one line to add to the prompt so this cannot happen again]
```

The report is plain text; only the corrected answer goes in a code block, because that
is the part that gets copied. A rule the text cannot prove, or one that reads two ways,
gets [PENDING] with the reason, not a verdict. Report first, fix after, in that order,
and fix only what the check surfaced. Do not hold the fix back behind questions: write
it with the gaps marked, and ask at most three questions only if their answers would
change it. The "Next time" line is the prevention; without it the same hole opens in the
next prompt. Five human questions sit behind the
check: did it separate facts from assumptions, did it mark the missing things [PENDING],
did it invent any data that was not in the text, can the result be traced to real
information, and is there a human decision pending before anyone uses it.

## NHA: the structure the answer keeps when the input is messy

NHA is Notas, Hechos, Archivos: notes, facts, files. It is the working structure for
any ask that starts from messy input: call notes, a chat export, a contract, a voice
memo, a client's email. Put it into Expectations as the output structure, so the answer
cannot drift into guesses:

```text
NOTES: the raw input, kept as it came. Nothing removed, nothing improved.
FACTS: only what the notes prove, one per line, each pointing at the note it came from.
Anything the notes do not prove is [PENDING: what would prove it].
FILES: the deliverable (the letter, the plan, the table, the code), built from FACTS only.
```

Three rules travel with it. A fact with no note behind it is a guess. A [PENDING] is
never filled in silently. The human decides before anything is sent or shipped. This is
why one person can build real software with the method: the machine's guesses stop being
invisible, so they can be closed one by one instead of discovered in production.

## When the answer was bad: the five context problems

Almost every bad answer is one of these. Name it, then fix the prompt, not the model.

| Problem | What happened | The fix |
|---|---|---|
| Missing context | It did not know your situation | Put the facts in C |
| Outdated info | It used old knowledge | Name versions, dates and the current state in C |
| Ambiguous words | It guessed what you meant | One job in T; name the exact thing |
| Lost the thread | Twenty minutes in, "now fix it" points at nothing it remembers | Restate the facts. TCE again on every major prompt, not just the first |
| Missing source data | It never saw the files | Point at them, paste them, upload them |

## Words and voice

- Write the prompt in the language the ask came in. Keep every fact verbatim; never
  translate a name, a number or a place into a nicer guess.
- Plain words an 8th grader reads without slowing down. A good prompt reads like a clear
  brief from a boss to a capable new hire.
- No em-dashes or en-dashes anywhere. Commas and full stops.
- No jargon on a beginner's prompt: "do not add anything new that I did not ask for"
  beats "do not add dependencies".
- Numbered rules, short lines, one idea per line. Never dress the prompt up.

## Where this comes from, credited

The three-part shape, Task + Context + Expectation, is from OpenAI's ChatGPT Foundations
for Teachers course. The sorting rule (two of the three are orders), the do-not lines
and the tell-before-change line, [PENDING] instead of guessing, the check prompt, and
NHA (Notas, Hechos, Archivos: notes, verified facts, files, the anti-hallucination
method) are by Ashish Punj, who taught the method to lawyers in Mexico and teaches it in
Chandigarh. The free public tool is Prompt Claro at ashishpunj.com/nha-tce, no login.

## The four moves, in order

1. TCE #0, the gap analysis, when the agent knows nothing yet. Its Expectations never
   change. Output: the six steps, not a build.
2. The person reviews: strikes wrong assumptions, answers the three questions, says yes.
   The truth file is written from what survived. Output: one file the business lives in.
   Show a beginner TCE #0 as a TCE once, so they see the method applied to itself.
3. TCE #1, #2, #3, one per task, each pointing at the truth file. Output: the block, and
   when the machine runs it, the built thing.
4. The check, when each answer comes back. Output: invented, checks, assumed, why, the
   fix, next time. What it finds goes back into the truth file.

## Stage rules: the person never runs anything twice

The person talks, answers and says yes. Knowing which stage you are in is your job, not
theirs. Read the conversation, not a command:

- **No truth file yet, and they describe what they want:** run TCE #0. Output the six
  steps. Build nothing.
- **They answer the questions or correct an assumption:** that is the review. Do not run
  the six steps again. Update only what changed: a struck assumption goes, an answered
  question becomes a fact, the biggest unknown is closed or stays open. Then write the
  truth file, v0, short and plain, and ask one thing: "Is this right? Say yes and I write
  the first task." If the biggest unknown is still open, you may ask up to three more
  questions once. Never a third round: a truth file with [PENDING] inside beats more
  questions.
- **They add a whole new idea, not an answer:** run TCE #0 on the new idea only, and keep
  the truth file as the Context for it.
- **They say yes to the truth file:** propose the smallest task that pays, in one
  sentence, and write TCE #1 for it. Tell what will change, wait for the yes, then build.
- **An answer comes back, or they say "check it":** run the check. Fix only what it
  surfaced. Put the "Next time" line into the truth file and bump its version: v0 is the
  approved facts, v1 the first real data, v2 the plan that data defends.
- **They name the next task:** TCE #2, pointing at the truth file. The file gets smarter
  with every check; the person never re-explains their business.

Say which stage you are in with one plain line when it changes ("That was the review;
here is your truth file"), so the person always knows where they stand.

## Make it yours

This skill has no opinion about your product, your client or your stack. When you
correct a prompt it produced, write the rule below. A rule you had to repeat twice
belongs in the file, not in your head.

## CATCH LEDGER

- Do-not lines in everyday words. "Do not add anything new that I did not ask for"
  beats "do not add dependencies". A shop owner can check the first; only a developer
  can check the second.
- An order never sits in Context, not even "read this file first". The file name is the
  fact and stays in Context; the order to read it goes to Expectations. A cold grader
  caught the first draft of this very skill on it.
- "Must stay" is an order. The first template said "what is already correct and must
  stay" under Context; a grader caught the run that copied it. Context says what is
  correct today; Expectations says do not touch it.
- A value can live in more than one place. A menu price sits in the visible row, the
  combo section and the data block behind it; "change 220 to 250" without "list every
  place first" changes one and leaves the others lying. Caught in testing on a live menu.
