# noguess

**Make your AI stop guessing.** 95% vs 63% in blind tests. A skill for Claude Code, Codex, Cursor and
any agent that reads `SKILL.md`. The method inside is TCE + NHA; students say "TCE this", the command is `noguess`, and `/tce` still works as an alias. It turns a raw ask or a brain dump into a copy-ready
prompt with three parts, Task, Context, Expectations, and marks every gap `[PENDING]`
instead of letting the AI guess. Then it checks the answer against the prompt that
produced it.

This is the loop one person used to build a WhatsApp CRM ([app.growtricity.com](https://app.growtricity.com))
and the lead funnel at [growtricity.com](https://growtricity.com) with no team, and it is
the spine of the twelve-class course taught in Chandigarh. TCE opens the loop with
structured input. NHA (notes, facts, files) closes it with verified output.

Free tool version, no login: [Prompt Claro](https://www.ashishpunj.com/nha-tce/en/en.html).

## Before and after

You type:

> the submit button on my booking page should be green not blue, and please do not wreck the layout again

You get:

```text
TASK
Change only the colour of the submit button on my booking page from blue to green.

CONTEXT
- The page is live at [PENDING: URL] and customers are using it today.
- The brand colours are already approved. The layout took three weeks and is final.
- The button is blue today. Everything else on the page is correct as it is.

EXPECTATIONS
1. Change only the button colour, nothing else.
2. Do not change the logo colours.
3. Keep the layout and the spacing exactly as they are.
4. Do not add anything new that I did not ask for.
5. Before you change anything, tell me which file and which line will change, then wait for my yes.
6. Check I will run: the button is green, and a screenshot before and after shows no other difference.
```

Point 5 is the line that saves you. First it tells, then you say yes, then it changes.

## First contact

Install it in a beginner's agent and the first thing the agent does with a new project is
build its own context, before it builds anything: restate what it understood, separate
facts from assumptions, say what is missing, name the biggest unknown, ask the three
easiest questions, recommend one small move, and wait. Without this step an agent
sounds intelligent and assumes half the project.

## The student kit: three skills, one marketplace

`noguess` is the method. Two build skills use it: [build-first-crm](https://github.com/albertpikkop/first-crm-skill)
(a first CRM from your business truth) and [remotion-ffmpeg-video](https://github.com/albertpikkop/remotion-ffmpeg-video-skill)
(a first video). All three read and write one file, `BUSINESS-TRUTH.md`, so the student
explains their business once. Day-one setup for all three, per machine, is in [SETUP.md](SETUP.md).

## Install

**Claude Code** (two commands, then say "noguess this" or "TCE this" in any project):

```bash
claude plugin marketplace add albertpikkop/noguess
```

```bash
claude plugin install noguess@ashishpunj
```

**Any agent, from GitHub** (Claude Code, Codex, Cursor and others, using the open
`skills` tool):

```bash
npx skills add albertpikkop/noguess
```

**Codex, by hand:** copy `plugins/noguess/skills/noguess` into `~/.codex/skills/noguess`
(and `plugins/noguess/skills/tce` next to it if you want `/tce` as the command). Codex lists the
skill on the next start.

**Windows:** the Claude Code commands above are the same in PowerShell. For Codex, the folder is
`%USERPROFILE%\.codex\skills\noguess`. For `npx skills add`, install Node.js first.

**Claude app and claude.ai:** download `dist/noguess.skill` from the latest release and add
it in the Skills panel.

## What is in the skill

- `SKILL.md`: the method (the `tce/` folder beside it is only the alias). The three parts, the sorting rule (T and E are orders, C is
  facts only), the procedure, the output shape, the check that closes the loop, the NHA
  structure (notes, facts, files) for messy input, the five context problems, and a
  Make it yours section for your own rules.
- `references/examples.md`: six worked examples, from a first conversation to a button
  colour to a login bug to a reply to a customer, plus the check applied.
- `references/build-prompt.md`: the long form for a new build or a client site, with
  the pre-flight and the second prompt that checks the build.
- `references/the-loop-once.md`: one case through all four moves, TCE #0 to the check,
  so the sequence is visible.
- `evals/`: the test asks and the checks used to grade it.

## The method in one screen

- **Task**: the one job. One sentence, one verb.
- **Context**: what is already true. Facts, files, links. No orders.
- **Expectations**: what the answer must obey. Output shape, checks a human can run,
  what not to touch, what to do when something is missing.
- The test for Context: if a line tells the machine to do something, it is not Context.
- Every gap is `[PENDING: what is needed]`. Never guessed, never blank.
- Three questions at most, and only ones that change the result.
- When the answer comes back, check it: invented, met or not met per rule, assumed
  without being told. Report first, fix after.

## Tested, not vibes

Every version is run on fictional asks twice, once with the skill and once without, and
graded by separate agents that did not see it being built. v0.2.0: prompt writing 95% vs
63%, first contact 91% vs 32%, a Hinglish first message 100% vs 30%, and a developer in a
repo with AGENTS.md 86% vs 100% (the skill's job there is to stay out of the way; the one
miss is fixed). The test asks and checks are in `plugins/noguess/skills/noguess/evals/`.

## Send your catches back

The skill ends with a catch ledger: every time you correct a prompt it produced, write the
rule there. If a rule made your agent better, send it back as an issue or a pull request on
this repo. The good ones go into the next version with your name on it. Versions are
tagged; `claude plugin marketplace update ashishpunj` pulls the latest.

## Upgrading (for the maintainer)

Edit the files under `plugins/noguess/skills/noguess/`, add a section to `CHANGELOG.md`, then:

```bash
scripts/release.sh 0.2.0 "one line on what changed"
```

That bumps the version, packages `dist/noguess.skill`, commits, tags and publishes the release.

## The numbers

Three rounds of fictional asks, each run with the skill and without, graded by separate agents
that never saw the skill: 88% vs 54%, then 95% vs 63% on the public version, then 91% vs 32%
on a person's first message about a project. The test asks and checks are in `evals/`.

## Renamed

First published as `tce-skill`. That name redirects here; old install lines keep working.

## Credit

The three-part shape, Task + Context + Expectation, is from OpenAI's ChatGPT Foundations
for Teachers course. The sorting rule, the do-not lines, the tell-before-change line,
`[PENDING]` instead of guessing, the check prompt, and NHA (Notas, Hechos, Archivos, the
anti-hallucination method) are by [Ashish Punj](https://ashishpunj.com), who taught the
method to lawyers in Mexico and teaches it in Chandigarh.

## License

MIT. Use it, fork it, teach it. Keep the credit line.
