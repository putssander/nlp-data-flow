#!/usr/bin/env python

import os
import sys
import json
import spacy


from kafka import KafkaConsumer, KafkaProducer
from util.http_status_server import HttpHealthServer
from util.task_args import get_kafka_binder_brokers, get_input_channel, get_output_channel, get_reverse_string
from time import sleep


print("ENV", os.environ, flush=True)

# print("sleep", flush=True)
# sleep(60)
# print("awake", flush=True)



consumer = KafkaConsumer(get_input_channel(), bootstrap_servers=[get_kafka_binder_brokers()])
producer = KafkaProducer(bootstrap_servers=[get_kafka_binder_brokers()])

HttpHealthServer.run_thread()
nlp = spacy.load("en_core_web_sm")

while True:
    for message in consumer:

        doc = nlp(message.value.decode('utf-8'))
        output_message = json.dumps(doc.to_json())
        print(output_message)
        output_message = output_message.encode('utf-8')
        producer.send(get_output_channel(), output_message)

