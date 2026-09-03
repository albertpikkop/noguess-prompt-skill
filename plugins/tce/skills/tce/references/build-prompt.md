# The initial build prompt: the long form of TCE

Use this when the ask is a new build, a refactor or a client site, not an everyday ask.
Same three parts, with the gaps made impossible to miss.

## The template (copy, fill every [ ], send)

```text
=== INITIAL BUILD PROMPT ===
Rule: if you cannot fill a [ ], write [PENDING: what is needed] so the gap stays visible.
Never leave it blank, never guess it.

## TASK (one sentence)
Build [what], for [who], that does [the one core job].

## CONTEXT (the truth, not my memory of it)
- The truth files for this build: [AGENTS.md / CLAUDE.md / design brief / schema paths]
- What already exists: [live site URL / repo / nothing yet]
- The real data lives here: [CSV / Google Sheet / DB / API path or link. Point at it, do not describe it from memory]
- Who uses it, on what device: [...]
- Fixed facts: [stack, hosting, budget, languages, the brand rules as they stand today]
- Assumptions I am making: [...]

## EXPECTATIONS (what "done" looks like)
- Read the truth files first and follow them. If they conflict with this prompt, they win.
- If any assumption above is wrong, say so before you start.
- Exact outputs / screens / endpoints: [...]
- Output structure it MUST follow (so it cannot drift): [e.g. named sections, an API shape, a file layout]
- Tech requirements: [versions, libraries, no third-party deps, etc.]
- Acceptance criteria I will check against: [list the concrete checks]
- Out of scope: [...]
- Do not touch: [what stays exactly as it is, one line each]
- Before you create or change anything, list the files and lines you will touch, then wait for my yes.

## GUARDRAILS (NHA principles)
- Keep the source visible: read and quote the real files above; do not invent their contents.
- State every assumption before you act on it.
- Anything you need but do not have: STOP and mark [PENDING: ...]. Do not stub or guess it.
- Report every decision you make as you go, in your reply or in a journal file the owner already keeps. Never add a file to someone's repo that they did not ask for.
- No em-dashes in any user-facing copy.
```

## Pre-flight (tick before you send)

- Task is ONE sentence a stranger would understand.
- Every fact in Context points to a real file or link, not memory.
- The truth files are named in Context, and Expectations says to read them first.
- Expectations list checks the human can actually run.
- Every gap is written as [PENDING: ...], not left blank or guessed.
- Assumptions are written down.
- The output structure is named, so the answer cannot drift.

## The second prompt: check the build (do not skip)

After the machine delivers, paste its output (or the diff) back and run this. It is the
verify half of the method, the move most people skip:

```text
Here is the original spec: [paste TASK + EXPECTATIONS + acceptance criteria].
Here is what you produced: [paste it or point to the files].

Check your own work against the spec ONLY:
1. List anything in the output that the spec or the source files do not support (invented).
2. List every acceptance criterion and mark it: met / not met / [PENDING].
3. List anything you assumed without being told.

Do not fix anything yet. Just report the gaps.
```

Fix only what this surfaces. That is the fast iteration loop.

## The four NHA principles behind it

1. Keep the source visible: point at the real files and data, do not paraphrase from memory.
2. Make assumptions explicit, yours and the machine's.
3. Mark missing information [PENDING]; the machine flags what it lacks instead of inventing it.
4. Keep a human in the loop: define the check before you build, run it after.

Why it works: a prompt built this way does not need to be right the first time. It needs
to make every gap visible.
