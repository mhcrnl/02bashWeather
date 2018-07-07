#!/bin/sh

# VERSION: 0.00.1
# AUTHOR:  Mihai Cornel mhcrnl@gmail.
# Vremea in locatia curenta afisata in terminal. 

usage()
{
    cat << EOF
Vremea pentru locatia dumneavoastra pe 3 zile: 
EOF
}

vremea()
{
    usage
    curl wttr.in
}

vremea
