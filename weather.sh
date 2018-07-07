#!/bin/sh

VERSION="VERSION: 0.00.1"
AUTHOR="AUTHOR:  Mihai Cornel mhcrnl@gmail."
HELP="Run: ./weather.sh"

# Vremea in locatia curenta afisata in terminal.

help()
{
    echo ${VERSION}
    echo ${AUTHOR}
    echo ${HELP}
}

usage()
{
    cat << EOF
Vremea pentru locatia dumneavoastra pe 3 zile: 
EOF
}

vremea()
{
    help
    usage
    curl wttr.in
}

vremea
