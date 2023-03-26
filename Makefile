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

install-config: ## install nix.conf
	@echo "${BLUE}... installing nix.conf ${RESET}"
	@mkdir -p ~/.config/nix
	@sudo mkdir -p /etc/nixos/imports/configuration_nix
	@sudo mkdir -p /etc/nixos/imports/home-manager/packages
	@sudo mkdir -p /etc/nixos/imports/home-manager/configs
	@echo "${YELLOW}install of nix.conf - ${GREEN} COMPETED. ${RESET}"
switch: ## copy *.nix and rebuild switch
	@echo "${BLUE}... copying *.nix / nixos rebuild switch ${RESET}"
	@sudo cp flake.nix /etc/nixos/
	@sudo cp home.nix /etc/nixos/
	@sudo cp configuration.nix /etc/nixos/
	@sudo cp hardware-configuration.nix /etc/nixos/
	@sudo rsync -av --delete imports/ /etc/nixos/imports/
	@echo "${YELLOW}file copy - ${GREEN} COMPETED. ${RESET}"
	@sudo nixos-rebuild switch #--show-trace
	@echo "${YELLOW}RUN nixos-rebuild switch - ${GREEN} COMPETED. ${RESET}"
remote-switch: ## run cfg from GH repo
	@echo "${BLUE}... RUNNING: nixos-rebuild switch --flake github:bashfulrobot/nixos#dustin-krysak --no-write-lock-file ${RESET}"
	@sudo nixos-rebuild switch --flake github:bashfulrobot/nixos#dustin-krysak --no-write-lock-file
	@echo "${YELLOW}remote nixos-rebuild switch- ${GREEN} COMPETED. ${RESET}"
help:
	@echo ""
	@echo "    ${BLACK}:: ${RED}Makefile Help${RESET} ${BLACK}::${RESET}"
	@echo ""
	@echo "Available options are:"
	@echo "-----------------------------------------------------------------${RESET}"
	@grep -E '^[a-zA-Z_0-9%-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "${TARGET_COLOR}%-30s${RESET} %s\n", $$1, $$2}'
