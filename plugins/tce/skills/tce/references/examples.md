# TCE worked examples

Read the sorting drill first. Then the example closest to the ask in front of you.

## The sorting drill: where each line goes

Raw ask, as it arrived (Hindi, roman script): "Mera salon Sector 34 mein hai. Ek booking
form banao. Mobile par chalna chahiye. Abhi bookings WhatsApp par aati hain."

| Line | Where | Why |
|---|---|---|
| My salon is in Sector 34 | Context | a fact that is already true |
| Make a booking form | Task | the job, starts with a verb |
| It must work on mobile | Expectations | a rule the answer must obey |
| Bookings come on WhatsApp today | Context | a fact about what exists |

Context, done right, is only the facts: "My salon is in Sector 34. Six chairs, two staff.
Bookings come on WhatsApp today." No orders in it.

## 0. First contact: the gap analysis

Raw: "hi i run a tuition centre, 40 students, they pay monthly in cash, i keep attendance
in a register. i want an app where parents get a whatsapp reminder for fees and i can
mark attendance on my phone. can you build it for me"

Nothing gets built. The agent builds its context first, in plain text:

> Yes, and not today: if I build now I would be guessing half of it. Here is what I have and what I do not.
>
> 1. What I understood: you run a tuition centre with 40 students. Fees are monthly, in
>    cash. Attendance is on paper. You want two things on your phone: fee reminders that
>    reach parents on WhatsApp, and a way to mark attendance.
>
> 2. Facts vs assumptions
>    Facts: 40 students. Monthly fees. Cash. Paper register. WhatsApp reminders to parents.
>    Attendance marked on your phone.
>    Assumptions:
>    Assumption: one centre, one teacher (you).
>    Assumption: parents already have WhatsApp numbers you hold somewhere.
>    Assumption: a reminder is a text message, not a payment link.
>    Assumption: the phone is Android.
>
> 3. Missing or unclear: where the parents' numbers live today. What "monthly" means (a
>    fixed date, or 30 days from joining). Whether you want to record the payment too, or
>    only remind. Who else marks attendance. Whether a fee reminder on WhatsApp has ever
>    been sent to these parents before.
>
> 4. Your biggest unknown: whether parents will answer a WhatsApp reminder from a number
>    they do not know. That decides whether the reminder comes from your own phone or from
>    a business number, and that decides most of the build.
>
> 5. Three easiest questions to answer next:
>    a. Where are the parents' phone numbers right now: a diary, your phone contacts, a
>       sheet?
>    b. On what date do fees fall due for most students?
>    c. In a normal month, how many of the 40 pay late?
>
> 6. One small next move: this week, send the reminder by hand from your own phone to
>    the parents who paid latest last month, with one fixed message, and count who pays
>    within three days. That number tells us what to build.

Nothing is created until they say yes. The answers to a, b and c become the first
truth file; the first TCE is written after that.

## 1. Change one thing on something live (the button)

Raw: "the submit button on my booking page should be green not blue, and please do not
wreck the layout again"

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

Gaps to close before sending: the page URL.

Point 5 is the most important line. First tell, then change.

## 2. A brain dump into a build prompt

Raw: "help me improve this. I talked to a client, sales is messy, give me a plan."

That ask makes the machine guess the job, the facts, the format, the gaps and the risks.
Sorted:

```text
TASK
Write a one-page plan to fix the sales process at [PENDING: client name], based only on the notes below.

CONTEXT
- The notes: my call notes, pasted below.
- The client: [PENDING: what they sell, team size, city].
- What "messy" means today, in their words: [PENDING: the three symptoms they named].
- What they have tried: [PENDING].
- Assumptions I am making: the plan is for the owner, not the sales team; they use WhatsApp, not a CRM.

EXPECTATIONS
1. Output: one page, four sections: what is happening, why, the first three moves, what to measure.
2. Every move must be something the owner can start this week without hiring.
3. Mark anything you need but do not have as [PENDING: ...]. Do not guess names, numbers or tools.
4. Do not recommend software by brand name unless the notes mention it.
5. Before you write, say if any assumption above is wrong, then ask me up to three questions whose answers would change the plan, and wait.
```

Gaps to close before sending: client name, the three symptoms, what they tried.

The gaps are the point. Before the sort they were hidden inside "sales is messy". After
it they are a list of three things to go and find.

## 3. An everyday ask (the leave email)

Raw: "write my leave email"

```text
TASK
Write a short leave email to my manager for two days.

CONTEXT
- Manager: [PENDING: name]. My name: [PENDING].
- Dates: [PENDING: from and to]. Reason: a family matter.
- Handover: [PENDING: colleague name] will cover my tickets.
- Tone in my office: formal but warm, English.

EXPECTATIONS
1. Under 80 words. Subject line included.
2. Say "a family matter" and nothing more about the reason.
3. Name the handover person and the dates.
4. Do not promise that I will be reachable.
5. If any [PENDING] is still blank, leave it as [PENDING]. Do not invent it.
```

## 4. A developer ask (the login bug)

Raw: "fix the login bug"

```text
TASK
Find and fix the bug where a correct password is rejected on the second login attempt in the web app.

CONTEXT
- The truth files: AGENTS.md, then src/auth/login.ts and src/auth/session.ts.
- Stack: Next.js 14, Supabase auth, deployed on Cloudflare Pages.
- How to reproduce: log in, log out, log in again with the same correct password; the second attempt returns "invalid credentials". Started after commit [PENDING: hash].
- Error from the browser console: [PENDING: paste it exactly].
- What is already correct: sign-up, password reset, the first login.

EXPECTATIONS
1. Read the truth files first. Then explain the cause in three lines before changing anything.
2. Smallest change that fixes it. No refactors, no new libraries.
3. Do not touch sign-up, password reset or the session cookie settings.
4. Show the exact diff and how you tested the second-login case.
5. If you cannot reproduce it from what is here, stop and write [PENDING: what you need].
```

## 5. A reply to a customer (business)

Raw: "this lead asked if the course is online, reply to him"

```text
TASK
Draft a WhatsApp reply to a lead who asked whether the course is online.

CONTEXT
- His exact message: "[PENDING: paste it]".
- The truth: the classes are in person at the address on the site; the first class is free; fees are paid by bank transfer.
- He has not attended a class yet.

EXPECTATIONS
1. Four sentences at most. Plain English, or match his language if he wrote in another one.
2. Answer the question first, then invite him to the free class.
3. No urgency, no "limited seats", no income or job promises.
4. End with one question that moves him to a date.
5. Do not invent a schedule. If the next class date is not in the facts, write [PENDING: date].
```

## The check, applied (example 1, after the machine answered)

The machine returned a green button, and also "cleaned up" the spacing.

```text
Invented (not in the spec or the facts): changed the padding on the form fields.
Checks: button is green: met. Before/after screenshot shows no other difference: not met.
Assumed without being told: that spacing was open to improvement.
Why: no do-not line covered spacing, so it was fair game.
The fix: revert the padding. Nothing else.
```
