import redis

r = redis.StrictRedis(
    host="c-c9q8297ei16o5vpsjeoe.rw.mdb.yandexcloud.net",
    port=6380,
    password="negtem-hodnU6-dunfug",
    ssl=True,
    ssl_ca_certs="/Users/sergeystrukov/.redis/YandexInternalRootCA.crt",
)

# запишем в Redis ключ here_is_the_key и соответствующее ему строковое значение string value
r.set("here_is_the_key", "string value")

# получим значение ключа с помощью команды get
result = r.get("here_is_the_key")
if not result:
    print("Запись с указанным ключом не найдена.")

result = result.decode("utf-8")
print(result)
