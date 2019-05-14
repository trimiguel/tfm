#import libraries
import os
import pandas as pd
import numpy as np

#create dataframe
start_date = '2018-09-03'
end_date = '2019-03-31'
mydates = pd.date_range(start_date, end_date).tolist()
df = pd.DataFrame(np.array(mydates).reshape(210,1), columns = ["Dates"])

#set directory
path = '/home/miguel/my_project_python/my_project_env/tfm/shopping/data/raw/datetime'
os.chdir(path)

#save data in csv
df.to_csv("datetime_df.csv")