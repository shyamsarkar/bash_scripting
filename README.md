# Bash Scripting Roadmap (Using zsh)

A **practical, interview-ready roadmap** to master **Bash scripting** while using **zsh** as your daily interactive shell.

> **Philosophy**: Use `zsh` for productivity, write **portable Bash scripts** that run reliably on servers, CI/CD pipelines, and production systems.

---

## Who is this for?

* Backend developers
* DevOps / SRE beginners
* Linux users moving toward automation
* Candidates preparing for Bash scripting interviews

---

## Phase 0: Setup & Mindset (Non‑Negotiable)

* [ ] Use **zsh** as the interactive shell
* [ ] Write scripts in **bash** (avoid zsh-only syntax)
* [ ] Use shebang: `#!/usr/bin/env bash`
* [ ] Make scripts executable: `chmod +x script.sh`
* [ ] Run scripts using: `./script.sh`

**Why?** Most production systems and CI runners assume Bash, not zsh.

---

## Phase 1: Shell Basics

* [ ] `ls`, `cd`, `pwd`, `tree`
* [ ] `cp`, `mv`, `rm`, `mkdir`
* [ ] `cat`, `less`, `head`, `tail`
* [ ] `wc`, `sort`, `uniq`
* [ ] Pipes (`|`)
* [ ] Output redirection (`>`, `>>`)
* [ ] Input redirection (`<`)
* [ ] Error redirection (`2>`, `&>`)

---

## Phase 2: Variables & Input

* [ ] Define variables
* [ ] `echo`
* [ ] Read input using `read`
* [ ] Environment variables
* [ ] `export`
* [ ] Command substitution `$(...)`
* [ ] Quoting: `' '` vs `" "`
* [ ] Arrays
* [ ] Special variables (`$?`, `$$`, `$!`, `$RANDOM`)

---

## Phase 3: Conditions & Exit Codes

* [ ] Exit codes
* [ ] `$?`
* [ ] `if / else / elif`
* [ ] Numeric comparison
* [ ] String comparison
* [ ] File exists (`-f`)
* [ ] Directory exists (`-d`)
* [ ] Empty (`-z`) / Non-empty (`-n`)
* [ ] `test` vs `[ ]` vs `[[ ]]`
* [ ] `case` statement

---

## Phase 4: Loops

* [ ] `for` loop
* [ ] C-style `for (( ))`
* [ ] `while` loop
* [ ] `until` loop
* [ ] Loop over files
* [ ] Loop over arguments
* [ ] Read file line-by-line
* [ ] `break` / `continue`

---

## Phase 5: Functions & Arguments

* [ ] Define functions
* [ ] Function arguments
* [ ] Return status codes
* [ ] `$0` (script name)
* [ ] `$1`, `$2`, ...
* [ ] `$@`
* [ ] `$#`

---

## Phase 6: Text Processing (Very Important)

* [ ] `grep`
* [ ] `grep` with regex
* [ ] `sed` replace
* [ ] `sed` inline edit
* [ ] `awk` print columns
* [ ] `awk` with conditions
* [ ] `cut`
* [ ] `tr`
* [ ] `xargs`
* [ ] `paste`
* [ ] `column`

---

## Phase 7: Process & Job Management

* [ ] `ps`
* [ ] `top`
* [ ] `kill`
* [ ] Signals (`SIGTERM`, `SIGKILL`)
* [ ] Background jobs (`&`)
* [ ] `jobs`
* [ ] `fg` / `bg`

---

## Phase 8: Error Handling & Debugging

* [ ] `set -e`
* [ ] `set -u`
* [ ] `set -o pipefail`
* [ ] Strict mode
* [ ] Debug mode (`bash -x`)
* [ ] `trap`
* [ ] Defensive scripting

---

## Phase 9: Real‑World Scripts

* [ ] Log cleanup script
* [ ] Backup script
* [ ] Deployment script
* [ ] Health check script
* [ ] Cron job script
* [ ] File watcher script
* [ ] Argument validation script

---

## Phase 10: zsh Productivity (Optional)

* [ ] Aliases
* [ ] `oh-my-zsh`
* [ ] Git plugin
* [ ] Auto‑completion
* [ ] Prompt customization

---

## Interview Readiness Checklist

* [ ] Write scripts from scratch
* [ ] Explain exit codes clearly
* [ ] Use `grep` / `sed` / `awk`
* [ ] Debug broken scripts
* [ ] Automate repetitive tasks

---

## Final Goal

* [ ] Production‑ready Bash scripts
* [ ] Backend automation
* [ ] DevOps‑friendly scripting
* [ ] Confidence in Bash interviews

---

📁 **Next Files**

* `sample-scripts.md` → Hands-on Bash examples
* `interview-crash-plan.md` → 7–10 day interview prep plan
