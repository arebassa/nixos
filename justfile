# load a .env file if in the directory
set dotenv-load
# Ignore recipe lines beginning with #.
set ignore-comments
# Search justfile in parent directory if the first recipe on the command line is not found.
set fallback

default:
    @just --list --list-prefix ····
help:
    @just --help
test:
    @echo "testing Just!"
test2:
    @echo "testing Just2!"
host:
    @echo $HOSTNAME
user:
    @echo $USER
rebuild:
    @sudo nixos-rebuild switch --flake .#\$HOSTNAME
