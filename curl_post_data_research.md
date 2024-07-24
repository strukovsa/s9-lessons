curl -X POST https://order-gen-service.sprint9.tgcloudenv.ru/register_kafka \
-H 'Content-Type: application/json; charset=utf-8' \
--data-binary @- << EOF
{
    "student": "strukovs",
    "kafka_connect":{
        "host": "rc1d-vd0q1nttlef1rhfa.mdb.yandexcloud.net",
        "port": 9091,
        "topic": "order-service_orders",
        "producer_name": "producer_consumer",
        "producer_password": "xitbo7-rykveB-pabxob"
    }
}
EOF