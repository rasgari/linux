#!/bin/bash

# ================
#  Process Monitor
#  Zombie + Orphan Scanner
# ================

RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
RESET="\e[0m"

echo -e "${BLUE}=========================================${RESET}"
echo -e "${BLUE}   Zombie & Orphan Process Scanner       ${RESET}"
echo -e "${BLUE}=========================================${RESET}"

echo -e "\n${YELLOW}🔍 Checking for Zombie Processes...${RESET}"

# Find Zombies
ZOMBIES=$(ps -eo pid,ppid,stat,cmd | awk '$3 ~ /^Z/')

if [ -z "$ZOMBIES" ]; then
    echo -e "${GREEN}✅ No Zombie processes found.${RESET}"
else
    echo -e "${RED}🧟 Zombie Processes Found:${RESET}"
    echo "$ZOMBIES"
fi

echo -e "\n${YELLOW}🔍 Checking for Orphan Processes...${RESET}"

# Find Orphans (PPID == 1 and NOT zombies)
ORPHANS=$(ps -eo pid,ppid,stat,cmd | awk '$2 == 1 && $3 !~ /^Z/')

if [ -z "$ORPHANS" ]; then
    echo -e "${GREEN}✅ No Orphan processes found.${RESET}"
else
    echo -e "${RED}👶 Orphan Processes Found:${RESET}"
    echo "$ORPHANS"
fi

echo -e "\n${BLUE}=========================================${RESET}"
echo -e "${BLUE}  Summary:${RESET}"

ZCOUNT=$(echo "$ZOMBIES" | wc -l)
OCOUNT=$(echo "$ORPHANS" | wc -l)

if [ "$ZCOUNT" -gt 0 ]; then
    echo -e "${RED}🧟 Zombies: $ZCOUNT${RESET}"
else
    echo -e "${GREEN}🧟 Zombies: 0${RESET}"
fi

if [ "$OCOUNT" -gt 0 ]; then
    echo -e "${RED}👶 Orphans: $OCOUNT${RESET}"
else
    echo -e "${GREEN}👶 Orphans: 0${RESET}"
fi

echo -e "${BLUE}=========================================${RESET}"
echo -e "${GREEN}Done.${RESET}"
