#!/usr/bin/env python3
"""
python file to list all documents
in a mongodb collection
"""
def list_all(mongo_collection):
    """
    lists all documents
    in collection
    """
    documents = mongo_collection.find()
    return list(documents)
