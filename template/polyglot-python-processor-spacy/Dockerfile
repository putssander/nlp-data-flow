FROM springcloud/openjdk:latest

RUN apt-get update && apt-get install --no-install-recommends -y \
    python3-pip \
 && rm -rf /var/lib/apt/lists/*
 
RUN pip3 install kafka-python

RUN pip3 install -U spacy
RUN python3 -m spacy download en_core_web_sm

COPY python_processor.py /processor/
COPY util/*.py /processor/util/

ENTRYPOINT ["python3", "/processor/python_processor.py", "$@", "--"]
