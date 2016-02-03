#!/bin/sh -e

DIRECTORY=$(dirname "${0}")
SCRIPT_DIRECTORY=$(cd "${DIRECTORY}" || exit 1; pwd)

usage()
{
    echo "Usage: ${0} [--raw]"
}

# shellcheck source=/dev/null
. "${SCRIPT_DIRECTORY}"/../lib/virtual_box_tools.sh

if [ "${1}" = "--raw" ]; then
    ${MANAGE_COMMAND} list runningvms
else
    OUTPUT=$(${MANAGE_COMMAND} list runningvms | awk -F '"' '{ print $2 }')
    SORTED=$(ruby -e "puts \"${OUTPUT}\".split(/\s+/).sort")
    echo "${SORTED}"
fi
