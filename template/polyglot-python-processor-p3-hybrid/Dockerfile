FROM springcloud/openjdk:latest

RUN apt-get update && apt-get install --no-install-recommends -y \
    python3-pip \
 && rm -rf /var/lib/apt/lists/*
 
RUN pip3 install kafka-python

COPY python_processor.py /processor/
COPY util/*.py /processor/util/

ENTRYPOINT ["python3", "/processor/python_processor.py", "$@", "--"]
