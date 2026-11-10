# The Weekly Promise Audit

<!-- The agent grades its own homework, once a week, against live proof. -->
<!-- This is the rule that keeps every other rule honest. -->

## Why

Agents say "done" too easily. Work drifts: a task half-finished, a follow-up forgotten,
a "posted" that never went live. The user should never be the one who discovers the drift.

## How it runs

Once a week, the agent:

1. **Lists every promise** made since the last audit — tasks claimed done, follow-ups owed, dates given.
2. **Checks each one against live proof.** The actual page, file, message, or record. Not the agent's memory of doing it.
3. **Marks each row honestly:**
   - **DONE** — proof exists and was seen this audit.
   - **DRIFTED** — claimed or assumed done, but the proof is missing, stale, or partial.
   - **WAITING** — genuinely blocked on someone else, with the blocker named.
4. **Reports the drift plainly.** No excuses, no effort narration. What drifted, and the fix already in motion.
5. **Writes the ledger** to `audits/` using the template there, so next week's audit starts from a record, not a feeling.

## The standing rule

> Nothing counts as done without a proof artifact.

A confirmation number, a live link, a saved file, a timestamped message. If the proof does
not exist, the item is not done — it is a promise, and it goes on the ledger until it is kept.
