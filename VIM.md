# VIM Editor
---

## 📌 Vim Modes (MOST IMPORTANT)

Vim works in **modes**. Understanding modes is the key to using Vim.

| Mode         | Purpose                          |
|--------------|----------------------------------|
| Normal mode  | Navigation, commands              |
| Insert mode  | Typing text                       |
| Visual mode  | Selecting text                    |
| Command mode | Saving, quitting, searching       |

👉 Vim **starts in Normal mode**

---

## ✍️ Insert Mode (Start Typing)

From **Normal mode**, press:

| Key | Action                  |
|-----|-------------------------|
| i   | Insert before cursor    |
| I   | Insert at start of line |
| a   | Insert after cursor     |
| A   | Insert at end of line   |
| o   | New line below          |
| O   | New line above          |

➡️ Stop typing → press **Esc** (back to Normal mode)

---

## 💾 Save & Quit (Very Important)

Press **Esc** first, then type:

| Command           | Meaning              |
|-------------------|----------------------|
| `:w`              | Save file            |
| `:q`              | Quit                 |
| `:wq`             | Save & quit          |
| `:q!`             | Quit without saving  |
| `:w filename.txt` | Save as new file     |

Press **Enter** after each command.

---

## 🧭 Move Around (Normal Mode)

| Key | Action            |
|-----|-------------------|
| h   | Left              |
| l   | Right             |
| j   | Down              |
| k   | Up                |
| w   | Next word         |
| b   | Previous word     |
| 0   | Start of line     |
| `$` | End of line       |
| gg  | Top of file       |
| G   | Bottom of file    |

---

## ✂️ Delete, Copy, Paste

### Delete

| Command | Action                  |
|--------|-------------------------|
| x      | Delete character        |
| dd     | Delete line             |
| dw     | Delete word             |
| d$     | Delete till end of line |

### Copy (Yank)

| Command | Action     |
|--------|------------|
| yy     | Copy line  |
| yw     | Copy word  |

### Paste

| Command | Action               |
|--------|----------------------|
| p      | Paste after cursor   |
| P      | Paste before cursor  |

---

## ↩️ Undo & Redo

| Command  | Action |
|----------|--------|
| u        | Undo   |
| Ctrl + r | Redo   |

---

## 🔍 Search Text

Search forward:

```vim
/text

Press n → next match

Press N → previous match

```

## 🔟 Visual Mode (Select text)
Command	Action
v	Character selection
V	Line selection
Ctrl + v	Block selection

Then press:

d → delete

y → copy

## 1️⃣1️⃣ Replace Text

Replace all old with new:

:%s/old/new/g

## 1️⃣2️⃣ Exit Vim if you’re stuck (without saving)

Press:
```
Esc
:q!
```

## 1️⃣3️⃣ Best Way to Learn Vim (Highly Recommended)

Run:

```
vimtutor
```