#!/bin/sh -e

~/src/jenkins-tools/bin/delete-job.sh virtual-box-tools || true
~/src/jenkins-tools/bin/put-job.sh virtual-box-tools job.xml
