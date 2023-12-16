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

** Expanding a pane **:
- Once you're in the desired pane, you can zoom into it by pressing Ctrl-b and then z. This will make the selected pane temporarily expand to fill the entire tmux window, hiding the other panes. Do Ctrl-b and then z to reverse it. 

** Enter Copy Mode **: You can do this by pressing Ctrl-b followed by [.

** Navigate the History **: First, you need to enter the copy mode in tmux. you can use the arrow keys (Up, Down, Left, Right) to navigate through the history. Alternatively, you can also use Page Up and Page Down to scroll faster.
