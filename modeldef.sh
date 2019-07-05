export MODELURL="https://www.dropbox.com/s/5ucl9remrwy5oeg/20180505_deepvoice3_checkpoint_step000640000.pth"
export PRESETURL="https://www.dropbox.com/s/0ck82unm0bo0rxd/20180505_deepvoice3_ljspeech.json"
export MODELFILE=$(basename ${MODELURL})
export PRESETFILE=$(basename ${PRESETURL})


if [ ! -f ${PRESETFILE} ]; then
  curl -O -L "${PRESETURL}"
fi

if [ ! -f ${MODELFILE} ]; then
  curl -O -L "${MODELURL}"
fi
