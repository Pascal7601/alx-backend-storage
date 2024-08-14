#!/usr/bin/env python3
"""
writing strings to redis
"""
import redis
import uuid
from typing import Union


class Cache:
    def __init__(self):
        self._redit = redis.Redis()
        self._redit.flushdb()

    def store(self, data: Union[str, bytes, int, float]) -> str:
        key = str(uuid.uuid4())
        self._redit.set(key, data)
        return key
