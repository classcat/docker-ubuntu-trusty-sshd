#!/bin/bash

########################################################################
# ClassCat/Postfix-Dovecot Asset files
# maintainer: Masashi Okumura < masao@classcat.com >
########################################################################

function change_root_password() {
  echo -e "root:${password}" | chpasswd
  # echo -e "${password}\n${password}" | passwd root
}

change_root_password

exit 0
