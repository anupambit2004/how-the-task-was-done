how-the-task-was-done
=====================
#!/bin/sh

variable=$1
var=$2

case $variable in

  "diskspace") echo -e "Current available disk space : `df -h`";;

      "ports") echo -e "Current open ports : `netstat -an`";;

   "services") echo -e "Current running services : `chkconfig --list`";;

   "password") echo -e "To change password use : `passwd $USERNAME`";;

"killprocess") kill -9 $var;;

       "exit") exit;;

            *) echo -e "sorry no matches found";;

esac
