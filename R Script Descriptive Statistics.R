####### AI Biotechnology/Bioinformatics Course  #########

#Course Instructors:
 # Dr.SHAHZAIB KHOSO
 # ITRAT ZEHRA

####### getting Familiar with R: Session # 1  #######

# Topics covered in this section
  #### Set working directory
  #### Data types
  #### Data structures
  #### Working with data frames 
 
getwd() # to check current working directory 

setwd(choose.dir()) # set new working directory ### 

# task 
# Create a sub-folder named as "R Programming Batch 1" in your "Documents"/ any other location folder
# set it as your working directory
# make sure to work in same wd through out this course

######################## Data Types ##############################

# 1-Numeric
# real numbers that have a decimal value (either positive or negative)
a <- 2
class(a) # You can use the `class()` function to check the data type of any variable

b <- 0.75
class(b)

c <- -2.5
class(c)

# 2-Integer
# whole numbers without decimal places (either positive or negative)
d <- 2 
class(d)

#In R, you can define a variable as an integer by adding an "L" after the number
e <- 2L
class(e)

# simply you can convert numeric variables in to integer 
f <- as.integer(c) # convert numeric to integer
print(g) # R truncates the decimal part while converting numeric into integer variable
class(g)

### When to Use Integer Instead of Numeric?

# Using integer instead of numeric can be beneficial in certain cases.
# AS Integer values take up less memory compared to numeric values 
# which is important when working with large datasets and machine learning algorithms 

# convert integer to numeric variable
h <- as.numeric(g)
class(h)

# 3-Character 
# data type is used to store text or strings

chr <- "biotechnolgy"
class(chr)

a <- biotechnolgy # must be enclosed in either single (') or double (") quotation marks

b <- 2
class(b)

c <- "2" # if number enclosed in quotation R will also considered it as character not number
class(c)

# 4_Factor
# Use to refer to a qualitative relationship in data 
# good, bad, disease, cancer
# useful in statistical and machine learning modeling

group <- c("cancer", "normal", "normal", "cancer", "normal")
class(group)
factor(group) # check levels 

group_a <- as.factor(group) # convert character vector into class factor
class(group_a)
factor(group)

#create new numeric vector based on already existing character vector
target <- ifelse(group == "normal", 0, 1) # assign 0 to normal and 1 to cancer 
print(target)
class(target)

target_a <- as.factor(target) # convert numeric into factor
class(target_a)

#### Data Structures ####

## Vectors: sequence of elements of same data type
## It can be created using 'c()' function

# Numeric vector
numeric_vector <- c(1, 2, 3, 4, 5)
print(numeric_vector)

# Character vector
character_vector <- c("oxygen", "nitrogen", "hydrogen")
print(character_vector)

#### Lists: unlike vectors list contains elements of various data types 

list_1 <- 1:3 #(seq from 1 t0 5)
#1,5 ( 1 & 5)
print(list_1)

list_2 <- letters[1:10]
print(list_2)

list_3 <- c("cancer", "normal", "normal", "cancer", "normal")
print(list_3)
class(list_3)

combined_all <- list(list_1, list_2, list_3) ### nested list
print(combined_all)
class(combined_all)
str(combined_all)

data_1 <- combined_all[[3]]
print(data_1)

# since combined_all contains a combination of all data types: numeric character and factors etc
# character data type will get dominance and complete data set will be character

data_2 <- unlist(combined_all) 
print(data_2)
class(data_2)

# Matrix: two dimensional collection of elements of the same datatype 
# You can consider it as a table with different  rows and columns

matrix_1 <- matrix(c(1:9), nrow = 3, ncol = 3) # asign values column by column
print(matrix_1)

matrix_2 <- matrix(c(1:9), nrow = 3, ncol = 3, byrow = TRUE)
print(matrix_2)

matrix_3 <- matrix(c(1:9), nrow = 3, ncol = 3, byrow = FALSE)
print(matrix_3)
###### Create data with row and column name
matrix_4 <- matrix(c(1:9), nrow = 3, ncol = 3, byrow = TRUE,
                   dimnames = list(c("row1", "row2", "row3"),
                                   c("column_1", "column_2", "column_3")))

print(matrix_4)

matrix_3 <- matrix(c(1:9), nrow = 3, ncol = 3, byrow = FALSE,
                   dimnames = list(c("row1", "row2", "row3"),
                                   c("C1", "C.2", "C.3")))
print(matrix_3)

# Data frame also two-dimensional data structure with different data types
# table as matrix but contain different types data in rows and columns  

### create dataset for 10 participants(sample_ID S1 to S10), with different variables
# like Disease Status, Age, Weight, Height Gender, BMI, Glucose_level, Cholestrol_level

data <- data.frame(
  sampl_id = c("S1", "S2", "S3", "S4", "S5", "S6", "S7", "S8", "S9", "S10"),
  Disease_Status = c("normal", "cancer", "normal","cancer", "cancer", "normal","normal","cancer", "normal", "normal"),
  Age = c(56, 66, 73, 80, 65, 45, 55, 67, 70, 85),
  Weight = c(81,85, 90, 75, 81.5,85.9, 90, 75.8, 65, 55),
  Height = c(6, 5.3, 6.2, 5.4, 6, 5.3, 6.2, 5.4, 6, 5.3),
  Gender = c("male", "female", "male", "female","female", "male", "female", "male", "female", "male"),
  BMI = c(25, 27, 30, 18, 28, 22, 27, 30, 18, 28),
  Glucose_level = c(70, 120, 150, 110, 200, 115, 107, 108, 100, 90),
  Cholestrol_level = c(150, 100, 200, 250, 120, 185,  100, 200, 250, 120)
)
str(data)

# Assessment of data frame is very important step for data manipulation and data analysis

# data Assessment 
str(data) # Provides the structure of the dataset
names(data) # Lists variables in the dataset
colnames(data) # display column names
rownames(data) # display row names
head(data) # First 6 rows of dataset
head(data, n=3)# First 3 rows of dataset
head(data, n= -2) # All rows but the last 2
tail(data) # Last 6 rows
tail(data, n=3) # Last 3 rows
tail(data, n= -1) # All rows but the first 
# data[#rows, column]
data[1:3,] # first 3 rows and all columns
data[c(1:3), 5]  # first 3 rows of 5 columns only 
data[1:5,1:2] # First 5 rows of data of the first 2 columns/variables
data[c(1, 3, 6),] #row 1. 3. & 4 of all columns
data[c(1, 3, 6),c(1, 4, 7)] #row 1. 3. & columns 1, 4, 7 only


###### Select/eliminate specific row or column
data$sampl_id<- NULL # remove specific column using $ function
data_3 <- data[,-1] # remove 1st column
data_4  <- data[, -c(1, 2)] # remove 1st & 2nd column
data_4  <- data[-c(1, 2),] # remove 1st & 2nd rows

###### Transpose data 
data_t <- t(data) 

#### create data with NAs 
my_data <- data.frame(
  sampl_id = c("S1", "S2", "S3", "S4"),
  Disese_Status = c("cancer", "normal","cancer", NA),
  Age = c(56, 66, 73, 80),
  Weight = c(81,NA, 90, 75),
  Height = c(6, 5.3, 6.2, 5.4),
  Geneder = c("male", NA, "male", "female")
)
###### Find missing values
is.na(my_data)

# Total missing values in the dataset
sum(is.na(my_data))
# Count missing values in each column
colSums(is.na(my_data))

# Count missing values in each column
rowSums(is.na(my_data))

# Remove rows with any missing values
na.omit(my_data) #remove NAs by rows

# Remove columns with any missing values
data_a[, colSums(is.na(my_data)) == 0]

# Replace missing values with a specific value (e.g., 0)
data_a[is.na(my_data)] <- 0
print(my_data)

################################ Excercises #################################
# Task

# 1_Create a numeric vector with both positive and negative decimal values

# Check the class of your numeric vector 

# 2_Convert a numeric value into an integer using
# Observe how R truncates the decimal part

# 3_Create a character variable with your name and check its class

# 5_check the length of a character string using `nchar()

# 6_Create a mixed vector of numbers and strings(alphabets/words)
#Use `class()` to verify how R interprets the data

# 7_create a factor variable with numeric vector (e.g, 0, 1,0,1,0 )
# then Convert a numeric variable into a character vector (e.g, 0 = normal, 1 = cancer)
# convert into factor and check its levels

#### Descriptive Statistics #####
# before performing descriptive analysis convert character variables into numeric
str(data) # to check variable types

# sample_id, disease status and gender column is in character convert them into numeric factor

data$sampl_id <- NULL # we don't need sample_id so will remove it from data
print(data)

# Convert Disease_Status into a numeric factor
data$Disease_Status_Numeric <- ifelse(data$Disease_Status == "normal", 0, 1)
# new column with "Disease_Status_Numeric" will be created as last, check data 
print(colnames(data))
factor(data$Disease_Status)

# Convert Gender variable into a numeric factor
data$Gender_Numeric <- ifelse(data$Gender == "male", 0, 1)
# new column with "Disease_Status_Numeric" will be created as last, check data 
print(data)
factor(data$Gender)

data_cleaned <- data[, -c(1, 5)] # remove "Disease_Status" and "Gender column by specifying column number
print(colnames(data_cleaned))

# Rename specific columns in the data frame
colnames(data_cleaned)[colnames(data_cleaned) %in% c("Disease_Status_Numeric", "Gender_Numeric")] <- c("Disease_status", "Gender")

# Check the updated column names
print(colnames(data_cleaned))

############ Now perform some basic statistics 
summary(data_cleaned) # provides basic statistics of all variables
table(data_cleaned$Disease_status) ## create frequency table for categorical/factor variables
table(data_cleaned$Gender)
table(data_cleaned$Age) # age can be categorical or numeric variable depends how you want to asses it 

# range 
range <- range(data_cleaned$Age)
range_age <- range(data_cleaned$Age)
range_weight <- range(data_cleaned$Weight)

range_diff_age <- max(data_cleaned$Age) - min(data_cleaned$Age)
range_diff_weight <- max(data_cleaned$Weight) - min(data_cleaned$Weight)

# Variance 
var <- var(data_cleaned$Age)

# Standard deviation
sd <- sqrt(var(data_cleaned$Age))

# Mean Deviation
mean_deviation <- sum(abs(data$Age-mean(data_cleaned$Age)))/length(data_cleaned$Age) 
print(mean_deviation)

#quartile
quantile <- quantile(data_cleaned$Age, probs = c(0,0.25,0.5,0.75,1))
74.75 - 63.50 #(Q3 - Q1)

# interquartile range 
iqr <- IQR(data_cleaned$Age) #IQR = Q3 - Q1 

# quartile deviation: half of distance from Q1 and Q3 
quartile_deviation <-  IQR(data_cleaned$Age)/2  # = Q3 - Q1/2

#coefficient of quartile deviation = (Q3 - Q1) or iqr /Q3 + Q1)
coefficient_of_quartile_deviation <- IQR(data_cleaned$Age)/ sum(quantile[c(2, 4)])

# Define the function

descriptive_statistics <- function(column) {
  # Summary statistics
  summary <- summary(column)
  range_values <- range(column)
  range_diff <- diff(range_values)
  variance <- var(column)
  sd <- sqrt(variance)
  mean_deviation <- sum(abs(column - mean(column))) / length(column)
  quantiles <- quantile(column, probs = c(0, 0.25, 0.5, 0.75, 1))
  iqr <- IQR(column)
  quartile_deviation <- iqr / 2
  coef_quartile_deviation <- iqr / sum(quantiles[c(2, 4)])
  
  # Combine all metrics
  stats <- c(
    summary,
    Range = range_diff,
    Variance = variance,
    SD = sd,
    Mean_Deviation = mean_deviation,
    IQR = iqr,
    Quartile_Deviation = quartile_deviation,
    Coef_Quartile_Deviation = coef_quartile_deviation
  )
  
  return(stats)
}
# Apply the function to each column
results <- sapply(data_cleaned, descriptive_statistics) # your data name and above assigned function 

# Convert the matrix to a data frame for better readability
results_df <- as.data.frame(results)
print(results_df)

write.csv(results, file = "descritive_summary.csv") ### save results in working directory

## Read/import data in R 
#data <- read.csv(file.choose()) #import .csv file into R
#data <- read.delim(file.choose()) # import .txt file into R

data_2 <- read.csv("descritive_summary.csv")# try to import above written file from directory
data <- read.csv(file.choose()) # or import by direct file choosing function

# for more hands-on exercises and related material kindly visit
https://github.com/zehrhiz/AI_Biotechnology_Bioinformatics_Course
