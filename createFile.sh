#!/bin/sh

# Author : Mihai Cornel
# Copyright (c) mhcrnl@gmail.com
# Version 0.00.3

# Create a file in bash script si deschiderea acesteia in vim.
BASH_FILE=("VERSION 00.00.3" "AUTHOR: Mihai Cornel mhcrnl@gmail")
HELP="Acest script creaza o fila a carei denumire si extensie este adaugata 
de utilizator"

usage()
{
    cat << EOF
FILE CREATOR
Creaza o fila care este introdusa de utilizator. 
EOF
}

help(){
    echo ${HELP}
    echo ${BASH_FILE[@]}
}

# Functia creaza o fila a carei denumire este introdusa de utilizator'
createFile(){
    help
    usage
    echo $PWD
    echo "Introduceti numele filei si extensia (Ex: script.sh): "
    read numefila

    echo "#!/bin/sh" > ${numefila}
   # echo "# ${BASH_FILE[0]}" > ${numefila}
    vim ${numefila}
   
   # send email to mhcrnl@gmail.
  $mail -s "Fila a fost creata" mhcrnl@gmail.com < ${numefila}

 
}

# Aici incepe executia filei bash
createFile

