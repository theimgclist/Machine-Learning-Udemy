# Data Preprocessing Template

# Importing the dataset
dataset = read.csv('Data.csv')

# Splitting the dataset into the Training set and Test set
install.packages('caTools')
library(caTools) # activates the library
set.seed(123) # similar to setting random_state in Python
split = sample.split(dataset$DependentVariable, SplitRatio = 0.8)
# Unlike Python, R takes the dependent varible column
# Splitratio mentions the split ratio
# the above method returns an array of Booleans
# if observation is in train data, its value is TRUE
# The data in test, returns FALSE
# SplitRatio = 0.8 means 80% train data, 20% test data
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Feature Scaling
training_set = scale(training_set)
test_set = scale(test_set)
# make sure that the columns being scaled are numeric
# scaling doesnt work with non numberic data columns