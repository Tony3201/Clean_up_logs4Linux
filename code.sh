#################################################
# Name: Clean_up_logs                           #                          
# Version: 1.1                                  #
# Author: Tony3201                              #
# Created Time: Apr 08 2020	                #
#################################################

#!/bin/bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Must be use root."
    exit
fi

    cd /var/log || {
    echo "Can not chang to necessary dicrectory."
    exit 
}
cat /dev/null >/var/log/messages && {
    echo "Congratulation!logs were cleaned up."
    exit 
}
    echo "logs cleaned up fail."
    exit 
