#Group 2 Big data analytics capstone project

#Introduction

#In a nutshell we are doing a comparative Study of Machine Learning Techniques for the Early Detection of Diseases in IoT Env.
#This paper proposes a classification method that is provides better classification accuracy than the Gaussian mixture model and logistic regression (i.e. NN,BPNN,CNN).
#The proposed classification method is a slight improvement to the Random Forest Classification, 
#by using Improved Dragonfly Algorithm (IDA) on the dataset for the better classification.
#In order to verify the effectiveness of the proposed method, the different performance measures are analyzed and compared with existing methods.

#Existing methods
# -convolutional neural networks
# -neural networks
# -backward propogation networks

#Proposed method
# -random forest classifier (RFC) + IDA

#Expected results:
# -The proposed method (RFC + IDA) provides classification accuracy better than the Gaussian mixture model and logistic regression (i.e. BNN, NN, CNN). 
#  Both training and testing process get the maximum performance rate that is 94.2% precision,89.99% recall in the proposed model.


#instruction
#before running this code, 
#please ensure you have create a project folder for this capstone and have this script saved in there
#please follow the link below and unzip the file in a location (i.e. the project's folder where this script) is located 
#link -> https://archive.ics.uci.edu/ml/machine-learning-databases/00336/Chronic_Kidney_Disease.rar

#import packages
install.packages("RWeka")
library("RWeka")

#importing patients' datasets (heart disease, liver disorders, lung cancer, kidney disease) as dataframes

heartdisease_df_cleveland = setNames(
  data.frame(
    read.table(
      "https://archive.ics.uci.edu/ml/machine-learning-databases/heart-disease/processed.cleveland.data",sep=",")),
  c('age','sex','cp','trestbps','chol','fbs','restecg','thalach','exang','oldpeak','slope','ca','thal','num the predicted attribute'))

heartdisease_df_hungarian = setNames(
  data.frame(
    read.table(
      "https://archive.ics.uci.edu/ml/machine-learning-databases/heart-disease/processed.hungarian.data",sep=",")),
  c('age','sex','cp','trestbps','chol','fbs','restecg','thalach','exang','oldpeak','slope','ca','thal','num the predicted attribute'))

heartdisease_df_switzerland = setNames(
  data.frame(
    read.table(
      "https://archive.ics.uci.edu/ml/machine-learning-databases/heart-disease/processed.switzerland.data",sep=",")),
  c('age','sex','cp','trestbps','chol','fbs','restecg','thalach','exang','oldpeak','slope','ca','thal','num the predicted attribute'))

heartdisease_df_long_beach_va = setNames(
  data.frame(
    read.table(
      "https://archive.ics.uci.edu/ml/machine-learning-databases/heart-disease/processed.va.data",sep=",")),
  c('age','sex','cp','trestbps','chol','fbs','restecg','thalach','exang','oldpeak','slope','ca','thal','num the predicted attribute'))

liverdisorder_df = setNames(
  data.frame(
    read.table(
      "https://archive.ics.uci.edu/ml/machine-learning-databases/liver-disorders/bupa.data",sep=",")),
  c('mcv','alkphos','sgpt','sgot','gammagt','drinks drunk per day','selector'))

lungcancer_df = data.frame(
  read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/lung-cancer/lung-cancer.data",sep=","))

#before running this code, please download & unzip this file -> in a folder where this script is located -> https://archive.ics.uci.edu/ml/machine-learning-databases/00336/Chronic_Kidney_Disease.rar
kidneydiseasse_df = data.frame(
  read.arff("chronic_kidney_disease.arff"))

#Neural Network Machine Learning Algorithm





