#!/usr/bin/env bash
# Second Brain — setup script
# Copies every *.template.md to its real name and creates the working folders.
# Safe to re-run: it never overwrites a file that already exists.

set -e
cd "$(dirname "$0")"

echo "Setting up your Second Brain..."

# Create the working folders.
mkdir -p memory/people memory/groups audits

# Copy templates to real filenames (strip the .template part).
find . -name "*.template.md" -print0 | while IFS= read -r -d '' f; do
  target="${f/.template.md/.md}"
  # The example person page becomes a real starter page under a plain name.
  target="${target/example-person.md/person-example.md}"
  if [ -e "$target" ]; then
    echo "  skip (already exists): $target"
  else
    cp "$f" "$target"
    echo "  created: $target"
  fi
done

echo ""
echo "Done. Next steps:"
echo "  1. Fill in USER.md first — who you are, what to call you, your timezone."
echo "  2. Skim SOUL.md and AGENTS.md and adjust the tone and rules to fit you."
echo "  3. Start today's log: memory/$(date +%F).md (copy the pattern from memory/daily-log.md)."
echo "  4. Add entries only when they are real. Empty is honest. Invented is poison."
echo ""
echo "Privacy note: your filled-in files are already in .gitignore."
echo "They will not be committed unless you remove them from it on purpose."
