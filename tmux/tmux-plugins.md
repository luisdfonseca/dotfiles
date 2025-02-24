### What is **tmux**?
**tmux** (Terminal Multiplexer) is a powerful terminal utility that allows users to manage multiple terminal sessions within a single window. It is particularly useful for developers and system administrators who work with remote servers and need persistent, organized terminal sessions.

### **Key Features of tmux:**
- **Multiple Panes & Windows**: Split a single terminal into multiple sections.
- **Session Persistence**: Keeps sessions running even if you disconnect (great for SSH users).
- **Session Management**: Run multiple terminal sessions and switch between them.
- **Customization**: Supports configurations using the `.tmux.conf` file.

---

## **How to Use tmux**

### **1. Install tmux**
- **Ubuntu/Debian**:
  ```sh
  sudo apt install tmux
  ```
- **MacOS (Homebrew)**:
  ```sh
  brew install tmux
  ```
- **CentOS/RHEL**:
  ```sh
  sudo yum install tmux
  ```

---

### **2. Basic tmux Commands**
#### **Start tmux**
```sh
tmux
```
- This opens a new tmux session.

#### **Detach from tmux Session** (Leave session running)
```sh
Ctrl + B, then press D
```

#### **Reattach to tmux Session**
```sh
tmux attach
```

#### **Create a New Named Session**
```sh
tmux new -s mysession
```

#### **List Active tmux Sessions**
```sh
tmux ls
```

#### **Kill a Session**
```sh
tmux kill-session -t mysession
```

---

### **3. Window & Pane Management**
- **Create a New Window**:  
  ```sh
  Ctrl + B, then press C
  ```
- **Switch Between Windows**:  
  ```sh
  Ctrl + B, then press N (next) or P (previous)
  ```
- **Split Pane Horizontally**:  
  ```sh
  Ctrl + B, then press "
  ```
- **Split Pane Vertically**:  
  ```sh
  Ctrl + B, then press %
  ```
- **Switch Between Panes**:  
  ```sh
  Ctrl + B, then press Arrow Key
  ```
- **Resize Pane**:  
  ```sh
  Ctrl + B, then press :resize-pane -D/U/L/R
  ```
  *(Use `-D` for down, `-U` for up, `-L` for left, `-R` for right.)*

- **Close a Pane**:  
  ```sh
  Ctrl + B, then press X
  ```

---

### **4. Customize tmux (`.tmux.conf`)**
You can create a `.tmux.conf` file in your home directory for custom configurations.

Example:
```sh
# Change prefix key from Ctrl+B to Ctrl+A
unbind C-b
set -g prefix C-a
bind C-a send-prefix

# Enable mouse support
set -g mouse on

# Set pane splitting shortcuts
bind | split-window -h
bind - split-window -v
```

After modifying, reload the configuration:
```sh
tmux source-file ~/.tmux.conf
```

---

### **5. Exit tmux**
- **Kill the current session**:  
  ```sh
  exit
  ```
- **Kill all tmux sessions**:  
  ```sh
  tmux kill-server
  ```

---

### **6. Useful tmux Plugins (via `tmux Plugin Manager`)**
Enhance tmux with plugins:

1. Install `tpm`:
   ```sh
   git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
   ```
2. Add this to `.tmux.conf`:
   ```sh
   set -g @plugin 'tmux-plugins/tpm'
   set -g @plugin 'tmux-plugins/tmux-resurrect'
   run '~/.tmux/plugins/tpm/tpm'
   ```
3. Reload tmux and install plugins:
   ```sh
   Ctrl + B, then press I
   ```

---

### **7. Why Use tmux?**
✅ Keeps processes running after disconnecting from SSH  
✅ Splits terminal into multiple panes  
✅ Improves productivity by managing multiple sessions  

---


### **Best tmux Plugins for Productivity 🚀**
To extend tmux functionality, you can use **tmux plugins**. The best way to manage these is via **[tmux Plugin Manager (tpm)]**.

#### **Install tmux Plugin Manager (tpm)**
```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```
Then, add this line to your `.tmux.conf` file:
```sh
run '~/.tmux/plugins/tpm/tpm'
```
Reload tmux:
```sh
tmux source-file ~/.tmux.conf
```
To install plugins, **press `Ctrl + B` then `I`** after adding them to `.tmux.conf`.

---

### **1️⃣ tmux-resurrect** - Restore tmux Sessions 🔄  
📌 **Why?** Keeps your tmux session alive even after a reboot!  
📌 **Install**:
```sh
set -g @plugin 'tmux-plugins/tmux-resurrect'
```
📌 **Usage**:
- Save session: `Ctrl + B` then `Ctrl + S`
- Restore session: `Ctrl + B` then `Ctrl + R`

---

### **2️⃣ tmux-continuum** - Auto Save & Restore Sessions 🕒  
📌 **Why?** Automates `tmux-resurrect` so you don’t have to remember to save manually.  
📌 **Install**:
```sh
set -g @plugin 'tmux-plugins/tmux-continuum'
```
📌 **Enable Auto-Save**:
```sh
set -g @continuum-restore 'on'
```

---

### **3️⃣ tmux-sensible** - Smart Defaults 🧠  
📌 **Why?** Provides sane defaults and key bindings for better usability.  
📌 **Install**:
```sh
set -g @plugin 'tmux-plugins/tmux-sensible'
```

---

### **4️⃣ tmux-yank** - Copy to System Clipboard 📋  
📌 **Why?** Enables **mouse support** for copying text inside tmux easily.  
📌 **Install**:
```sh
set -g @plugin 'tmux-plugins/tmux-yank'
```
📌 **Usage**:
- Copy: `Ctrl + B` then `Y`
- Paste: `Ctrl + Shift + V` (if using a modern terminal)

---

### **5️⃣ tmux-battery** - Show Battery Status 🔋  
📌 **Why?** Displays battery percentage in the tmux status bar.  
📌 **Install**:
```sh
set -g @plugin 'tmux-plugins/tmux-battery'
```

---

### **6️⃣ tmux-prefix-highlight** - Show Active Prefix 🟢  
📌 **Why?** Highlights when you press the `tmux` prefix (`Ctrl + B`).  
📌 **Install**:
```sh
set -g @plugin 'tmux-plugins/tmux-prefix-highlight'
```

---

### **7️⃣ tmux-weather** - Show Weather in Status Bar ☀️  
📌 **Why?** Displays real-time weather info.  
📌 **Install**:
```sh
set -g @plugin 'tmux-plugins/tmux-weather'
```

---

### **8️⃣ tmux-net-speed** - Show Network Speed 📡  
📌 **Why?** Displays current upload/download speeds in the status bar.  
📌 **Install**:
```sh
set -g @plugin 'xamut/tmux-net-speed'
```

---

### **9️⃣ tmux-fzf** - Fuzzy Search in Sessions 🔍  
📌 **Why?** Quickly find and switch between windows/sessions using `fzf`.  
📌 **Install**:
```sh
set -g @plugin 'sainnhe/tmux-fzf'
```
📌 **Usage**:
- Open fuzzy finder: `Ctrl + B` then `F`

---

### **🔟 tmux-open** - Open URLs & Files Easily 🌐  
📌 **Why?** Detects URLs and lets you open them with a single key.  
📌 **Install**:
```sh
set -g @plugin 'tmux-plugins/tmux-open'
```

---

## **How to Install Plugins**
1️⃣ Add the desired plugin to `.tmux.conf` like this:
```sh
set -g @plugin 'tmux-plugins/tmux-resurrect'
```
2️⃣ Save & Reload tmux:
```sh
tmux source-file ~/.tmux.conf
```
3️⃣ **Install all plugins**:
```sh
Ctrl + B, then press I
```

---

## **🔥 Best Plugin Combo for Most Users**
If you're unsure which to pick, install these essentials:
```sh
set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-continuum'
set -g @plugin 'tmux-plugins/tmux-yank'
set -g @plugin 'tmux-plugins/tmux-battery'
set -g @plugin 'tmux-plugins/tmux-prefix-highlight'
```

---

Would you like a custom `.tmux.conf` file setup? 🚀
