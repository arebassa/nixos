SHELL=/run/current-system/sw/bin/bash

# CREDIT - Colour pulled from https://gist.github.com/rsperl/d2dfe88a520968fbc1f49db0a29345b9

# to see all colors, run
# bash -c 'for c in {0..255}; do tput setaf $c; tput setaf $c | cat -v; echo =$c; done'
# the first 15 entries are the 8-bit colors

# define standard colors
ifneq (,$(findstring xterm,${TERM}))
	BLACK        := $(shell tput -Txterm setaf 0)
	RED          := $(shell tput -Txterm setaf 1)
	GREEN        := $(shell tput -Txterm setaf 2)
	YELLOW       := $(shell tput -Txterm setaf 3)
	LIGHTPURPLE  := $(shell tput -Txterm setaf 4)
	PURPLE       := $(shell tput -Txterm setaf 5)
	BLUE         := $(shell tput -Txterm setaf 6)
	WHITE        := $(shell tput -Txterm setaf 7)
	RESET := $(shell tput -Txterm sgr0)
else
	BLACK        := ""
	RED          := ""
	GREEN        := ""
	YELLOW       := ""
	LIGHTPURPLE  := ""
	PURPLE       := ""
	BLUE         := ""
	WHITE        := ""
	RESET        := ""
endif

# set target color
TARGET_COLOR := $(BLUE)

POUND = \#

.DEFAULT_GOAL := help

# TOWER-PLAYBOOK = playbooks/tower.yaml
USER = dustin

first-run: ## used on a brand new install one time
	@echo "${BLUE}... running first-run setup ${RESET}"
	@NIX_CONFIG = "experimental-features = nix-command flakes";
	@echo "${YELLOW}first-run - ${GREEN} COMPETED. ${RESET}"
install: ## install nix.conf
	@echo "${BLUE}... installing nix.conf ${RESET}"
	@mkdir -p ~/.config/nix
	@cp home/.config/nix/nix.config ~/.config/nix/
	@echo "${YELLOW}install of nix.conf - ${GREEN} COMPETED. ${RESET}"
switch-x13: #switch-x13: ## copy *.nix and rebuild switch for x13
	@echo "${BLUE}... nixos rebuild switch - x13${RESET}"
	# escaping the #
	@sudo nixos-rebuild switch --flake .#\dustin-krysak
	@echo "${YELLOW}RUN nixos-rebuild switch - ${GREEN} COMPETED. ${RESET}"
switch-tower: # copy *.nix and rebuild switch for tower
	@echo "${BLUE}... nixos rebuild switch - tower ${RESET}"
	# escaping the #
	@sudo nixos-rebuild switch --flake .#\tower
	@echo "${YELLOW}RUN nixos-rebuild switch - ${GREEN} COMPETED. ${RESET}"

# remote-switch: ## run cfg from GH repo
# 	@echo "${BLUE}... RUNNING: nixos-rebuild switch --flake github:bashfulrobot/nixos#dustin-krysak --no-write-lock-file ${RESET}"
# 	@sudo nixos-rebuild switch --flake github:bashfulrobot/nixos#dustin-krysak --no-write-lock-file
# 	@echo "${YELLOW}remote nixos-rebuild switch- ${GREEN} COMPETED. ${RESET}"
garbage-collect: ## garbage collect uninstalled app files
	@echo "${BLUE}... running garbage collection ${RESET}"
	@sudo nix-collect-garbage -d
	@echo "${YELLOW}garbage collection - ${GREEN} COMPETED. ${RESET}"
help:
	@echo ""
	@echo "    ${BLACK}:: ${RED}Makefile Help${RESET} ${BLACK}::${RESET}"
	@echo ""
	@echo "Available options are:"
	@echo "-----------------------------------------------------------------${RESET}"
	@grep -E '^[a-zA-Z_0-9%-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "${TARGET_COLOR}%-30s${RESET} %s\n", $$1, $$2}'
