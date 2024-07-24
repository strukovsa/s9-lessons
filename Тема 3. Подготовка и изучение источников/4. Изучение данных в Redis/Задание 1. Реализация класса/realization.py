import json
from typing import Dict
import redis




class RedisClient:
    def __init__(self, host: str, port: int, password: str, cert_path: str) -> None:
        self._client = redis.StrictRedis(host=f'{host}',
    port=port,
    password=password,
    ssl=True,
    ssl_ca_certs=cert_path,
    )
    def set(self, k: str, v: Dict[str, str]) -> None:
        v_json = json.dumps(v)
        self._client.set(k, v_json)
    def get(self, k:str) -> str:
        v = self._client.get(k)
        if not v:
            return None
        j = json.loads(v)
        return j