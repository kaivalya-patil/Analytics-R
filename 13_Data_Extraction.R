# Data Extraction/importing data in R
#read / write Data - from/to File

# Exporting data

# Export to Hard drive----
#To begin with, you can save the data directly into the working directory.
#The following code prints the path of your working directory:
directory <-getwd()
directory
# You can also use getwd() directly

#To set net working directory path
setwd("C:/Users/Omkar/Documents/R_Skill_Edge")
getwd()

mtcars  #inbuilt datasets
data()  #other datasets

# Import/Export of dataset using CSV files--------------------

#------------------Writing the dataset---------------------
#Method 1:

#save it inside the working directory.
write.csv(mtcars, "mtcars2.csv")

#Method 2:

#save it in "data" folder inside the working directory.
#make sure you have a folder : "data" in your project directory
write.csv(x=mtcars, file='data/mtcars1.csv')

#row names = F means that row names will not be displayed
write.csv(x=mtcars, file='data/mtcars_A.csv', row.names = F)


#--------------Read the dataset------------------------
# Method 1:

View(mtcars)

# choose a file to open and assign it ot aboject f
f<- file.choose()
c1 <- read.csv(f)
View(c1)

# Method 2:

#selects file directly from working directory
c_1 <- read.csv("mtcars2.csv")
View(c_1)

#select from the given path inside the working directory
c_2 <- read.csv("data/mtcars_A.csv")
View(c_2)

# this can be used to open file from location other than working directory
newmtcars1 = read.csv(file='C:/Users/Omkar/Downloads/mtcars2.csv')
head(newmtcars1)
#no car names