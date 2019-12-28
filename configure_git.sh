#!/bin/sh

PEARSON_USERNAME="Isank"
PEARSON_USEREMAIL="isank.agarwal@pearson.com"

GLOBALLOGIC_USERNAME="Isank"
GLOBALLOGIC_USEREMAIL="isank.agarwal1@globallogic.com"

PERSONAL_USERNAME="Isank"
PERSONAL_USEREMAIL="isankagarwal@gmail.com"

configure_git() {

    git config --local user.name "$1"
    git config --local user.email "$2"
}

main() {

    if [ "$1" = "pearson" ]; then
        configure_git $PEARSON_USERNAME $PEARSON_USEREMAIL
    fi

    if [ "$1" = "globallogic" ]; then
        configure_git $GLOBALLOGIC_USERNAME $GLOBALLOGIC_USEREMAIL
    fi

    if [ "$1" = "personal" ]; then
        configure_git $PERSONAL_USERNAME $PERSONAL_USEREMAIL
    fi
}

main "$1"