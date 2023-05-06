# Docs
# ---- https://github.com/casey/just
# ---- https://stackabuse.com/how-to-change-the-output-color-of-echo-in-linux/
# load a .env file if in the directory
set dotenv-load
# Ignore recipe lines beginning with #.
set ignore-comments
# Search justfile in parent directory if the first recipe on the command line is not found.
set fallback

# Color
RESET := `tput sgr0;`
GREEN := `tput setaf 2`
GREENB := `tput setaf 2; tput bold`
GREENU := `tput setaf 2; tput smul`
YELLOW := `tput setaf 3`
RED := `tput setaf 1`
# hostname := `hostname`

# "_" hides the recipie from listings
_default:
    @just --list --list-prefix ····
# _default:
#     @just --choose

# Print `just` help
help:
    @just --help
test:
    @echo "{{GREEN}}testing {{YELLOW}}Just {{GREEN}}!{{RESET}}"
test2:
    @echo "testing Just2!"
# Print your hostname
host:
    @echo `hostname`
# Print your user name
user:
    @echo {{env_var('USER')}}
# Print your homedir
home:
    @echo {{env_var('HOME')}}
# Print the directory where the justfile is located
root:
    @echo {{justfile_directory()}}
# Rebuild nixos cfg on your current host.
rebuild:
    @sudo nixos-rebuild switch --flake .#\{{`hostname`}}
