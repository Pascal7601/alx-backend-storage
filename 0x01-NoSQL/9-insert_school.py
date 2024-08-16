#!/usr/bin/env python3
"""
Python file to list all documents
in a MongoDB collection
"""

def insert_school(mongo_collection, **kwargs):
    """
    Lists all documents in a collection.

    :param mongo_collection: pymongo collection object
    :return: list of documents in the collection, or an empty list if no documents
    """
    result = mongo_collection.insert_one(kwargs)
    return result.inserted_id
