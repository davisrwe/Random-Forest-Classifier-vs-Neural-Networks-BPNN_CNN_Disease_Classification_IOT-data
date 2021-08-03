#import libraries and datasets

library(randomForest)
rfNews()
require(caTools)

data = setNames(
  data.frame(
    read.table(
      "https://archive.ics.uci.edu/ml/machine-learning-databases/heart-disease/processed.cleveland.data",sep=",")),
  c('age','sex','cp','trestbps','chol','fbs','restecg','thalach','exang','oldpeak','slope','ca','thal','num the predicted attribute'))

#To check the structure of our data
dim(data)
names(data) <- c("age", "sex", "cp", "trestbps", "choi", "fbs", "restecg", "thalach", "exang", "oldpeak", "slope", "ca", "thai", "num")
head(data)
data$num[data$num > 1] = 1
summary(data)

#To check the structure of our data
sapply(data, class)

#We need to change the data structures of our respective columns to reflect the nature of the data collected in the respective column

data <- transform(
  data,
  age=as.integer(age),
  sex=as.factor(sex),
  cp=as.factor(cp),
  trestbps=as.integer(trestbps),
  choi=as.integer(choi),
  fbs=as.factor(fbs),
  restecg=as.factor(restecg),
  thalach=as.integer(thalach),
  exang=as.factor(exang),
  oldpeak=as.numeric(oldpeak),
  slope=as.factor(slope),
  ca=as.factor(ca),
  thai=as.factor(thai),
  num=as.factor(num)
)

#Checking to see if transformation is complete
sapply(data, class)

#removing null/missing values from the dataset
data[ data == "?"] = NA
colSums(is.na(data))

data$thai[which(is.na(data$thai))] <- as.factor("3.0")
data <- data[!(data$ca %in% c(NA)),]
colSums(is.na(data))

#Refactoring ca and thai columns data after amending the null/missing values
summary(data)
data$ca <- factor(data$ca)
data$thai <- factor(data$thai)

#Split_the data_set into training and test set
sample = sample.split(data$num, SplitRatio = .75)
train = subset(data, sample == TRUE)
test  = subset(data, sample == FALSE)
dim(train)
dim(test)

#run (build) random forest classifier using default presets i.e. number of trees 500 & the number of features used as potential candidates for each split is 3
rf <- randomForest(num ~ .,  data=train)

#Get Prediction data values
pred = predict(rf, newdata=test[-14])
head(pred)

#print confusion matrix and relevant metrics for model evaluation, first we import the caret package

install.packages("caret")
install.packages("e1071")
library(e1071)
library(caret)

confusionMatrix(pred,test$num)
