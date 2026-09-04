# Day one: setting up a student's machine

Three skills, one method. `noguess` (the TCE + NHA method), `build-first-crm` (a first CRM from
the business truth), `remotion-ffmpeg-video` (a first video). Do these steps once, in order.

## Everyone

1. **Node.js**, the LTS version from nodejs.org (the Windows installer or the Mac package).
   Check in a terminal: `node -v`.
2. **A Supabase account** at supabase.com, free plan. One project per student. Never put two
   students' customers in one project.
3. **An email you control** (it becomes the operator login) and a **password manager**. The
   CRM skill gives you a temporary password in the chat; change it after your first login.
4. **A free static host account**, Cloudflare Pages is fine (pages.cloudflare.com), for the
   page the CRM skill builds. Codex students who enable Sites can skip this.
5. **One folder for the business.** Make it, open the agent inside it, and keep using it.
   `BUSINESS-TRUTH.md`, the file all three skills share, lives there.
6. **Optional, for the two emails on each enquiry**: a free Resend account (resend.com). To
   email your customers rather than only yourself, you also need a domain you own and verify
   in Resend; until then the skill sends only the operator email and says so.

On a fresh Mac, `brew` (brew.sh) comes first; the FFmpeg step needs it, and the first
`python3` command may ask to install Apple's command line tools: say yes.

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

1. Sites is optional. The CRM skill's static path works in Codex on a free static host, so
   a student can skip Sites entirely. If you want Sites, enable it in Codex's plugin settings
   (the menu differs by version). Either way, install the Supabase plugin in Codex and sign
   in to your Supabase account when it asks.
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
   and `tce` (the `/tce` command). On a machine that has both Claude Code and Codex, use the
   by-hand copy for Codex, so the skills cannot land in the wrong agent. Restart Codex; it
   lists the skills on its next start.

## For the video skill only

- **FFmpeg.** Mac: `brew install ffmpeg`. Windows: `winget install Gyan.FFmpeg`, then close
  and reopen the terminal. Check: `ffmpeg -version`.
- **Python 3.** Mac already has it (`python3 --version`). Windows:
  `winget install Python.Python.3.12`, then check `py -3 --version`.
- The skill scaffolds the Remotion project itself and asks before installing anything.

## Updating later

The marketplace command refreshes the list, but a plugin that lives in its own repo is only
replaced by a clean reinstall. To move all three to the newest version:

```bash
claude plugin marketplace update ashishpunj
```

```bash
claude plugin uninstall build-first-crm && claude plugin install build-first-crm@ashishpunj
```

The same two words, uninstall then install, for `remotion-ffmpeg-video`. Check which version is
live with `claude plugin details build-first-crm@ashishpunj`.

## The check that it worked

In the agent, inside the business folder, type: `TCE this: I want an enquiry page for my
salon`. The reply must be the six steps (what it understood, facts vs assumptions, missing,
biggest unknown, three questions, one small move) and nothing built. Answer the three
questions, or say `skip`. It shows you `BUSINESS-TRUTH.md`; say `yes` to that. Then type
`build my first CRM`: the CRM skill must take over from the file without asking the same
questions again. For the video skill: `make a 6 second test video` must start with the
machine check, not a render.
