# Online advertising campaigns analysis
This project has been developed by [Miguel Sanchez](https://www.linkedin.com/in/miguel-sanchez-botella-47b17b78/) as the final master thesis of the 14º edition Master in Data Science of KSchool in Madrid.


### Project

**The objective of this project is to know the main variables that affect the performance of an online advertising campaign with the purpose of increasing the return on investment as much as possible.**

This project is divided into two phases:
- **UFO**: a study is carried out in this first phase about the relevance of the different channels through which a user reaches the web in the final conversion.
- **Shopping**: in this second phase the analysis focuses on the performance of the main or the main advertising channels. In this way, you can understand and determine which are the most influential variables to increase profitability.



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


### Methodology

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


### Dashboard
The visualization dashboards of this project has been developed with Tableau.

Here, there is an extract of this information which can be expanded using the file contained in the [repository](https://github.com/trimiguel/tfm/dashboard) or via [Tableau Public Dashboard]().


![alt text](data:image/jpeg;base64,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)



