FROM pytorch/pytorch

ENV model 20171222_deepvoice3_vctk108_checkpoint_step000300000.pth
ENV preset ./presets/deepvoice3_vctk.json

ADD . /workspace
WORKDIR /workspace
RUN ./modeldef.sh
RUN pip install -q torch==0.3.1
RUN pip install -q librosa nltk tensorflow matplotlib cmudict falcon docopt
RUN pip install -q -e '.[train]'
RUN python -m nltk.downloader cmudict
RUN ls -l /bin/bash

WORKDIR /
COPY startup.sh /
RUN ls -l /startup.sh

ENTRYPOINT ["/startup.sh"]
