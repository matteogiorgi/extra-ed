#!/usr/bin/env bash

# This script just resets your Micro
# text editor config: no options, no nothing.




### Ready?
##########

read -p "Resetting Micro (enter to continue)"




### Reset Micro folder
######################

MICR="$HOME/.config/micro"

if [[ -x "$(command -v "micro")" ]]; then
    cat "${HOME}/bin/resetters/micr/micr-settings.json" > "${MICR}/settings.json"
    cat "${HOME}/bin/resetters/micr/micr-bindings.json" > "${MICR}/bindings.json"
    # ---
    MESSAGE="Micro text-editor settings resetted"
else
    MESSAGE="Micro text-editor not yet installed"
fi




### Final message
#################

printf "\n"
printf "═════════ We're done here ═════════\n"
printf "$MESSAGE\n"
