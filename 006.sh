#!/bin/bash

# =============================================================================
# PHASE 2: Variables & Input — Complete Reference Script
# =============================================================================


# -----------------------------------------------------------------------------
# 1. DEFINE VARIABLES
# -----------------------------------------------------------------------------
name="Alice"
age=30
price=9.99

echo "=== 1. Variables ==="
echo "Name : $name"
echo "Age  : $age"
echo "Price: $price"
echo ""


# -----------------------------------------------------------------------------
# 2. ECHO OPTIONS
# -----------------------------------------------------------------------------
echo "=== 2. Echo ==="
echo "Hello World"
echo -n "No newline here → "
echo " (this continues on same line)"
echo -e "Line1\nLine2"
echo -e "Tab\there"
echo ""


# -----------------------------------------------------------------------------
# 3. READ INPUT
# -----------------------------------------------------------------------------
echo "=== 3. Read Input ==="
read -p "Enter your name: " user_name
read -s -p "Enter a password (hidden): " user_pass
echo ""   # newline after silent input
read -t 5 -p "Quick! Type anything (5s timeout): " quick_ans || quick_ans="(timed out)"

echo "Hello, $user_name!"
echo "Password length: ${#user_pass} characters"
echo "Quick answer: $quick_ans"
echo ""


# -----------------------------------------------------------------------------
# 4. ENVIRONMENT VARIABLES
# -----------------------------------------------------------------------------
echo "=== 4. Environment Variables ==="
echo "HOME    : $HOME"
echo "USER    : $USER"
echo "SHELL   : $SHELL"
echo "PWD     : $PWD"
echo "HOSTNAME: $HOSTNAME"
echo ""


# -----------------------------------------------------------------------------
# 5. EXPORT
# -----------------------------------------------------------------------------
echo "=== 5. Export ==="
MY_LOCAL="I am local"
export MY_EXPORTED="I am exported"

echo "Without export → child sees nothing:"
bash -c 'echo "  MY_LOCAL   : ${MY_LOCAL:-(empty)}"'

echo "With export → child sees the value:"
bash -c 'echo "  MY_EXPORTED: $MY_EXPORTED"'
echo ""


# -----------------------------------------------------------------------------
# 6. COMMAND SUBSTITUTION
# -----------------------------------------------------------------------------
echo "=== 6. Command Substitution ==="
current_date=$(date +"%Y-%m-%d")
current_time=$(date +"%H:%M:%S")
file_count=$(ls -1 | wc -l | tr -d ' ')
current_user=$(whoami)

echo "Date       : $current_date"
echo "Time       : $current_time"
echo "Files here : $file_count"
echo "Logged in  : $current_user"
echo ""


# -----------------------------------------------------------------------------
# 7. QUOTING: single vs double
# -----------------------------------------------------------------------------
echo "=== 7. Quoting ==="
word="World"

echo "Double quotes → expands : Hello $word"
echo 'Single quotes → literal : Hello $word'
echo "Double → command sub works : Today is $(date +%A)"
echo 'Single → command sub literal: Today is $(date +%A)'

file="my file.txt"
echo "Always quote variables with spaces: \"$file\""
echo ""


# -----------------------------------------------------------------------------
# 8. ARRAYS
# -----------------------------------------------------------------------------
echo "=== 8. Arrays ==="
fruits=("apple" "banana" "cherry" "mango")

echo "First element  : ${fruits[0]}"
echo "Second element : ${fruits[1]}"
echo "Last element   : ${fruits[-1]}"
echo "All elements   : ${fruits[@]}"
echo "Array length   : ${#fruits[@]}"
echo "Slice [1..2]   : ${fruits[@]:1:2}"

fruits+=("grape")
echo "After append   : ${fruits[@]}"

echo "Loop:"
for fruit in "${fruits[@]}"; do
  echo "  - $fruit"
done
echo ""


# -----------------------------------------------------------------------------
# 9. SPECIAL VARIABLES
# -----------------------------------------------------------------------------
echo "=== 9. Special Variables ==="

# $? — exit status
ls /tmp > /dev/null 2>&1
echo "\$? after successful ls  : $?"

ls /nonexistent_path > /dev/null 2>&1
echo "\$? after failed ls      : $?"

# $$ — current PID
echo "\$\$ (this script's PID)  : $$"

# $! — last background PID
sleep 2 &
echo "\$! (background PID)     : $!"
wait   # wait for background job to finish

# $RANDOM
echo "\$RANDOM (raw)           : $RANDOM"
echo "\$RANDOM mod 100         : $((RANDOM % 100))"

# Random array element using $RANDOM
colors=("red" "green" "blue" "yellow" "purple")
random_color=${colors[$((RANDOM % ${#colors[@]}))]}
echo "Random color from array : $random_color"
echo ""


# -----------------------------------------------------------------------------
# SUMMARY DEMO — Everything together
# -----------------------------------------------------------------------------
echo "=== SUMMARY ==="
echo "Script name : $0"
echo "User        : $user_name"
echo "Date & Time : $(date +"%Y-%m-%d %H:%M:%S")"
echo "App ENV     : ${APP_ENV:-not set}"
echo "Done!"