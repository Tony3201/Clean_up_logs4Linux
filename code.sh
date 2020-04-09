#########################################################################
# Name: Clean_up_logs
# Version: 1.0
# Author: Tony3201 
# Created Time: Apr 29 2019		
#########################################################################

#!/bin/bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Must be use root to run this script."
    exit
fi

    cd /var/log || {
    echo "Can not chang to necessary dicrectory."
    exit 
}
cat /dev/null >/var/log/messages && {
    echo "Congratulation!logs were cleaned up." |lolcat
    exit 
}
    echo "logs cleaned up fail."
    exit 
