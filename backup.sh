#!/bin/bash

DATE=`date +%Y%m%d`

# the name of the backup USB drive
DRIVENAME="BACKUP"
DRIVEID="/dev/sdc"

# where to create a copy of the backup
# ATTENTION: this path needs a trailing slash!
BKPDIRCOPY="/media/${USER}/${DRIVENAME}/backup/"

# which directories to backup
# ATTENTION: this path needs a trailing slash!
BKPDIRSOURCE=(
    "${HOME}/Documents/"
    "${HOME}/Pictures/"
)

BKPEXCLUDE=(
    "*.[bls]#[0-9]"
    "*.pgf-plot.*"
    "*.aux"
    "*.fdb_latexmk"
    "*.fls"
    "*.log"
    "*.toc"
    "*.srf"
    "*.prt"
    "*.bak"
)

# don't backup lost+found by default, we dont need that anyway
RSYNCEXCLUDE="lost+found"

# create a string of all exclude patterns
for _EXCLUDE in ${BKPEXCLUDE[*]}
do
    RSYNCEXCLUDE="`echo -n ${RSYNCEXCLUDE}` --exclude=${_EXCLUDE}"
done

# make sure the USB drive is mounted
# TODO

# now we can actually copy stuff
for _DIR in ${BKPDIRSOURCE[*]}
do
    if [ ! -d "${BKPDIRCOPY}${_DIR#$HOME/}" ]
    then
        mkdir --parents ${BKPDIRCOPY}${_DIR#$HOME/}
    fi

    echo -e "Copying files from \e[1;34m${_DIR}\e[0m to" \
            "\e[1;36m${BKPDIRCOPY}${_DIR#$HOME/}\e[0m"
    rsync \
        --update \
        --recursive \
        --info=name2 \
        --exclude=${RSYNCEXCLUDE} \
        ${_DIR} ${BKPDIRCOPY}${_DIR#$HOME/}
done

# exit
echo -e "\e[1;33mDone! :)\e[0m"

