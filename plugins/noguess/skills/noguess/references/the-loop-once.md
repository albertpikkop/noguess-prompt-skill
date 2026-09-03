# The whole loop, once

One fictional case, start to finish, so the sequence is visible: TCE #0, the review, the
truth file, TCE #1, the check. Read this when someone asks "where is the actual TCE" after
seeing a gap analysis.

## 1. TCE #0, the gap analysis

The owner's first message: "hi i run a tuition centre, 40 students, they pay monthly in
cash, i keep attendance in a register. i want an app where parents get a whatsapp reminder
for fees and i can mark attendance on my phone. can you build it for me"

The skill runs TCE #0 (Task: tell me what you understood. Context: the message. Expectations:
the six steps, invent nothing, label every guess, wait). The output is the six-step answer
in `examples.md`, section 0. Nothing is built.

## 2. The review

The owner answers in one message: "numbers are in my phone contacts, saved as the child's
name. fees due on the 5th for everyone. i remind by calling, about 12 pay late every month.
one centre, only me. and the phone is android, yes."

One assumption is struck: "a reminder means a text message, not a payment link" stays, but
"fees stay in cash" is corrected: "if a UPI link is easy, why not." Everything else survives.

## 3. The truth file

Written once, in the owner's notes app, from what survived. This is NHA at work: raw
message (notes) became checked facts (facts) became one document (file).

```text
TUITION CENTRE, THE FACTS (v0, 3 Sep)
- One centre, one teacher: the owner. Android phone.
- 40 students. Fees monthly, due on the 5th for everyone. Cash today; UPI welcome.
- Parents' numbers: in the owner's phone contacts, saved under the child's name.
- Attendance: paper register, marked by the owner only.
- Reminders today: by phone call. About 12 of 40 pay late each month.
- Wanted: fee reminders to parents on WhatsApp; attendance marked on the phone.
- Unknown, still: whether parents answer a WhatsApp from a number they do not know.
  Being tested by hand this week (the small next move from TCE #0).
```

## 4. TCE #1, the first task

The smallest slice that pays: not the app, the list. Who has not paid this month, on the
phone, so the reminders can go out by hand while the unknown gets answered.

```text
TASK
Build one sheet that shows me, on my phone, which of my 40 students have not paid this month.

CONTEXT
- The truth file: TUITION CENTRE, THE FACTS (v0), pasted below this prompt.
- What exists today: nothing digital. Names and fees are in my head and the register.
- The student list: [PENDING: I will type the 40 names and the fee for each into the sheet myself].
- Assumptions I am making: one fee per student; a payment is a date typed next to a name; the
  sheet lives in my Google account and opens in the Sheets app on my phone.

EXPECTATIONS
1. Read the truth file first and follow it. If it conflicts with this prompt, it wins.
2. If any assumption above is wrong, say so before you start.
3. Output: one Google Sheet with one tab. Columns: student, parent's name, monthly fee, paid on
   (a date, blank if unpaid). A second tab that lists only the unpaid ones for this month.
4. Checks I will run: I open the sheet on my phone, type a date next to one name, and that name
   leaves the unpaid list.
5. Do not add columns, tabs, colours or formulas I did not ask for.
6. Do not send anything to any parent. This sheet sends nothing.
7. Out of scope: WhatsApp, attendance, receipts, the app.
8. If anything is missing, stop and write [PENDING: what you need]. Do not guess it.
9. Before you create anything, tell me what you will create, then wait for my yes.
```

Gaps to close before sending: none the machine can fill; the names are mine to type.
When the answer comes back, paste it here and say check it.

## 5. The check

The machine returned the sheet, and also added a "days late" column with a red fill.

```text
Invented (not in the spec or the facts): a "days late" column; red fill on late rows.
Checks: one tab with the four columns: met. A second tab listing only the unpaid: met.
Typing a date removes the name from the unpaid list: met. No extra columns, tabs, colours
or formulas: not met. Sends nothing: met.
Assumed without being told: that a late count would help.
Why: no do-not line covered "helpful additions" by name; rule 5 was read as advice.
The fix: remove the "days late" column and the red fill. Nothing else.
Next time: add "Do not add anything you think would help. If you think of one, tell me."
```

The "Next time" line goes into the truth file under rules, so TCE #2 carries it from the
start. That is the loop: every check makes the next prompt better without anyone
remembering to.
