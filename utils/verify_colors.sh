#!/bin/bash
# ANSI Color Verification Script

echo -e "\n--- ANSI 16 Colors ---"
for i in {0..7}; do echo -en "\e[3${i}mColor $i \e[0m"; done; echo
for i in {0..7}; do echo -en "\e[9${i}mColor $((i+8)) \e[0m"; done; echo

echo -e "\n--- ANSI Backgrounds ---"
for i in {0..7}; do echo -en "\e[4${i}m  $i  \e[0m "; done; echo
for i in {0..7}; do echo -en "\e[10${i}m  $((i+8))  \e[0m "; done; echo

echo -e "\n--- Extended Colors (256) ---"
for i in {0..15}; do
    for j in {0..15}; do
        code=$((i * 16 + j))
        printf "\e[38;5;%dm%3d \e[0m" $code $code
    done
    echo
done
