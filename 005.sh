#!/bin/bash

# ================================
# Shell Redirection & Pipe Cheat Sheet
# ================================

# Operators:
# |   : Pipe             → stdout of left → stdin of right
# >   : Output redirect  → stdout → file (overwrite)
# >>  : Append           → stdout → file (append)
# <   : Input redirect   → file → stdin
# 2>  : Error redirect   → stderr → file
# &>  : All redirect     → stdout + stderr → file

# -------------------------------
# Examples
# -------------------------------

# Pipe example
cat log.txt | grep "ERROR" | wc -l

# Output overwrite
ls -la > files.txt

# Append output
echo "done" >> log.txt

# Input redirect
mysql -u root db < schema.sql

# Separate stdout and stderr
ruby app.rb > out.txt 2> err.txt

# Redirect both stdout and stderr
ruby app.rb &> all.txt

# -------------------------------
# Key Rule:
# -------------------------------
# | connects processes to each other
# Redirection operators connect a process to a file
