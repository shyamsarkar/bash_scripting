cat > fruits.txt << EOF
banana
apple
cherry
apple
mango
banana
banana
cherry
grape
apple
EOF

cat > scores.txt << EOF
alice 85
bob 72
charlie 95
alice 60
bob 88
charlie 72
EOF


# ─────────────────────────────────────────
1️⃣ wc — Word / Line / Character Count
# ─────────────────────────────────────────

wc file.txt               # lines, words, bytes (all three)
wc -l file.txt            # count lines only       ← most used
wc -w file.txt            # count words only
wc -c file.txt            # count bytes
wc -m file.txt            # count characters (differs from -c for unicode)

wc -l *.txt               # count lines in ALL .txt files + total

# Pipe usage (very common):
cat fruits.txt | wc -l              # count lines via pipe
grep "ERROR" production.log | wc -l # count how many errors in log
ls | wc -l                          # count files in current directory

# Rails use:
grep "ActiveRecord" log/development.log | wc -l   # count DB queries


# ─────────────────────────────────────────
2️⃣ sort — Sort lines of a file
# ─────────────────────────────────────────

sort file.txt             # sort alphabetically (default)
sort -r file.txt          # reverse order (Z → A)
sort -n file.txt          # sort numerically (not lexicographic)
sort -rn file.txt         # reverse numeric sort (largest first)
sort -u file.txt          # sort + remove duplicates
sort -k2 file.txt         # sort by 2nd column
sort -k2 -n file.txt      # sort by 2nd column numerically
sort -t',' -k2 file.txt   # sort CSV by 2nd column (-t sets delimiter)
sort -f file.txt          # case-insensitive sort
sort -R file.txt          # random shuffle


# ⚠️  sort -n vs sort (lexicographic):
# Without -n:  10 comes before 2 (string comparison "1" < "2")
# With -n:     2 comes before 10 (numeric comparison)

echo -e "10\n2\n20\n1" | sort      # ❌ wrong: 1, 10, 2, 20
echo -e "10\n2\n20\n1" | sort -n   # ✅ correct: 1, 2, 10, 20


# ─────────────────────────────────────────
3️⃣ uniq — Remove consecutive duplicate lines
# ─────────────────────────────────────────

uniq file.txt             # remove consecutive duplicates
uniq -c file.txt          # prefix each line with count      ← most used
uniq -d file.txt          # show only duplicate lines
uniq -u file.txt          # show only unique lines (no duplicates)
uniq -i file.txt          # case-insensitive comparison

# ⚠️  CRITICAL: uniq only removes CONSECUTIVE duplicates
# Always sort first before using uniq

sort fruits.txt | uniq          # sort then deduplicate
sort fruits.txt | uniq -c       # sort then count each fruit
sort fruits.txt | uniq -d       # show only fruits that appear more than once
sort fruits.txt | uniq -u       # show fruits that appear exactly once


# ─────────────────────────────────────────
⚡ Combining — Real Power
# ─────────────────────────────────────────

# Most common pattern: sort | uniq -c | sort -rn
# → gives you a frequency/count leaderboard

sort fruits.txt | uniq -c | sort -rn
# output:
#   3 banana   ← most frequent first
#   3 apple
#   2 cherry
#   1 grape
#   1 mango

# Count unique IPs hitting your server
cat access.log | awk '{print $1}' | sort | uniq -c | sort -rn | head -10

# Count how many unique users in a CSV
cut -d',' -f1 users.csv | sort | uniq | wc -l

# Find most common errors in Rails log
grep "Error" log/production.log | sort | uniq -c | sort -rn | head -20

# Count total lines across all log files
wc -l log/*.log

# Find duplicate lines in a file
sort file.txt | uniq -d


# ─────────────────────────────────────────
🧪 Practice Exercises
# ─────────────────────────────────────────

# 1. Count lines, words, bytes
wc fruits.txt
wc -l fruits.txt

# 2. Sort alphabetically and numerically
sort fruits.txt
sort -r fruits.txt
sort -n numbers.txt
sort -rn numbers.txt

# 3. Unique + count
sort fruits.txt | uniq
sort fruits.txt | uniq -c
sort fruits.txt | uniq -d
sort fruits.txt | uniq -u

# 4. The classic combo — frequency leaderboard
sort fruits.txt | uniq -c | sort -rn

# 5. Count files in current directory
ls | wc -l

# 6. Sort scores by the score column
sort -k2 -n scores.txt
sort -k2 -rn scores.txt    # highest score first