#!/usr/bin/env python3
"""
queries a collection and rerurn a
specific data
"""


def schools_by_topic(mongo_collection, topic):
    """
    returns a listfrom an updated collection
    specified on the topi
    """
    school = mongo_collection.find({
        'topics': topic})
    return list(school)
