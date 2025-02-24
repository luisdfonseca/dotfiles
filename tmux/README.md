# TMUX

## setup 

``` bash
sudo apt update
sudo apt install tmux

#mac
brew install tmux
```


## Commands

``` bash
# start
tmux
tmux new -s session_name

# detach
'Ctrl+b'+'d'

# reattach
tmux attach -t session_name

# list sessions
tmux ls
```

### Managing Windows in tmux
- **Create a New Window**: Once inside a tmux session, you can create a new window by pressing Ctrl+b followed by c. This will create a new window within the same session.

- **Switch Between Windows**: To switch between windows, press Ctrl+b followed by the window number. Windows are numbered starting from 0.

- ** List Windows**: To see a list of windows, press Ctrl+b followed by w. You can then navigate to the desired window using arrow keys and hit Enter to select it.

- **Rename Window**: To rename the current window, press Ctrl+b followed by ,. You'll be prompted to enter a new name for the window.


### Panes

**Split Window into Panes**:

- To split the current window horizontally (panes side by side), press Ctrl+b followed by %.

- To split the window vertically (panes stacked on top of each other), press Ctrl+b followed by ".

**Switch Between Panes**:

- To switch to the next pane, press Ctrl+b followed by o.

- To navigate directly to a specific pane, press Ctrl+b followed by an arrow key (Up, Down, Left, Right).

**Resizing Panes**:

- To resize a pane, first press Ctrl+b followed by one of the arrow keys while holding Ctrl+b. This will adjust the size of the current pane.

**Closing Panes**:

- To close a pane, simply exit the shell in that pane (e.g., type exit or press Ctrl+d).

**Converting a Pane to a Window**:

- If you already have two panes and want to move one to a new window, you can "break" the pane. Press Ctrl+b followed by !. This will convert the current pane into a new window.

**Expanding a pane**:
- Once you're in the desired pane, you can zoom into it by pressing Ctrl-b and then z. This will make the selected pane temporarily expand to fill the entire tmux window, hiding the other panes. Do Ctrl-b and then z to reverse it. 

**Enter Copy Mode**: You can do this by pressing Ctrl-b followed by [.

**Navigate the History**: First, you need to enter the copy mode in tmux. you can use the arrow keys (Up, Down, Left, Right) to navigate through the history. Alternatively, you can also use Page Up and Page Down to scroll faster.




-----------------


### **Most Used `tmux` Commands (Including Your Custom Bindings)**
Here’s a list of the most commonly used `tmux` commands, **highlighting your custom bindings** from your configuration.

---

## **1️⃣ General `tmux` Commands**
| Command | Description |
|---------|------------|
| `tmux` | Start a new `tmux` session. |
| `tmux new -s <session-name>` | Start a new `tmux` session with a specific name. |
| `tmux attach -t <session-name>` | Attach to an existing session. |
| `tmux list-sessions` | List all active `tmux` sessions. |
| `tmux kill-session -t <session-name>` | Kill a specific session. |
| `tmux kill-server` | Kill all `tmux` sessions. |

---

## **2️⃣ Prefix Key (Modified in Your Config)**
| Command | Description |
|---------|------------|
| **`Ctrl+a`** | **(Your Custom Prefix Key)** Used to enter `tmux` command mode (default was `Ctrl+b`). |
| `Ctrl+a d` | Detach from the current session. |
| `Ctrl+a r` | **(Custom Binding)** Reload `~/.tmux.conf`. |
| `Ctrl+a I` | Install/update `tmux` plugins using TPM. |

---

## **3️⃣ Window Management**
| Command | Description |
|---------|------------|
| `Ctrl+a c` | Create a new window. |
| `Ctrl+a &` | Close the current window. |
| `Ctrl+a w` | List all windows. |
| `Ctrl+a n` | Switch to the next window. |
| `Ctrl+a p` | Switch to the previous window. |
| `Ctrl+a <number>` | Switch to a specific window (e.g., `Ctrl+a 1` for window 1). |

---

## **4️⃣ Pane Management (Custom Shortcuts in Bold)**
| Command | Description |
|---------|------------|
| **`Ctrl+a |`** | **(Custom)** Split window **horizontally** (side by side). |
| **`Ctrl+a -`** | **(Custom)** Split window **vertically** (stacked). |
| `Ctrl+a x` | Close the current pane. |
| `Ctrl+a o` | Switch between panes. |
| **`Alt + ←/→/↑/↓`** | **(Custom)** Navigate panes using `Alt + Arrow keys`. |
| **`Ctrl+a h/j/k/l`** | **(Custom)** Resize panes left/down/up/right. |

---

## **5️⃣ Copy & Paste (Clipboard and Vi Mode)**
| Command | Description |
|---------|------------|
| `Ctrl+a [` | Enter **copy mode** (for scrolling or copying text). |
| `Space` | Start selecting text (if using Vi mode). |
| `Enter` | Copy selected text. |
| `Ctrl+a ]` | Paste copied text. |

---

## **6️⃣ Session & Persistence (Using Your Plugins)**
| Command | Description |
|---------|------------|
| `tmux-resurrect` | Saves/restores sessions automatically. |
| `tmux-continuum` | Auto-saves every few minutes and restores on reboot. |

---

## **7️⃣ Status Bar & Battery Plugin**
| Command | Description |
|---------|------------|
| `tmux-battery` | Shows battery percentage in the status bar. |
| `tmux-prefix-highlight` | Shows when the prefix key (`Ctrl+a`) is active. |

---

### **Summary of Your Custom Keybindings**
| Keybinding | Action |
|------------|--------|
| **`Ctrl+a |`** | Split pane **horizontally** (instead of `Ctrl+a %`). |
| **`Ctrl+a -`** | Split pane **vertically** (instead of `Ctrl+a "`). |
| **`Ctrl+a r`** | Reload `~/.tmux.conf`. |
| **`Alt + Arrow Keys`** | Move between panes. |
| **`Ctrl+a h/j/k/l`** | Resize panes. |
| **`Ctrl+a I`** | Install `tmux` plugins (TPM). |

---

This list includes **all essential `tmux` commands** while **highlighting the custom bindings from your configuration**. Let me know if you need any modifications! 🚀
