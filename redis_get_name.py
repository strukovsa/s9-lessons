import redis

r = redis.StrictRedis(
    host="c-c9q8297ei16o5vpsjeoe.rw.mdb.yandexcloud.net",
    port=6380,
    password="negtem-hodnU6-dunfug",
    ssl=True,
    ssl_ca_certs="/Users/sergeystrukov/.redis/YandexInternalRootCA.crt",
)


# получим значение ключа с помощью команды get
result = r.get("626a81ce9a8cd1920641e264")
if not result:
    print("Запись с указанным ключом не найдена.")

result = result.decode("utf-8")
print(result)
