#!/bin/bash

ls -l
pwd
ls -l workspace
cd workspace
. ./modeldef.sh

if [ "X${PORT}" == "X" ]; then
  PORT=80
fi

COMMAND="python3 server.py --checkpoint=${MODELFILE} --hparams=${PRESETFILE} --port=${PORT}"

python3 -m nltk.downloader cmudict

exec ${COMMAND}
