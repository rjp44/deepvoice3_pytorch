#!/bin/bash

ls -l
pwd
ls -l workspace
cd workspace
. ./modeldef.sh

COMMAND="python3 server.py --checkpoint=${MODELFILE} --hparams=${PRESETFILE} --port=80"


exec ${COMMAND}
