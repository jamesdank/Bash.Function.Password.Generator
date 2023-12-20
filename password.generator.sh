#!/bin/bash

function password () {
    echo -e "\n\e[4mPassword Length\e[0m "
    read -p "Length: " length
    lower="abcdefghijklmnopqrstuvwxyz"
    upper="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    numbers="0123456789"
    symbols="/\~!@#$%^&*'()_+={[}]|<,>.?"
    password=$(< /dev/urandom tr -dc ${lower}${upper}${numbers}${symbols} | head -c${1:-$length};)
    echo Password: $password
}
