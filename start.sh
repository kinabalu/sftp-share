#!/bin/bash

if ( id ${USER} ); then
  echo "FATAL: User ${USER} already exists"
  chown ${USER}:${USER} /data
else
  ENC_PASS=$(perl -e 'print crypt($ARGV[0], "password")' ${PASS})
  useradd -d /data -m -p ${ENC_PASS} -u 1000 -s /bin/sh ${USER}
  chown ${USER}:${USER} /data
fi

exec /usr/sbin/sshd -D
