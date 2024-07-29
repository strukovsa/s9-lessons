curl -X POST https://postgres-check-service.sprint9.tgcloudenv.ru/init_schemas \
-H 'Content-Type: application/json; charset=utf-8' \
--data-binary @- << EOF
{
  "student": "strukovs",
  "pg_settings": {
    "host": "rc1a-dp19x6p3x60dxl1l.mdb.yandexcloud.net",
    "port": 6432,
    "dbname": "sprint9dwh",
    "username": "user1",
    "password": "Sypzaj-jafjof-4kaxda"
  }
}
EOF