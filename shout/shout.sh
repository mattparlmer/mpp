#!/bin/bash

## shout - shell output formatter
##
## Copyright (c) 2017, Matt Parlmer and Ohlogen, MIT licensed.
## See repository at https://github.com/mattparlmer/mpp for more docs.

## This script adapts user interface elements from the MIT licensed NodeJS
## project, specifically from https://deb.nodesource.com/setup_6.x.

# Colors
if test -t 1; then
    ncolors=$(which tput > /dev/null && tput colors)
    if test -n "$ncolors" && test $ncolors -ge 8; then
        termcols=$(tput cols)
        bold="$(tput bold)"
        underline="$(tput smul)"
        standout="$(tput smso)"
        normal="$(tput sgr0)"
        black="$(tput setaf 0)"
        red="$(tput setaf 1)"
        green="$(tput setaf 2)"
        yellow="$(tput setaf 3)"
        blue="$(tput setaf 4)"
        magenta="$(tput setaf 5)"
        cyan="$(tput setaf 6)"
        white="$(tput setaf 7)"
    fi
fi

# Prints standard output
print_ln() {
    echo "${white}$1${normal}"
}

# Prints standard output with timestamp
print_ts() {
    ts=$(date)
    echo "${white}${bold}${ts}: ${normal}${white}$1${normal}"
}

# Prints longform message
print_msg() {
    msg_title="$1"
    msg_body="$2"

    echo "${cyan}---------------------------------------------------------------------------${normal}"
    echo
    echo -e "${bold}${blue}${msg_title}${normal}"
    echo
    echo -en "${white}${msg_body}${normal}"
    echo
    echo "${cyan}---------------------------------------------------------------------------${normal}"
}

# Prints error
print_err() {
    err_title="$1"
    err_body="$2"
    err_ts=$(date)

    echo "${red}---------------------------------------------------------------------------${normal}"
    echo
    echo -e "${bold}${red}${standout}AN ERROR OCCURRED!${normal}"
    echo
    echo -e "${bold}${red}ERROR:  ${normal}${underline}${white}${err_title}${normal}"
    echo -e "${bold}${red}TIME:   ${normal}${underline}${white}${err_ts}${normal}"
    echo -e "${bold}${red}INFO:   ${normal}${white}${err_body}${normal}"
    echo
    echo "${red}---------------------------------------------------------------------------${normal}"
}

# Prints standout green
print_funky() {
    echo "${green}${standout}$1${normal}"
}
