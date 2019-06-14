# Online advertising campaigns analysis
This project has been developed by [Miguel Sanchez](https://www.linkedin.com/in/miguel-sanchez-botella-47b17b78/) as the final master thesis of the 14º edition Master in Data Science of KSchool in Madrid.


----------------------------------------------------------------------------------------------------------------------
## Project

**The objective of this project is to know the main variables that affect the performance of an online advertising campaign with the purpose of increasing the return on investment as much as possible.**

This project is divided into two phases:
- **UFO**: a study is carried out in this first phase about the relevance of the different channels through which a user reaches the web in the final conversion.
- **Shopping**: in this second phase the analysis focuses on the performance of the main or the main advertising channels. In this way, you can understand and determine which are the most influential variables to increase profitability.



----------------------------------------------------------------------------------------------------------------------
### Repository structure
The repository has the following structure:
- **shopping**: this folder contains the following information:
    - **data**: contains raw, customize and final datasets of shopping project.
    - **img**: contains the images created during the project.
    - **notebook**: contains the notebooks to read, customize and analyze the data.
- **ufo**: this folder contains the following information:
    - **data**: contains raw, customize and final datasets of ufo project.
    - **img**: contains the images created during the project.
    - **notebook**: contains the notebooks to read, customize and analyze the data.
- **dashboard**: this folder contains a tableau file with some visualization dashboards. 
- **README.md**: this markdown contains a brief summary of the project.
- **requirements.txt**: this script contains the required libraries to install in order to run the notebooks. Is is necessary to run the following step:
```sh
$ pip install -r requirements.txt
```


----------------------------------------------------------------------------------------------------------------------
## Methodology

1. **Data acquisition**: the datasets have been obtained from different private sources:
    1.1. **[GA](https://analytics.google.com/analytics/web/#/) (Google Analytics)**: information obtained from GA account of this ecommerce.
    1.2. **[Adwords](https://ads.google.com) (Google Ads)**: information obtained from Adwords account of this ecommerce.
    1.3 **[SAP](https://www.sap.com/)**: information obtained from the internal BBDD of this ecommerce.
2. **Data preparation**: it has been used Python to develop the steps of data preparation.
3. **Explore data**: it has been used two standard programming languages to develop the exploration and modelation of the dataset:
    3.1. **[Python](https://www.python.org/)**: numpy, pandas, matplotlib, seaborn, etc.
    3.2. **[R](https://www.r-project.org/)**: ggplot2, reshape, channelAtributtion.
4. **Model data**: it has been analyzed the data with regression model using the library [scikit-learn](https://scikit-learn.org/stable/) from python.
5.**Visualization**: it has been used [Tableau](https://www.tableau.com/) for visualization.

  
  
----------------------------------------------------------------------------------------------------------------------
## Dashboard
The visualization dashboards of this project has been developed with Tableau.

Here, there is an extract of this information which can be expanded using the file contained in the [repository](https://github.com/trimiguel/tfm/dashboard).




