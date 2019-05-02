#!/usr/bin/env python
# coding: utf-8

# In[ ]:


import os
import pandas as pd
import numpy as np
from datetime import datetime


def open_bw(file,sheet_name, path):
    
    #set directory to open the file
    os.chdir(path)
    
    #open the file xlsx    
    df_bw = pd.read_excel(file, sheet_name)
    
    #rename the file columns correctly
    df_bw = df_bw.rename(index=str, columns={"Referencia":"Reference", "T Día natural":"Date", 
                                             "Valor neto pedidos":"Net_Incomes", "Cantidad en unidades (pedidos)":"Units_sold"})
    
    #parse date columns
    df_bw["Date"] = pd.to_datetime(df_bw["Date"], format = "%d.%m.%Y")
    
    return df_bw

