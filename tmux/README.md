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
