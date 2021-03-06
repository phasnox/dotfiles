#!/bin/bash
#MASTER="master"
#MASTER="develop"
MASTER="release/18.25"
#MASTER="air_responsive"
#BB="mlp_fhrthc"

while true; do
    read -p "Stash? " yn
    case ${yn} in
        [Yy'yes']* ) stash_cmd="git stash"; break;;
        [Nn'no']* )  stash_cmd=""; break;;
        * ) echo "Answer yes or no.. "
    esac
done
for D in *; do
    # Updates develop
    if [ -d "${D}" ]; then
        echo -e "${Green}Updating ${D}...${Color_Off}"
        (cd ${D} && eval $stash_cmd && git fetch --all && git checkout $MASTER && git reset --hard origin/$MASTER)
    fi

    # Updates master branch
    if [[ "${D}" == "" ]]; then
        echo -e "${Green}Updating branch master for ${D}...${Color_Off}"
        (cd ${D} && git checkout master && git fetch && git pull origin master)
    fi
done


# Updates sub-branch
#for D in amex_web amex_api cms cms_admin amex_ovc; do
#    echo -e "${Green}Updating $BB for ${D}...${Color_Off}"
#    (cd ${D} && git checkout $BB && git fetch --all && git pull origin $BB)
#done
