**Heart Disease**

**Predicting heart disease through machine learning**

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

The dataset contains a categorical variable, `num`, which indicates the presence and severity of heart disease on a scale of 0 to 4. For the purpose of our analysis, we will convert this to a binary variable that indicates the presence of heart disease.

![Impoting Libraries](https://github.com/Simian12/Project_4/blob/main/images/Transform%20data%20.png?raw=true)
 

Many cells contain a "?" as an entry, which is not detected as a missing value, so we will convert cells with ?'s to na's.

![Importing Libraries](https://github.com/Simian12/Project_4/blob/main/images/converting%20.png?raw=true)

**Cleaning data**
Some columns contain cells with identical values that are being read as two separate numbers, as we saw above.

![Importing Libraries](https://github.com/Simian12/Project_4/blob/main/images/Cleaning%20data%20pt.2.png?raw=true)

Continue cleaning the data: check for outliers and additional possible issues

![Importing Libraries](https://github.com/Simian12/Project_4/blob/main/images/cleaning%20data%20pt%203.png?raw=true)

![Importing Libraries](https://github.com/Simian12/Project_4/blob/main/images/cleaning%20data%20pt%205.png?raw=true)


**Logistic Regression** 

first, we're connecting to our PostgreSQL database

Then, we're scaling continuous variables like age, blood pressure, and cholesterol, putting them into a new table called 'df0_continuous_scaled’.

Next up, we're adding categorical columns and encoding them as dummies to complete our data transformation. 

After that, we're converting boolean variables to binary to make them easier to work with.


![Importing Libraries](https://github.com/Simian12/Project_4/blob/main/images/LR%20data%20prep.png?raw=true)
![Importing Libraries](https://github.com/Simian12/Project_4/blob/main/images/LR%20data%20prep%202.png?raw=true)
![Importing Libraries](https://github.com/Simian12/Project_4/blob/main/images/LR%20data%20prep%203.png?raw=true)


**Training the Data**

Next, we split our data into two parts: 'y' represents the target variable, and 'X' contains all the other features. 

This helps us evaluate how well our model performs on new, unseen data. We use 75% of the data for training and 25% for testing.

Finally, we check the shape of our training set to see how many rows and columns it has. This process sets us up to train our machine learning model on the training data and then test it on the testing data to see how well it works."

![Importing Libraries](https://github.com/Simian12/Project_4/blob/main/images/LR%20training%20and%20testing%20data.png?raw=true)

**Creating Model**

moving into to building our logistic regression model. First, we create the model using the Logistic Regression function, specifying parameters like the solver for optimization, maximum iterations, and setting a random state for reproducibility.
Then, we fit the model using our training data. This means the model learns from the patterns in the data, trying to understand how features relate to the target variable.
After that, we use the model to make predictions on our testing data. The model uses what it learned during training to predict the target variable for the testing data. This way, we can see how well our model performs on new, unseen data."

**Evalute The Models Performance**

so now we're evaluating our logistic regression model. We generate a confusion matrix, which shows us how many true positives, true negatives, false positives, and false negatives our model predicted.

Then, we print out a classification report. This report gives us a summary of how well our model performed, including metrics like precision, recall, and F1-score for each class in our target variable.

Together, these help us understand how accurately our model is classifying instances of heart disease in our testing data."

![Importing Libraries](https://github.com/Simian12/Project_4/blob/main/images/Evaluate%20Models%20Performance.png?raw=true)

**Classifier Models**

We began by preparing our data, separating the target variable 'Heart Disease' from the features. 
Then, we split our data into training and testing sets, maintaining the class distribution using stratified sampling.

![Importing Libraries](https://github.com/Simian12/Project_4/blob/main/images/Classifier%20Models%201.png?raw=true)

Next, we defined six classification models: Logistic Regression, Support Vector Machine (SVM), Naive Bayes, K-Nearest Neighbors (KNN), Decision Tree Classifier, and Random Forest Classifier. 
After that, we trained each model using the training data. Subsequently, we evaluated the models by making predictions on the test set and calculating their accuracy scores. 

![Importing Libraries](https://github.com/Simian12/Project_4/blob/main/images/Classifier%20Models%202.png?raw=true)

Finally, we printed the accuracy scores for each model and visualized the results on a plot titled 'Accuracy.' The Naive Bayes model achieved the highest accuracy score of 65.2%, followed by Logistic Regression with 63.5%, while the Decision Tree Classifier scored the lowest at 55.6%."

![Importing Libraries](https://github.com/Simian12/Project_4/blob/main/images/Classifier%20Model%203.png?raw=true)

**Using Keras Tuner**

We start the neural network using TensorFlow and Keras Tuner. 

This allows customization of activation functions, the number of neurons in the first layer, and the number of hidden layers and neurons. 

Finally, the method compiles the model with binary cross-entropy loss and the Adam optimizer, giving us a flexible way to create and tune neural networks for various tasks.

![Importing Libraries](https://github.com/Simian12/Project_4/blob/main/images/Creating%20heart_model_method2.png?raw=true)

We set to train the model for 100 epochs using the training data X_train_scaled and y_train, while validating it on the test data X_test_scaled and y_test. This process helps optimize the model's performance by exploring different combinations of hyperparameters. 

![Importing Libraries](https://github.com/Simian12/Project_4/blob/main/images/Kerastuner%20search.png?raw=true)

Finally we evaluates the best model found during the hyperparameter search using Keras Tuner against the full test data. 

It retrieves the best model from the tuner, evaluates its performance on the scaled test data X_test_scaled and y_test, and prints out the loss and accuracy metrics. 

This step helps us understand how well the optimized model performs on unseen data

![Importing Libraries](https://github.com/Simian12/Project_4/blob/main/images/model2_data_test.png?raw=true)

