FROM pytorch/pytorch

ADD . /workspace
WORKDIR /workspace
RUN ./modeldef.sh
RUN pip install -q -e '.[bin]'
RUN pip install -q librosa nltk tensorflow matplotlib cmudict falcon docopt
RUN python -m nltk.downloader cmudict
RUN ls -l /bin/bash

WORKDIR /
COPY startup.sh /
RUN ls -l /startup.sh

ENTRYPOINT ["/startup.sh"]
