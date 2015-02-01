#!/bin/bash

## send mail setting for gmail refer:http://easyramble.com/install-sendmail-and-forward-mails.html

# MY_ADDRESS=hoge@gmail.com
# MY_PASSWORD=hogehoge

# sudo tee -a /etc/mail/authinfo <<EOF
# Authinfo:smtp.gmail.com "U:$MY_ADDRESS" "P:$MY_PASSWORD" "M:PLAIN"
# Authinfo:smtp.gmail.com:587 "U:$MY_ADDRESS" "P:$MY_PASSWORD" "M:PLAIN"
# EOF

# sudo makemap -r hash /etc/mail/authinfo.db < /etc/mail/authinfo

# sudo tee -a /etc/mail/sendmail.mc <<'EOF'
# dnl --------------------------------
# define(`confAUTH_MECHANISMS', `EXTERNAL GSSAPI DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl
# TRUST_AUTH_MECH(`EXTERNAL GSSAPI DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl
# FEATURE(`authinfo', `Hash -o /etc/mail/authinfo')dnl
# define(`SMART_HOST', `smtp.gmail.com')dnl
# define(`RELAY_MAILER_ARGS', `TCP $h 587')dnl
# define(`ESMTP_MAILER_ARGS', `TCP $h 587')dnl

# DAEMON_OPTIONS(`Port=submission, Name=MSA, M=Ea')dnl

# TRUST_AUTH_MECH(`EXTERNAL DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl
# define(`confAUTH_MECHANISMS', `EXTERNAL GSSAPI DIGEST-MD5 CRAM-MD5 LOGIN PLAIN')dnl
# dnl --------------------------------
# EOF

