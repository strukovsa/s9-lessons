import json
from typing import Dict, Optional
from confluent_kafka import Consumer
import time

def error_callback(err):
        print('Something went wrong: {}'.format(err))

class KafkaConsumer:
    def __init__(self,
                 host: str,
                 port: int,
                 user: str,
                 password: str,
                 topic: str,
                 group: str,
                 cert_path: str
                 ) -> None:
        params = {
            'bootstrap.servers': f'{host}:{port}',
            'security.protocol': 'SASL_SSL',
            'ssl.ca.location': cert_path,
            'sasl.mechanism': 'SCRAM-SHA-512',
            'sasl.username': user,
            'sasl.password': password,
            'group.id': group,
            'auto.offset.reset': 'earliest',
            'enable.auto.commit': False,
            'error_cb': error_callback,
            'debug': 'all',
            'client.id': 'someclientkey'
        }

        self.consumer = Consumer(params)
        self.consumer.subscribe([topic])

    def consume(self, timeout: float = 3.0) -> Optional[Dict]:
        while True:
            msg = self.consumer.poll(timeout=timeout)

            if msg is None:
                time.sleep(1)
                continue

            if msg.error():
                raise Exception(msg.error())
        
            val = msg.value().decode()
            print(json.loads(val))
            return json.loads(val)
