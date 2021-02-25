"ps-twtty-7.sh" is bash-shell-specific and should be referenced in the .bashrc
for users for which to apply (root;admin;any-other...) in the section:
```bash
# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
        . /etc/localuser.profile.d/shell-prompt/bash-promopt/ps-twtty-7.sh
fi
```
NOTE: there is a version of my personal .bashrc you can lookup.

DO NOT sym-link "ps-twtty-7.sh" in the /etc/profile.d/ or it will interfere with other
shells you use (zsh for example) as it will be loaded on startup regardless of
the shell used!

It creates advanced 'bash_history' per-user and localy for each. 
Segmented as bash_history/Year-Month/Year-Month-Date
The section controlling the 'bash_history' should be adapted for other shells

A good place to locate the file is in a dir like:
"/etc/prompt-utilities_profile.d/" for more global and independant use or in
an user's ".local" dir.

-This is WIP (Work in Progress)-
