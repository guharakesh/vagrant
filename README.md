# My personal dev environment (currently windows)

1. Install Git Bash, ConEmu, and vim

 - don't forget syntax highlighting: https://spinspire.com/article/making-vim-syntax-highlighting-work-inside-git-bash

2. Install [VirtualBox](https://www.virtualbox.org/)

3. Install [Vagrant](https://www.vagrantup.com/)

4. Follow instructions [here](https://help.github.com/articles/generating-ssh-keys/) to generate a keypair. For now, be sure the key is named `id_rsa.pub` and stored in `~/.ssh/`, or modify the Vagrantfile to point to the correct key.

5. Follow instructions [here](https://help.github.com/articles/working-with-ssh-key-passphrases/) to auto-launch ssh-agent.
