#!/bin/bash


COMMAND="python3 server.py --checkpoint=20171222_deepvoice3_vctk108_checkpoint_step000300000.pth --port=80"

cd /workdir
exec ${COMMAND}
