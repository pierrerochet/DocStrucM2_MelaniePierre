#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Nov 14 16:22:05 2019

@author: rochet
"""
import sys
import os
import pandas as pd

def multiple_merge(df_ref, lst_list, on, how="inner"):
    """merge dataframe list on a reference dataframe"""
    for df in lst_list:
        df_ref = pd.merge(df_ref, df, on=on, how=how)
        return df_ref

def rename_id(df_list, id_name="id"):
    """rename id name of dataframe list"""
    for df in df_list:
        df.rename(columns={"appid":id_name, "steam_appid":id_name}, inplace=True)

def main(input_path=f".{os.sep}data{os.sep}steam-store-games{os.sep}", 
         output_path=f".{os.sep}data{os.sep}data.csv"):
    
    # load all datasets
    df_desc = pd.read_csv(input_path + "steam_description_data.csv")
    df_media = pd.read_csv(input_path + "steam_media_data.csv")
    df_req = pd.read_csv(input_path + "steam_requirements_data.csv")
    df = pd.read_csv(input_path + "steam.csv")
    df_tag = pd.read_csv(input_path + "steamspy_tag_data.csv")
    
    # rename id name
    rename_id([df_desc, df_media, df_req, df, df_tag])
    
    # merge dataframes
    df_total = multiple_merge(df, [df_desc, df_media, df_req, df_tag], on="id")
    
    # create csv
    df_total.to_csv(output_path)

if __name__ == "__main__":
    #main()
    main(sys.argv[1], sys.argv[2])
    print("merge all csv successfully")