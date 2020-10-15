###Number 1###
#mimic of the head function
head_mimc <- function(file, top_rows){
  file[top_rows, ]
}




###Number 2###
#Load iris.csv
iris <- read.csv('iris.csv')

#print the last 2 rows in the last 2 columns
#define the number of columns
end_of_table_col <- length(iris)

#define the number of rows
rows_num<- length(iris[,2])
#take the last rows and last columns
iris[(rows_num-1):rows_num,(end_of_table_col-1):end_of_table_col]


#get the number of observations for each species
setosa <- iris[iris$Species=='setosa',]
paste("there are", nrow(setosa), "setosa")
versicolor <- iris[iris$Species=='versicolor',]
paste("there are", nrow(versicolor), "versicolor")
virginica <- iris[iris$Species=='virginica',]
paste("there are", nrow(virginica), "virginica")


#get rows with sepal width>3.5
iris[iris$Sepal.Width>3.5,]

#write the data for the species setosa to a csv
write.table(setosa, "setosa.csv", row.names=FALSE, sep=",")


#calc the mean, min, and max of Petal.length for virginica
mean(virginica$Petal.Length)
min(virginica$Petal.Length)
max(virginica$Petal.Length)








