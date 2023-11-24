#!/bin/bash
#A script to search LDAP

#LDAP_SERVER=$(set |grep LOGONSERVER|awk -F '=' '{print $2}'|sed -e 's/\'//g')
#echo $LDAP_SERVER

LDAP_SERVER="ldap.hp.com"
LDAPSEARCH_OPTIONS="-x -LLL"


#ldapsearch $LDAPSEARCH_OPTIONS -b "o=hp.com" -s sub -H ldaps://$LDAP_SERVER "(uid=wyble@hp.com)" cn mail displayName samaccountna
#ldapsearch $LDAPSEARCH_OPTIONS -h $LDAP_SERVER -b "o=hp.com" uid=chris.radosh@hp.com directReports
ldapsearch -LLL -x -W -H ldaps://g3w0044.americas.hpqcorp.net:3269 -b "dc=cpqcorp,dc=net" -D wyblehp.com mail=wyble@hp.com uid
