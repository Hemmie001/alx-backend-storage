#!/usr/bin/env python3
"""
This python function list all documents in Python
"""


def list_all(mongo_collection):
    """
    lists all documents in a collection

    :param mongo_collection:
    :return:
    """
    return mongo_collection.find()
