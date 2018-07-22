# Node Scratchpad
A simple javascript scratchpad setup
## Setup
Clone the repo, install packages and start the server.
```
git clone git@github.com:jesseflorig/node-scratchpad.git
cd node-scratchpad
npm install
npm start
```
When you save `index.js` it will automatically clear the server statuses and restart the server.
# Advanced TMUX setup
By using TMUX, you can automate launching the scratchpad with a split view by running the script provided. If you have TMUX installed simply run:
```
./tmux-node-scratchpad.sh
```
Add and alias for the script to your shell config(`.bashrc`, `.zshrc`, etc):
```
alias scratch="/absolute/path/to/tmux-node-scratchpad.sh"
```
Now you can just run `scratch` from the command line and get to writing js!

## Todo
 - [ ] Maybe add recursive watching for advanced demos
