#!/bin/sh -e

touch tmp/pypirc.txt
chmod 600 tmp/pypirc.txt

if [ -f "${HOME}/.pypirc" ]; then
    cat "${HOME}/.pypirc" > tmp/pypirc.txt
fi

USER_NAME=$(whoami)
echo "${USER_NAME}" > tmp/user-name.txt
DOMAIN=$(hostname -f)
echo "${DOMAIN}" > tmp/domain.txt
SYSTEM=$(uname)

if [ "${SYSTEM}" = Darwin ]; then
    FULL_NAME=$(scutil --get HostName)
else
    FULL_NAME=$(getent passwd "${USER_NAME}" | cut -d : -f 5 | cut -d , -f 1)
fi

echo "${FULL_NAME}" > tmp/full-name.txt
vagrant up
