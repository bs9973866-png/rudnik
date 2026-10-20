#!/usr/bin/env bash
set -euo pipefail

python3 - <<'PY'
from pathlib import Path
import re

res = Path("app_pojavlauncher/src/main/res")
for path in res.glob("values*/strings.xml"):
    text = path.read_text(encoding="utf-8")
    text = re.sub(
        r'(<string\s+name="(?:app_name|app_short_name)"[^>]*>).*?(</string>)',
        r'\1Рудник\2',
        text,
        flags=re.DOTALL,
    )
    # Replace old launcher branding in user-facing Android strings only.
    text = re.sub(r'Pojav\s*Launcher', 'Рудник', text, flags=re.IGNORECASE)
    text = re.sub(r'Pojav', 'Рудник', text, flags=re.IGNORECASE)
    path.write_text(text, encoding="utf-8")
PY
