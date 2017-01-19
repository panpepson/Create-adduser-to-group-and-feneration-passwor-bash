#!/bin/sh

#-------------------
#  Piotr Trochymiak
#-------------------


if [ $# -lt 1 ]

then

    echo "\n"
    echo " Podaj argument"
    echo " -------------------------------"
    echo " np. ./d.sh NazwaUzytkownika  "
    echo " -------------------------------"
    echo "\n"
    exit 1

fi

if [ $# -eq 1 ]
 then

        USER="$1"
#       GRUPA="$2"

RPASS=$(makepasswd)

useradd   ${USER} -p $RPASS -d /path-to/FTP -s /bin/false
usermod -g sFTPWrite  ${USER}

    echo  "\n"
    echo "Do grupy sFTPWrite zostal dodany użytkownik: ${USER}  a jego haslo to:  $RPASS"
    echo  "\n"

echo  ${USER}:$RPASS | chpasswd

fi
