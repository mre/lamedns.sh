#!/bin/sh
#
# shell script to check if external IP has changed and
# update DynDns account if so
#

# login user and password
USER=""
PW=""
# file where the last looked-up ip is stored
IPFILE=""
# basic DynDNS update URL
DURL="https://members.dyndns.org/nic/update?"
# the hostname to change with the new IP eg.: test.dyndns.org
HOST=""

LAST_IP=`cat ${IPFILE} 2>/dev/null`
CURRENT_IP=`curl -s http://icanhazip.com`

if [ "$LAST_IP" != "$CURRENT_IP" ]
then
  echo "IP has changed to ${CURRENT_IP}."
  echo "Updating DynDNS account..."
  curl -u "$USER:$PW" "${DURL}hostname=${HOST}"
  echo "\nDone."
  echo "${CURRENT_IP}" > ${IPFILE}
fi
