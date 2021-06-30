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

#Random Forest Classifier Machine Learning Algorithm

library(randomForest)
require(caTools)



