curl -X POST https://redis-data-service.sprint9.tgcloudenv.ru/test_redis \
-H 'Content-Type: application/json; charset=utf-8' \
--data-binary @- << EOF
{
    "redis":{
        "host": "c-c9q8297ei16o5vpsjeoe.rw.mdb.yandexcloud.net",
        "port": 6380,
        "password": "negtem-hodnU6-dunfug"
    }
}
EOF