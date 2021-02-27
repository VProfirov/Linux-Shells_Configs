# ps-twtty &#x27A1; a prompt configuring script

"ps-twtty-7.sh" is bash-shell-specific and should be referenced in the .bashrc
for users for which to apply (root;admin;any-other...) in the section:
```bash
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
        . /etc/prompt-utilities_profile.d/bash-promopt/ps-twtty-7.sh
fi
```
NOTE: there is a version of my personal .bashrc you can lookup.

DO NOT sym-link "ps-twtty-7.sh" in the /etc/profile.d/ or it will interfere with other shells you use (zsh for example), as it will be loaded on startup regardless of the shell used!

The "ps-twtty.sh" also creates advanced 'bash_history' per-user and locally for each.
Segmented as "/home/\$USER/bash_history/\$Year-Month/\$Year-Month-Date". The section controlling the 'bash_history' should be adapted for other shells. (isWIP)

A good place to locate the file is in a dir like:
"/etc/prompt-utilities_profile.d/" for more global and independent use or in
an user's ".local" dir.

-This is WIP (Work in Progress)-
