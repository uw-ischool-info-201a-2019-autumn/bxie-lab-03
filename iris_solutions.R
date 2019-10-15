# adapted from exercises by Kishore Vasan. https://github.com/info201a-s19/lab-exercises
data(iris)
View(iris)

# A1. Search "iris" in Help. What is the dataset about?

# A2. Get all rows of Species 'versicolor' in a new data frame. Call this data frame: 'iris.vers'
iris.vers <- iris[iris$Species == 'versicolor',] # don't forget the comma!

# A3. Get a vector called 'sepal.dif' with the difference between 'Sepal.Length' and 'Sepal.Width' of 'versicolor' plants.
sepal.dif <-iris.vers$Sepal.Width - iris.vers$Sepal.Length

# A4. Add 'iris.vers' with the new column 'sepal.dif'.
iris.vers$speal.dif <- sepal.dif

# A5. filter for all data of Species 'virginica' with a 'Sepal.Width' of greater than 3.5.
iris[iris$Species == "virginica" & iris$Sepal.Width > 3.5,]

# A6. get a data frame of  all data of Species 'setosa' with a 'Sepal.Width' of greater than 3.5, but without the last column Species in the data frame?
iris[iris$Species == "setosa" & iris$Sepal.Width > 3.5, 
     1:(ncol(iris)-1)] # get all but last column

# A7. Write a function that takes in a species name as an argument and returns the average Sepal Width of that species.
get_sepal_width <- function(species_name) {
  mean(iris[iris$Species == species_name, "Sepal.Width"])
}

# A8. What is the average Sepal.Length for 'versicolor' species having a Petal.Length of 4.2 or higher?
mean(iris[iris$Species == 'versicolor' & iris$Petal.Length >= 4.2, "Sepal.Length"])

