# nixos config

WIP - There are caveats that I need to document here. Currently for example, my `configuration.nix` is almost stardard from the ISO. It needs to be abstracted out, and have the specifics of the system dealt with. Such as disk id's, etc.

## Table of Contents

- [nixos config](#nixos-config)
  - [Table of Contents](#table-of-contents)
  - [About ](#about-)
  - [Getting Started ](#getting-started-)
  - [Manual Steps](#manual-steps)
    - [opencommit](#opencommit)
    - [gptcommit](#gptcommit)
  - [TODO ](#todo-)

## About <a name = "about"></a>

This is a simple nixos setup leveraging flakes, and home-manager with the gnome desktop.

## Getting Started <a name = "getting_started"></a>

- install nixos from the ISO with the Gnome Desktop
- clone the repository with `mkdir -p ~/dev/ && cd ~/dev/ && git clone git@github.com:bashfulrobot/nixos && cd ~/dev/nixos`
- Run `sudo nixos-rebuild switch --flake .#`

## Manual Steps

For now I have a few manual steps post install.

### opencommit

*potentially depreciated by `gptcommit`.*

- `npm i -g opencommit`
- (may need reboot)
- `oc config set OPENAI_API_KEY=xxxxxxxxx`
- `oc config set emoji=true`
- `oc config set description=true`
- `oc hook set` (in any git repo I want to use it with vscode)

### gptcommit

- In your repo root:
    - `gptcommit install` (installs a git hook)
    - mkdir `.shadowenv.d`
    - `echo ".shadowenv.d" >> .gitignore`
    - `echo '(env/set "GPTCOMMIT__OPENAI__API_KEY" "xxxxxxxxxxxxxxxxxxx")' >> .shadowenv.d/001.env.lisp`
    - `shadowenv trust`
    - Note: multiple `.lisp` files are loaded in order. So prefix with `001.....`
- `gptcommit config set allow-amend true`
- Now you can `git commit -a` to get the tool to work. It will open in your default editor.
- In vscode, if you just press the `commit` button, it will open a file for you to edit the message.

## TODO <a name = "todo"></a>

- [ ] add sops-nix
- [ ] update docs for new process once sops is setup
- [ ] configure `espanso`
- [ ] automate install.
    - [ ] Look at disk partitions as code with [disko](https://github.com/nix-community/disko)
        - [ ] time to rethink file systems
- [x] start skeleton to add cfg for my tower
- [x] build tower cfg...
