#Basic operations in R

#Imports the data
ppt_data <- read.csv("gainesville-precip.csv", header = FALSE)

#Calculates the average precipitation in each month across years
monthly_mean_ppt <- colMeans(ppt_data)

#Plots the monthly averages as a simple line plot
plot(monthly_mean_ppt, type = "l", xlab = "Month", ylab = "Mean Precipitation")

#calculations
number_of_birds <- c(28, 32, 1, 0, 10, 22, 30, 19, 145, 27, 
                     36, 25, 9, 38, 21, 12, 122, 87, 36, 3, 0, 5, 55, 62, 98, 32, 
                     900, 33, 14, 39, 56, 81, 29, 38, 1, 0, 143, 37, 98, 77, 92, 
                     83, 34, 98, 40, 45, 51, 17, 22, 37, 48, 38, 91, 73, 54, 46,
                     102, 273, 600, 10, 11)
#How many sites are there?
length(number_of_birds)
#How many birds were counted at site 42?
number_of_birds [42]
#How many birds were counted at the last site? Have the computer choose the last site automatically in some way, not by manually entering its position.
tail (number_of_birds, n=1)
#What is the total number of birds counted across all of the sites?
sum(number_of_birds)
#What is the smallest number of birds counted?
min(number_of_birds)
#What is the largest number of birds counted?
max(number_of_birds)
#What is the average number of birds seen at a site?
mean(number_of_birds)

#example
length <- c(2.2, 2.1, 2.7, 3.0, 3.1, 2.5, 1.9, 1.1, 3.5, 2.9)
width <- c(1.3, 2.2, 1.5, 4.5, 3.1, 2.8, 1.8, 0.5, 2.0, 2.7)
height <- c(9.6, 7.6, 2.2, 1.5, 4.0, 3.0, 4.5, 2.3, 7.5, 3.2)
#The volume of each shrub (i.e., the length times the width times the height)
volume <- length* width* height
volume
#The total volume of all of the shrubs
sum(volume)
#A vector of the height of shrubs with lengths greater than 2.5
height <- c (length > 2.5)
height


