####### AI Biotechnology/Bioinformatics Course  #########

#Course Instructors:
# Dr.SHAHZAIB KHOSO
# ITRAT ZEHRA

####### getting Familiar with R: Session # 1 Assignment  #######

# Topics covered in this section
#### Set working directory
#### Data types
#### Data structures
#### Working with data frames 

### Task: Exploring and Analyzing Data in R 

#### Objective
# The goal of this task is to explore and assess a dataset available in R, 
# address any issues like variable types or missing values,
# and perform basic statistical analysis,
# Finally, interpret your results in a few lines.

#### Steps to Follow 

1: Load a Built-in Dataset
  #Choose any dataset available in R (e.g., `iris`, `mtcars`, `PlantGrowth`, etc.)
  # Check available datasets in R by using "data()"function
  # select any datsets of your choice as load it by using  function 'data(dataset name)' like
    data(iris)
  # convert dataset into dataframe by using command data.frame(iris)
  # or you directly load/convert data as by using given below command
    data <- data.frame(iris)

 2: Explore the Dataset
   # Identify the variables and their data types 
   # Check for missing values using `is.na()` or similar functions

 3: Assess and Clean the Data  
  # Determine if any variables need to be converted to a different type(e.g., numeric to factor or vice versa).  
  # Handle missing values if present (e.g., replace with the mean, median, or omit them).  

 4:  Perform Basic Statistics 
  # Calculate key descriptive statistics for numeric variables (e.g., mean, median, range, standard deviation).  
  # For categorical variables, calculate the frequency of each category 

 5: Interpret Your Results & submit results in group(only output and brief summary of your results not codes)
  #  Write a brief summary of your findings. For example:  
  # Are there any missing values?  
  # What is the general distribution of numeric variables? (e.g mean, range etc)
  # What do the frequencies of categorical variables tell you?  
 
 # for hands-on exercises and related material kindly visit
 https://github.com/zehrhiz/AI_Biotechnology_Bioinformatics_Course
