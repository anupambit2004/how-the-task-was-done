
#!/bin/sh

variable=$1
var=$2


echo "type 'diskspace' for getting the current available disk space"
echo "type 'ports' for getting the current open ports"
echo "type 'services' for getting the current running services"
echo "type 'password' for changing the password of a particular username"
echo "type 'killprocess' to kill a process/application via PID"
echo "type 'exit' to exit out of the process"

case $variable in

  "diskspace") echo -e "Current available disk space : `df -h`";;

      "ports") echo -e "Current open ports : `netstat -an`";;

   "services") echo -e "Current running services : `services --status-all`";;

   "password") echo -e "To change password use : `passwd $USERNAME`";;

"killprocess") kill -9 $var;;

       "exit") exit;;

            *) echo -e "sorry no matches found";;

esac
