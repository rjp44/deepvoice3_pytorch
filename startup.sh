#!/bin/bash


COMMAND="python3 server.py --checkpoint=${model} --preset={$preset} --port=80"

cd /workdir
exec ${COMMAND}
