#! /bin/sh
#
# hibernate=''
# shutdown=''
# reboot=''
# lock=''
# suspend=''
# logout=''
# yes=''
# no=''

poweroff="  Power Off"
suspend="  Suspend"
hibernate=" Hibernate"
restart="  Restart"
lock="  Lock"

chosen=$(printf "$poweroff\n$suspend\n$hibernate\n$restart\n$lock" | rofi -dmenu -i -theme-str '@import "power.rasi"')

case "$chosen" in
"$poweroff") poweroff ;;
"$suspend") systemctl suspend ;;
"$hibernate") systemctl hibernate ;;
"$restart") reboot ;;
"$lock") lock ;;
*) exit 1 ;;
esac
