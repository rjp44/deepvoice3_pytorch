FROM pytorch/pytorch

ADD . /workspace
WORKDIR /workspace
RUN apt-get update -qq
RUN apt-get install -y --no-install-recommends curl
RUN curl -O -L "https://www.dropbox.com/s/uzmtzgcedyu531k/20171222_deepvoice3_vctk108_checkpoint_step000300000.pth"
RUN pip install -q torch==0.4.1
RUN pip install -q librosa nltk tensorflow matplotlib cmudict falcon docopt
RUN ls -al ./
RUN cp -v ./presets/deepvoice3_vctk.json .
RUN pip install -q -e '.[train]'
RUN python -m nltk.downloader cmudict
RUN ls -l /bin/bash

WORKDIR /
COPY startup.sh /
RUN ls -l /startup.sh
ENTRYPOINT ["/startup.sh"]
