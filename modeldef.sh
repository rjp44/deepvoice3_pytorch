MODELURL="https://www.dropbox.com/s/uzmtzgcedyu531k/20171222_deepvoice3_vctk108_checkpoint_step000300000.pth"; export MODELURL
MODELFILE=$(basename ${MODELURL}); export MODELFILE
PRESET="./presets/deepvoice3_vctk.json"; export PRESET

if [ ! -f ${MODELFILE} ]; then
  curl -O -L "${MODELURL}"
fi
