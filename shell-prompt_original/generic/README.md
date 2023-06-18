Creating a dir holding our utilties and then sym-link the files to the profile.d to be
loaded and accessible for all shells (bash;zsh;etc...)

```bash
$sudo mkdir /etc/prompt-utilities_profile.d/
$sudo ln -s /etc/prompt-utilities_profile.d/{aliases.sh,showcolors} /etc/profile.d/
```

About the sudo alias extending other aliases and solution for vim, mc and others for bash, zsh and other shells:
[STACKOVERFLOW](https://unix.stackexchange.com/questions/627998/how-to-resolve-vi-internal-vim-alias-command-not-found/631761#631761)