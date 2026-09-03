#!/usr/bin/env bash
# Release a new version of the noguess skill.
#   scripts/release.sh 0.2.0 "one line on what changed"
# Does, in order: checks the working tree is clean except CHANGELOG, bumps the version in
# plugin.json, packages dist/noguess.skill (the skill folder without evals), commits, tags,
# pushes, and creates the GitHub release with the .skill attached.
set -euo pipefail
V="${1:?version like 0.2.0}"; NOTE="${2:?one line on what changed}"
cd "$(dirname "$0")/.."
grep -q "## v$V" CHANGELOG.md || { echo "add a '## v$V' section to CHANGELOG.md first"; exit 1; }
grep -rq -E "—|–" plugins/noguess/skills/noguess && { echo "em or en dash found in the skill; the method bans them"; exit 1; }
python3 - "$V" <<'PY'
import json, sys
p = "plugins/noguess/.claude-plugin/plugin.json"; d = json.load(open(p)); d["version"] = sys.argv[1]
json.dump(d, open(p, "w"), indent=2); open(p, "a").write("\n")
PY
mkdir -p dist; rm -f dist/noguess.skill
( cd plugins/noguess/skills && zip -qr ../../../dist/noguess.skill noguess -x "noguess/evals/*" "*/.DS_Store" )
git add -A; git commit -q -m "noguess v$V: $NOTE"
git tag -a "v$V" -m "v$V: $NOTE"; git push -q origin main; git push -q origin "v$V"
gh release create "v$V" dist/noguess.skill --title "noguess v$V" --notes "$NOTE. Full notes in CHANGELOG.md."
echo "released v$V. Students update with: claude plugin marketplace update ashishpunj && claude plugin install noguess@ashishpunj"
