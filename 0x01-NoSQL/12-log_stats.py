#!/usr/bin/env python3
"""
file that emulates nginx
logs
"""

from pymongo import MongoClient


def stats(collection):
    """
    provide stats of logs collection
    in nginx
    """
    all_logs = collection.count_documents({})
    print(f'{all_logs} logs')
    print('Methods:')
    methods = ['GET', 'POST', 'PUT', 'PATCH', 'DELETE']
    for method in methods:
        ncol = collection.count_documents({"method": method})
        print('\tmethod {}: {}'.format(method, ncol))


if __name__ == '__main__':
    client = MongoClient('mongodb://127.0.0.1:27017')
    collection = client.logs.nginx
    number_col = stats(collection)
