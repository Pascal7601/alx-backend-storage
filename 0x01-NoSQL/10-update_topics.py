#!/usr/bin/env python3
"""
update a topic with a certain
name
"""


def update_topics(mongo_collection, name, topics):
    """
    name: the name that defines the clause
    on where the update should occur
    topics: the one thet is updated
    """
    updated_topics = mongo_collection.update_one({
        'name': name}, {'$set': {'topics': topics}})
