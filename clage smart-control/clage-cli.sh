#!/bin/bash

cli_help() {
  cli_name=${0##*/}
  echo "
$cli_name
by Smart&Cozy - https://smartandcozy.com
Version: 0.1
Usage: $cli_name [command]
Commands:
  listDevcies       List conntected devices
  setTemperature    Set the water temperature to a 
  setFlowControl    Set the flow control to ECO, AUTO or DISABLED
  *                 Help
"
  exit 1
}

list_devices(){

}

set_temprature() {
  
}


case "$1" in
  setTemperature|t)
    set_temprature($2,$3)
    ;;
  *)
    cli_help
    ;;
esac


#curl -k -X PUT https://192.168.0.101/devices/setpoint/20499A98C5 -H 'application/x-www-form-urlencoded' -H 'Authorization: Basic YXBwdXNlcjpzbWFydA==' -d 'cid=1&data=385' 
#curl -k -X PUT https://192.168.0.101/devices/setpoint/20499A98C5 -H 'application/x-www-form-urlencoded' -H 'Authorization: Basic YXBwdXNlcjpzbWFydA==' -d 'flowMax=flowMax=254' # Durchflussbegrenzung: AUTO
#curl -k -X PUT https://192.168.0.101/devices/setpoint/20499A98C5 -H 'application/x-www-form-urlencoded' -H 'Authorization: Basic YXBwdXNlcjpzbWFydA==' -d 'flowMax=flowMax=253' # Durchflussbegrenzung: ECO