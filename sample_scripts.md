# Sample Bash Scripts

This file contains **clean, practical Bash script examples** aligned with the roadmap phases.

> All scripts assume **Bash**, even if you use **zsh** interactively.

---

## 1️⃣ Hello World & Basics

```bash
#!/usr/bin/env bash

echo "Hello, Bash World!"
```

---

## 2️⃣ Variables & Input

```bash
#!/usr/bin/env bash

name="Shyam"
echo "Hello, $name"

read -p "Enter your role: " role
echo "Role: $role"
```

---

## 3️⃣ Exit Codes & Conditions

```bash
#!/usr/bin/env bash

if [[ $# -eq 0 ]]; then
  echo "No arguments passed"
  exit 1
fi

echo "Arguments received"
exit 0
```

---

## 4️⃣ File & Directory Checks

```bash
#!/usr/bin/env bash

file="data.txt"

dir="logs"

[[ -f "$file" ]] && echo "File exists"
[[ -d "$dir" ]] || echo "Directory missing"
```

---

## 5️⃣ Loops

### Loop Over Arguments
```bash
#!/usr/bin/env bash

for arg in "$@"; do
  echo "Arg: $arg"
done
```

### Read File Line by Line
```bash
#!/usr/bin/env bash

while read -r line; do
  echo "Line: $line"
done < input.txt
```

---

## 6️⃣ Functions

```bash
#!/usr/bin/env bash

greet() {
  echo "Hello, $1"
}

greet "World"
```

---

## 7️⃣ Text Processing

### grep + awk
```bash
ps aux | grep root | awk '{print $2, $11}'
```

### sed Replace
```bash
sed 's/error/warning/g' app.log
```

---

## 8️⃣ Process Management

```bash
#!/usr/bin/env bash

sleep 60 &
pid=$!
echo "Background PID: $pid"

kill "$pid"
```

---

## 9️⃣ Strict Mode & Trap

```bash
#!/usr/bin/env bash

set -euo pipefail

trap 'echo "Error on line $LINENO"' ERR

echo "Running safely"
```

---

## 🔟 Real-World Scripts

### Log Cleanup Script
```bash
#!/usr/bin/env bash

LOG_DIR="/var/log/myapp"
DAYS=7

find "$LOG_DIR" -type f -mtime +$DAYS -delete
```

---

### Backup Script
```bash
#!/usr/bin/env bash

SRC="$HOME/data"
DEST="$HOME/backup/data_$(date +%F).tar.gz"

tar -czf "$DEST" "$SRC"
```

---

### Health Check Script
```bash
#!/usr/bin/env bash

services=(nginx docker ssh)

for svc in "${services[@]}"; do
  systemctl is-active --quiet "$svc" \
    && echo "$svc is running" \
    || echo "$svc is DOWN"
done
```

---

### Argument Validation Script
```bash
#!/usr/bin/env bash

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

echo "File: $1"
```

---

## How to Practice
- Rewrite scripts without looking
- Add logging
- Add argument validation
- Run with `bash -x`

---

📌 **Next File**: `interview-crash-plan.md` (7–10 day focused prep)

