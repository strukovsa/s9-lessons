docker run \
    -it \
    --name "kcat" \
    --network=host \
    --rm \
    -v "/usr/local/share/ca-certificates/Yandex/YandexInternalRootCA.crt" \
    edenhill/kcat:1.7.1 -b rc1d-vd0q1nttlef1rhfa.mdb.yandexcloud.net:9091 \
    -X security.protocol=SASL_SSL \
    -X sasl.mechanisms=SCRAM-SHA-512 \
    -X sasl.username=producer_consumer \
    -X sasl.password="xitbo7-rykveB-pabxob" \
    -X ssl.ca.location="/usr/local/share/ca-certificates/Yandex/YandexInternalRootCA.crt" \
    -t order-service_orders \
    -C \
    -o beginning