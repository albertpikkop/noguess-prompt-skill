# Day one: setting up a student's machine

Three skills, one method. `noguess` (the TCE + NHA method), `build-first-crm` (a first CRM from
the business truth), `remotion-ffmpeg-video` (a first video). Do these steps once, in order.

## Everyone

1. **Node.js**, the LTS version from nodejs.org (the Windows installer or the Mac package).
   Check in a terminal: `node -v`.
2. **A Supabase account** at supabase.com, free plan. One project per student. Never put two
   students' customers in one project.
3. **An email you control** (it becomes the operator login) and a **password manager** (the
   operator password is shown once).

## Claude Code, on Mac or on Windows PowerShell

```bash
claude plugin marketplace add albertpikkop/noguess-prompt-skill
```

```bash
claude plugin install noguess@ashishpunj
```

```bash
claude plugin install build-first-crm@ashishpunj
```

```bash
claude plugin install remotion-ffmpeg-video@ashishpunj
```

Then connect Supabase to Claude Code. The current command is on
supabase.com/docs/guides/getting-started/mcp; as of September 2026 it is
`claude mcp add --transport http supabase https://mcp.supabase.com/mcp`, and the first use
opens a browser to sign in. The CRM skill checks for this and stops with a plain next step if
it is missing.

## Codex, on Mac or on Windows

1. In Codex, open the plugin list. Enable **Sites**. Install **Supabase** and sign in to your
   Supabase account when it asks.
2. Install the three skills. Either one command per skill:

```bash
npx skills add albertpikkop/noguess-prompt-skill
```

```bash
npx skills add albertpikkop/first-crm-skill
```

```bash
npx skills add albertpikkop/remotion-ffmpeg-video-skill
```

   or by hand: download each repo and copy its `skills/<name>` folder into `~/.codex/skills/`
   on Mac, or `%USERPROFILE%\.codex\skills\` on Windows. For `noguess` copy both `noguess`
   and `tce` (the `/tce` command). Codex lists the skills on its next start.

## For the video skill only

- **FFmpeg.** Mac: `brew install ffmpeg`. Windows: `winget install Gyan.FFmpeg`, then close
  and reopen the terminal. Check: `ffmpeg -version`.
- **Python 3.** Mac already has it (`python3 --version`). Windows:
  `winget install Python.Python.3.12`, then check `py -3 --version`.
- The skill scaffolds the Remotion project itself and asks before installing anything.

## The check that it worked

In the agent, type: `TCE this: I want to build a booking page for my salon`. The reply must
be the six steps (what it understood, facts vs assumptions, missing, biggest unknown, three
questions, one small move) and nothing built. Then say `yes`, and the CRM skill should take
over from the truth file without asking the same questions again.
