#!/bin/bash

ls -l
pwd
ls -l workspace
cd workspace
. ./modeldef.sh

PORT=9000

if [ "X${DEEPVOICE_PORT}" != "X" ]; then
  PORT=$DEEPVOICE_PORT
fi

COMMAND="python3 server.py --checkpoint=${MODELFILE} --hparams=${PRESETFILE} --port=${PORT}"

python3 -m nltk.downloader cmudict

exec ${COMMAND}
