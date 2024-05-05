**heart disease**

**Predictting whether a person has heart disease through mechin learning**

The primary objective is to utilize machine learning models on a dataset of patient information to predict whether a person has heart disease.

**Description of Data**

https://archive.ics.uci.edu/dataset/45/heart+disease

we are proved with 4 databases: Cleveland, Hungary, Switzerland, and the VA Long Beach. All appear to be multivariate type of datasets. which means they include various numerical or statistical variables. Within this dataset are 14 critical attributes, ranging from age and gender to various heart-related indicators. Despite its 76 attributes in total, researchers zero in on this core subset of 14. Among these datasets, the Cleveland dataset stands out as the primary choice for machine learning investigations

Columns:
- age in years
- sex (1 = male; 0 = female)
- cp chest pain type
- trestbps resting blood pressure (in mm Hg on admission to the hospital)
- chol serum cholestoral in mg/dl
- fbs (fasting blood sugar > 120 mg/dl) (1 = true; 0 = false)
- restecg resting electrocardiographic results
- thalach maximum heart rate achieved
- exang exercise induced angina (1 = yes; 0 = no)
- oldpeak ST depression induced by exercise relative to rest
- slope the slope of the peak exercise ST segment
- ca number of major vessels (0-3) colored by flourosopy
- thal

**Data Tools Used**
- Data Retrieval: Panda, Ucimlrepo
- Cleaning data: Panda
- Data visualization Tools:
- Anazlying Data: Pandas,Scikit

**Extracting Data**

We will import four datasets and combine them into one DataFrame. We will fetch the Cleveland data using the `ucimlrepo` library first, because this dataset contains the proper column headers, and the other three datasets do not. Next, we will import the data from the other three locations-- Hungary, Switzerland, and VA Long Beach-- which we downloaded as .data files from the UC repo. Finally, we will combine the four locations into one dataset.

![Importing Libraries](https://github.com/Simian12/Project_4/blob/main/images/Importing%20data.png?raw=true)

![Importing Libraries](https://github.com/Simian12/Project_4/blob/main/images/remaining%20imports.png?raw=true)


**Transforming data**

**Cleaning data**

The dataset contains a categorical variable, `num`, which indicates the presence and severity of heart disease on a scale of 0 to 4. For the purpose of our analysis, we will convert this to a binary variable that indicates the presence of heart disease.

![Impoting Libraries](https://github.com/Simian12/Project_4/blob/main/images/Transform%20data%20.png?raw=true)

Next, we will handle missing values. 

Many cells contain a "?" as an entry, which is not detected as a missing value, so we will convert cells with ?'s to na's.

![Importing Libraries](https://github.com/Simian12/Project_4/blob/main/images/converting%20.png?raw=true)
