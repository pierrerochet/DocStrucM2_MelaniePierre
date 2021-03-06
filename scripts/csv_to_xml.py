#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Nov 14 19:09:47 2019

@author: rochet
"""

import sys
import os
import pandas as pd
from lxml import etree as ET
import re
import unidecode

def csv_to_xml(input_path=f"..{os.sep}data{os.sep}data.csv",
         output_path=f"..{os.sep}data{os.sep}data_2.xml"):

    # load drataset
    df = pd.read_csv(input_path, index_col="Index", encoding="utf8")

    # build tree ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    root = ET.Element("games")

    for i in range(len(df)):
        row = df.iloc[i]
        game = ET.SubElement(root, "game", id=str(row.id))
        ET.SubElement(game, "name").text = str(row[1])
        ET.SubElement(game, "release_date").text = str(row.release_date)
        ET.SubElement(game, "developer").text = str(row.developer)
        ET.SubElement(game, "publisher").text = str(row.publisher)
        ET.SubElement(game, "platforms").text = str(row.platforms)
        ET.SubElement(game, "required_age").text = str(row.required_age)
        ET.SubElement(game, "steamspy_tags").text = str(row.steamspy_tags)
        ratings = ET.SubElement(game, "ratings")
        ET.SubElement(ratings, "positive").text = str(row.positive_ratings)
        ET.SubElement(ratings, "negative").text = str(row.negative_ratings)
        ET.SubElement(game, "price").text = str(row.price)

    tree = ET.ElementTree(root)
    tree.write(output_path, pretty_print=True)
    #++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    print("ok")


csv_to_xml()
