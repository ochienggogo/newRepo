##Title: This is about vectors and dataframes 

Numbers<-c(100:110) #concatenate a vector elements 
Numbers #[1] 100 101 102 103 104 105 106 107 108 109 110

Mystrings<-c("Hello", "World", "This", "Is", "R") #concatenate strings
Mystrings #[1] "Hello" "World" "This"  "Is"    "R"

Many<-Numbers*3
Many    #[1] 300 303 306 309 312 315 318 321 324 327 330

CheckOut<-Mystrings*100
#CheckOut    #Error in Mystrings * 100 : non-numeric argument to binary operator
# > CheckOut
# Error: object 'CheckOut' not found


length(Numbers) #gives the count of elements in Numbers vector #[1] 11
length(Mystrings) #gives the number of elements in MyStrings vector #[1] 5
Mystrings[1] #gives the first element of the Mystrings vector #[1] "Hello"

which(Mystrings=="This") #gives position of the element of "This" in Mystrings vector 
#[1] 3
which(Numbers==105) #gives back the position or index the given element or string 
#[1] 6

Sequence1<-seq(100,1000,100) #create a sequence of numbers from 100 to 1000 with i=100
Sequence1 # [1]  100  200  300  400  500  600  700  800  900 1000

Sequence2<-seq(-25,-18,1)
Sequence2 #[1] -25 -24 -23 -22 -21 -20 -19 -18

Sequence3<-seq(-18,-25,-1)
Sequence3 #[1] -18 -19 -20 -21 -22 -23 -24 -25

#creating vectors Name,County,Gender,Salary 
Name<-c("Shelmith","Steve","Mike","Kyalo","Victor","Dennis","Tabitha","Betty","John","Cindy","Mokundi","Kimberly","Edward","Juliet")
County<-c("Nyeri","Homabay","Nyeri","Makueni","Kampala","Meru","Kiambu","Vihiga","Kiambu","Machakos","Nakuru","Makueni","Kiambu","Kericho")
Gender<-c("Female","Male","Male","Male","Male","Male","Female","Female","Male","Female","Male","Female","Male","Female")
Salary<-c(10000,27000,15000,82000,64500,75000,37000,99999,50000,70000,99000,80000,10000,20000)

#creating the Payroll dataframe or dataset 
Payroll<-data.frame(Name,Gender,County,Salary)
Payroll
#displays the following dataset 
#        Name   County Gender Salary
# 1  Shelmith    Nyeri Female  10000
# 2     Steve  Homabay   Male  27000
# 3      Mike    Nyeri   Male  15000
# 4     Kyalo  Makueni   Male  82000
# 5    Victor  Kampala   Male  64500
# 6    Dennis     Meru   Male  75000
# 7   Tabitha   Kiambu Female  37000
# 8     Betty   Vihiga Female  99999
# 9      John   Kiambu   Male  50000
# 10    Cindy Machakos Female  70000
# 11  Mokundi   Nakuru   Male  99000
# 12 Kimberly  Makueni Female  80000
# 13   Edward   Kiambu   Male  10000
# 14   Juliet  Kericho Female  20000

nrow(Payroll) #no of rows #[1] 14
ncol(Payroll) #no of columns   #[1] 4
names(Payroll) #gives the individual names of the column variable
#for large sets of data
County #displays all the county field/elements 
Gender #displays all the gender field/elements 
Name   #displays all the Name field/elements 
Salary #displays all the salary field/elements 

head(Payroll, n=2) ##gives the first two observations
#       Name Gender  County Salary
# 1 Shelmith Female   Nyeri  10000
# 2    Steve   Male Homabay  27000

head(Payroll,n=-12) #subract the last 12 observations and print the first 2
#       Name Gender  County Salary
# 1 Shelmith Female   Nyeri  10000
# 2    Steve   Male Homabay  27000

tail(Payroll, n=2)  #gives the last 2 observations 
#       Name Gender  County Salary
# 13 Edward   Male  Kiambu  10000
# 14 Juliet Female Kericho  20000

tail(Payroll, n=-12)  #subtracts the first 12 observations and gives the last two 
#       Name Gender  County Salary
# 13 Edward   Male  Kiambu  10000
# 14 Juliet Female Kericho  20000

#vector indexation  in datasets
Payroll[8,2] #element at 8th row and 2nd column
# [1] Female
# Levels: Female Male

Payroll[2,2] ##element at the 2nd row and 2nd column 
# [1] Male
# Levels: Female Male

a<-Payroll[2,] # gives all values in the 2nd row or observation in each field 
a
#     Name Gender  County Salary
# 2 Steve   Male Homabay  27000
b<-a[4] #gives the 4th column/element value or # c<-Payroll[2,2]
b
#    Salary
# 2  27000  or 
f<-Payroll[2,4]
f
#[1] 27000

a<-Payroll[14,]
a
#       Name Gender  County Salary
# 14 Juliet Female Kericho  20000
b<-a[2]
b
#     Gender
# 14 Female
#or
c<-Payroll[14,2]
c
#[1] Female

#find the position/index of kericho,Nyeri,Homabay,27000,Steve. Gives only row no.
which(Payroll$County=="Kericho")  #[1] 14
which(Payroll$County=="Nyeri")    #[1] 1 3
which(Payroll$County=="Homabay")  #[1] 2
which(Payroll$Salary=="27000")    #[1] 2
which(Payroll$Name=="Steve")      #[1] 2

Payroll[ , ]   # prints gives the entire dataset 


#install packages.... This is how to install a package 
#install.packages("zoo") or go to packages tab

#after installing a package you must reload the package using the library command 
library(caret) #load caret package 
library(zoo)   #load zoo package 
library(nnet)  #load nnet package 
library(haven)#laod haven package 

#csv,xlsx,sav,dta database and their packages for reading them
#how to open xlsx,csv workbooks and worksheets of excel
#how to read different worksheets from a workbook, how do you know from a workbook from many worksheets and generate a list of sheets, read in data from specifc sheets
#xlsx package read (and write)

#read.xlsx("filename.xlsx", 1) reads your file and makes the data.frame column classes nearly useful, but is very slow for large data sets.
#read.xlsx2("filename.xlsx", 1) is faster, but you will have to define column classes manually. A shortcut is to run the command twice. character specification converts your columns to factors. Use Date and POSIXct options for time.

# require(xlsx)
# read.xlsx("myfile.xlsx", sheetName = "Sheet1")
# read.xlsx2("myfile.xlsx", sheetName = "Sheet1")
# 
# install.packages("xlsx")
# library("xlsx")
# read.xlsx preserves the data type. It tries to guess the class type of the variable corresponding to each column in the worksheet. Note that, read.xlsx function is slow for large data sets (worksheet with more than 100 000 cells).
# read.xlsx2 is faster on big files compared to read.xlsx function.
# The simplified formats of these two functions are:
#   
# read.xlsx(file, sheetIndex, header=TRUE, colClasses=NA)
# read.xlsx2(file, sheetIndex, header=TRUE, colClasses="character")
# 
# file : the path to the file to read
# sheetIndex : a number indicating the index of the sheet to read; e.g : use sheetIndex=1 to read the first sheet
# header : a logical value. If TRUE, the first row is used as the names of the variables
# colClasses : a character vector that represents the class of each column
# 
# 
# Examples :
#   
# library(xlsx)
# file <- system.file("tests", "test_import.xlsx", package = "xlsx")
# res <- read.xlsx(file, 1)  # read first sheet
# head(res[, 1:6])
# 

#installing packages 
#go to packages tab, choose install, write the name of the package and the #n select install 
#or 
#install.packages("name of package eg zoo, caret, nnet")

#After installation is complete go ahead and load the package 
#loading the package 

#read .csv files using read.csv 
# Shelmith<-read.csv("File path",header=TRUE#This is the header/could be false if no column headers/titles sepecified in the first row)
#install haven package (.dto or _) and how to know which fucntion is in which package

#zoo:: or caret:: #functions in caret you can possibly use 
#caret::
#haven::
#install.packages("haven")

#GOGO<-read.csv("DataTraining/Bank Data.csv",header=TRUE)
#GOGO<-read.csv(file="Zukademy/Bank Data.csv",header=TRUE)

GOGO<-read.csv("Zukademy/Bank Data.csv",header=TRUE) #read csv file 
Shel<-read.csv("file:///C:/Users/Steve Gogo/Documents/Zukademy/Bank Data.csv", header=TRUE)
#For example: GOGO<-read.csv("File path",TRUE#This is the header(if #table's row are headings of the fields or columns then true, otherwise #False))
caret::
  haven::
  
  #code generating no of rows and columns
  nrow(GOGO) #45211
ncol(GOGO) #19

colnames(GOGO) #names of the columns 
rownames(GOGO) #names of the rows 
class(GOGO) #gives the type of the data set or objects containing the data
#[1] "data.frame"
class(Payroll)
#[1] "data.frame"
class(County) #give object type or data type of the object 
#[1] "character"

#how many rows have an age of 28 
k=which(GOGO$age==28)
length(k)
#1038 or 
length(which(GOGO$age==28))

#mean age 
mean(GOGO$age) #[1] 40.93621
sd(GOGO$age)   #[1] 10.61876
median(GOGO$age) #[1] 39
max(GOGO$age)  #[1] 95
min(GOGO$age)  #[1] 18
#mode #table(dataset&age then sort)
temp<-table(as.data.frame(GOGO$age))
names(temp)[temp==max(temp)]
names(table(GOGO$age))[table(GOGO$age)==max(table(GOGO$age))]
#mode 
y <- sort(table(GOGO$age))
y
names(y)[which(y==max(y))] # [1] "32"


#mean balance 
mean(GOGO$balance)
sd(GOGO$balance)
median(GOGO$balance)
max(GOGO$balance)
min(GOGO$balance)
#mode
z<-sort(table(GOGO$balance))
z
names(z)[which(z==max(z))]  # 0

#mean duration  
mean(GOGO$duration)
sd(GOGO$duration)
median(GOGO$duration)
max(GOGO$duration)
min(GOGO$duration)
###mode #table(dataset&age then sort)
t<-sort(table(GOGO$duration))
t
names(t)[which(t==max(t))] # 124
