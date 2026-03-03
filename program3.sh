# ─────────────────────────────────────────
1️⃣ cat — Print file content to terminal
# ─────────────────────────────────────────

cat file.txt              # print entire file
cat -n file.txt           # print with line numbers
cat -A file.txt           # show hidden chars (tabs ^I, line endings $)
cat file1.txt file2.txt   # join and print multiple files

# ⚠️  Don't use cat on huge files — it floods your terminal


# ─────────────────────────────────────────
2️⃣ less — Scrollable file viewer (interactive)
# ─────────────────────────────────────────

less file.txt             # open file in viewer
less +G file.txt          # open at the END of file
less +F file.txt          # follow mode (like tail -f, live updates)

# Inside less — keyboard shortcuts:
# Space / f   → page down
# b           → page up
# G           → jump to end
# g           → jump to start
# /pattern    → search forward
# ?pattern    → search backward
# n           → next search match
# N           → previous match
# q           → quit

# ✅ Use less for large log files — fast even on huge files
# ✅ Doesn't load full file into memory (unlike cat)


# ─────────────────────────────────────────
3️⃣ head — First N lines of a file
# ─────────────────────────────────────────

head file.txt             # first 10 lines (default)
head -n 20 file.txt       # first 20 lines
head -n -5 file.txt       # everything EXCEPT last 5 lines
head -c 100 file.txt      # first 100 bytes

# Real-world use:
head -n 1 data.csv        # peek at CSV column headers
head -n 5 production.log  # check beginning of a log file


# ─────────────────────────────────────────
4️⃣ tail — Last N lines of a file
# ─────────────────────────────────────────

tail file.txt             # last 10 lines (default)
tail -n 20 file.txt       # last 20 lines
tail -n +5 file.txt       # everything FROM line 5 onwards
tail -c 100 file.txt      # last 100 bytes

# 🔥 tail -f — Follow mode (most important!)
tail -f server.log           # live stream new lines as file grows
tail -f -n 50 server.log     # start with last 50 lines, then follow

# As a Rails dev you'll use this constantly:
tail -f log/development.log
tail -f log/production.log


# ─────────────────────────────────────────
⚡ Combining — Real Power
# ─────────────────────────────────────────

# See lines 40–60 of a file
head -n 60 file.txt | tail -n 20

# Live grep on logs — only show ERROR lines as they come in
tail -f production.log | grep "ERROR"

# Count total lines in a file
cat file.txt | wc -l

# Peek at a CSV without opening the whole file
head -n 5 bigdata.csv

# Show last 5 lines of multiple log files at once
tail -n 5 log/*.log


# ─────────────────────────────────────────
🧪 Practice Exercises
# ─────────────────────────────────────────

seq 1 100 > numbers.txt           # create test file with 100 lines

cat numbers.txt                   # dump all 100 lines
head numbers.txt                  # lines 1–10
tail numbers.txt                  # lines 91–100
head -n 20 numbers.txt | tail -n 5   # lines 16–20
less numbers.txt                  # scroll around → press q to quit
tail -f numbers.txt               # follow mode → Ctrl+C to stop