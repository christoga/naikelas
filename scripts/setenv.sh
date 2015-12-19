#!/bin/sh
echo $DYLD_FALLBACK_LIBRARY_PATH | egrep "/Applications/moodle/common" > /dev/null
if [ $? -ne 0 ] ; then
PATH="/Applications/moodle/sqlite/bin:/Applications/moodle/php/bin:/Applications/moodle/mysql/bin:/Applications/moodle/apache2/bin:/Applications/moodle/common/bin:$PATH"
export PATH
DYLD_FALLBACK_LIBRARY_PATH="/Applications/moodle/sqlite/lib:/Applications/moodle/mysql/lib:/Applications/moodle/apache2/lib:/Applications/moodle/common/lib:/usr/local/lib:/lib:/usr/lib:$DYLD_FALLBACK_LIBRARY_PATH"
export DYLD_FALLBACK_LIBRARY_PATH
fi

TERMINFO=/Applications/moodle/common/share/terminfo
export TERMINFO
##### SQLITE ENV #####
			
SASL_CONF_PATH=/Applications/moodle/common/etc
export SASL_CONF_PATH
SASL_PATH=/Applications/moodle/common/lib/sasl2 
export SASL_PATH
LDAPCONF=/Applications/moodle/common/etc/openldap/ldap.conf
export LDAPCONF
##### PHP ENV #####
		    
##### MYSQL ENV #####

##### APACHE ENV #####

##### CURL ENV #####
CURL_CA_BUNDLE=/Applications/moodle/common/openssl/certs/curl-ca-bundle.crt
export CURL_CA_BUNDLE
##### SSL ENV #####
SSL_CERT_FILE=/Applications/moodle/common/openssl/certs/curl-ca-bundle.crt
export SSL_CERT_FILE
OPENSSL_CONF=/Applications/moodle/common/openssl/openssl.cnf
export OPENSSL_CONF
OPENSSL_ENGINES=/Applications/moodle/common/lib/engines
export OPENSSL_ENGINES


. /Applications/moodle/scripts/build-setenv.sh
