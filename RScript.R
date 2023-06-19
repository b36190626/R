# Task 1: In the console and in the R script, calculate 2 + 2.
2 + 2

# Task 2: Display help for the "print" built-in function.
?print

# Task 3: Create a new program file "prog_xx.R" (xx - your initials) and save to the Desktop, write the command displaying 'Hello World'.
print( 'Hello world' )

# Task 4: Add numbers 10 and 10. Then divide the result by 2. Subtract 5 from the result. Then multiply the result by 3. Use parentheses or braces.
((10 + 10) / 2 - 5) * 3

# Task 5: Write on the screen the following sentence: "The beginning is the most important part of the work" - Platon. The quote should be enclosed in quotation marks.
cat( "\"The beginning is the most important part of the work\" - Platon" )

# Task 6: Write the following text on the screen in separate lines:
#         Learning of programming
#         requires
#         persistent work
cat( " Learning of programming \n requires \n persistent work" )

# Task 7: Write a R program to create a vector of a specified type and length. Create vector of numeric, complex, logical and  character types of length 10.
numeric( 10 )
complex( 10 )
logical( 10 )
character( 10 )

# Task 8: Write a R program to append value to a given empty vector.
y <- complex( 0 )
append(y, 1L, 0)

# Task 9: Write a R program to find Sum, Mean and Product of a Vector, ignore element like NA or NaN.
x <- c(1, 2, 3, 4, NA, NaN)
sum(x, na.rm = TRUE)

# Task 10: Write a R program to sort a Vector in ascending and descending order. 
x <- c(1, 2, 6, 5)
sort(x, decreasing = FALSE)
sort(x, decreasing = TRUE)

# Task 11: Write a R program to count the specific value in a given vector.
x <- rep( c(1, 2), times = 3 )
length(x[x==1])

# Task 12: Write a R program to find second highest value in a given vector.
x <- c(1, 2, 3, 4, 6, 9, 5)
max(x[x != max(x)])

# Task 13: Write a R program to find nth highest value in a given vector.
n <- 3
sort(x, decreasing = TRUE)[n]

# Task 14: Write a R program to find common elements from multiple vectors.
u <- c(1, 2, 3, 4, 5, 6, 7)
v <- c(1, 4, 8, 5, 3, 9)
intersect(u, v)

# Task 15: Write a R program to list the distinct values in a vector from a given vector.
x <- c(1, 2, 3, 4, 5, 6, 4, 4, 5, 3, 7)
unique(x)

# Task 16: Write a R program to find the elements of  a given vector that are not in another given vector.
u <- c(1, 2, 3, 4, 5, 6, 7)
v <- c(1, 4, 8, 5, 3, 9)
u[!(u %in% v)]

# Task 17: Write a R program to reverse the order of given vector.
u <- c(1, 2, 3, 4, 5, 6, 7)
u[length(u):1]

# Task 18: Write a R program to concatenate a vector.
u <- c(1, 2, 3, 4, 5, 6, 7)
v <- c(1, 4, 8, 5, 3, 9)
cat(u, v)

# Task 19: Write a R program to take input from the user (name and age) and display the values.
name <- readline("Please enter a name: \n")
age <- readline("Please enter an age: \n")
age <-  as.integer(age);
sprintf("Name: %s", name)
sprintf("Age: %d", age)

# Task 20: Write a R program to create a vector which contains 10 random integer values between -10 and +10.
floor(runif(10, -10, 11))

# Task 21: Write a R program to extract first 5 english letter in lower case and last 5 letters in upper case and extract letters between 20nd to 22th letters in upper case.
letters[1:5]
toupper(letters[(length(letters)-4):length(letters)])
toupper(letters[20:22])

# Task 22: Write a R program to get the unique elements of a given string.
x <- "QUEueisonlyqUEue"
unique(strsplit(x, "")[[1]])


2)

# In all below tasks create your own toy objects i.e. named vectors, non-empty vectors and lists etc.
# 
numbers <- c(1, 3, 5, 6, 4, 432, 434, 34, 3, 4, 3, 4, 3, 4, 3, 4, 3)
letters <- factor( c( "a", "b", "c", "a", "c" ) )
more_letters <- factor( c( "a", "b", "c", "a", "c", "d", "e", "f", "d", "d", "r", "t", "d", "e", "q", "z", "f", "h", "d", "a" ) )
countries <- factor( c( "Poland", "Bulgaria", "Turkey", "Germany", "France", "UK", "UK", "Germany", "Turkey", "Turkey" ) )
shows <- factor( c( "Breaking Bad", "Breaking Bad", "Breaking Bad", "GoT", "GoT", "Breaking Bad", "The Office", "Breaking Bad", "GoT", "The Office" ) )
months <- factor( c( "February", "May", "April", "March", "January", "June", "July", "August", "September", "October", "November", "December", 
                     "August", "August", "August", "October", "November", "October", "November", "October", "November", "December" ) )


# Task 1: Write a R program to find the levels of factor of a given vector.
levels(letters)

# Task 2: Write a R program to change the first level of a factor with another level of a given factor.
levels(letters)[1] <- levels(letters)[length(levels(letters))]
letters

# Task 3: Write a R program to create an ordered factor from data consisting of the names of months.
months <- factor( c( "February", "May", "April", "March", "January", "June", "July", "August", "September", "October", "November", "December", 
                     "August", "August", "August", "October", "November", "October", "November", "October", "November", "December" ),
                  ordered = T, levels = c( "January", "February", "March", "April", "May", "June", "July", 
                                           "August", "September", "October", "November", "December" ) )
months

# Task 4: Write a R program to concatenate two given factor in a single factor.
append(countries, shows)

# Task 5: Write a R program to count the specific value in a given vector.
table(numbers)[["4"]]

# Task 6: Write a R program to extract the five of the levels of factor created from a random sample from the LETTERS.
levels(more_letters)[1:5]

# Task 7: Write a R program to create a list containing strings, numbers, vectors and a logical values.
list_task7 <- list("str1", "str2", 3, 6, c("str3", "str4"), TRUE, FALSE)
list_task7

# Task 8: Write a R program to list containing a vector, a matrix and a list and give names to the elements in the list.
list_task8 <- list( c(2.72, 5), list( vec = 1:7, ch = "a" ) )
list_task8

# Task 9: Write a R program to select second element of a given nested list.
list_task8[[2]]$ch

# Task 10: Write a R program to create a list containing a vector, a matrix and a list and update the last element.
list_task10 <- list(1:5, list("a", "b", TRUE))
list_task10[[ length(list_task10) ]][3] <- FALSE
list_task10

# Task 11: Write a R program to merge two given lists into one list.
list_task11 <- append(list_task8, list_task10)
list_task11

# Task 12: Write a R program to convert a given list to vector.
unlist(list_task10)

# Task 13: Write a R program to count number of objects in a given list.
length(unlist(list_task10))

# Task 14: Write a R program to assign NULL to a given list element.
list_task14 <- list(2, 3.14, TRUE)
list_task14[1] <- NULL
list_task14

# Task 15: Write a R program to Add 10 to each element of the first vector in a given list.
list_task15 <- list(1:5, 6:9, TRUE, "text")
list_task15[[1]] + 10

# Task 16: Write a R program to get the length of the first two vectors of a given list.
lapply(list_task15[1:2], length)

# Task 17: Write a R program to find all elements of a given list that are not in another given list.
list_task17_1 <- list(1, 2, 3, TRUE, FALSE, 3.14, "text", "text2", c(1, 2))
list_task17_2 <- list(1, FALSE, "text", 3.14, 2, c(1, 2, 3))
list_task17_1[lapply(list_task17_1, function(x) {!any(x %in% list_task17_2)}) == TRUE]

3)

# Task 1:
# a) Create the "letter" vector containing upper case letters from the basic alphabet (26 letters).
letter <- LETTERS[1:26]
# b) Create the "numbers" vector containing consecutive integers from 1 to "n",
# where "n" is the number of elements from the "letter" vector (do not enter this value manually).
numbers <- 1:length(letter)
# c) Create the "letters_numbers" vector connecting the "letters" and "numbers" element by element by the sign "_".
letters_numbers <- paste(letter, numbers, sep = "_")
letters_numbers
# d) Create the attribute on the "letters_numbers" vector indicating the type of the vector.
attr(letters_numbers, "Vector type") <-  typeof(letters_numbers)
attributes(letters_numbers)
# e) Convert the "letters_numbers" vector to the "Matrix_letters_numbers" matrix of size "2x13" by inserting subsequent elements into rows.  
# 
# Task 2:
# a) Create the "list_2" list with 5 default values.
list_2 <- vector(mode = "list", length = 5)
list_2
# b) Create the "vector_2" vector by drawing 5 integers (without repeats) from a vector from 1 to 10.
#    The initial value of the random number generator should be set to 123.
set.seed( 123 )
vector_2 <- sample( x = 1:10, size = 5, replace = F )
vector_2
# c) Using the lapply function, insert in the next elements of the "list_2" list (list has 5 elements, see point a) 
#    vector repeating a specific number from the "vector_2" vector (you should get 3,8,4,7,6) 
#    so many times, what number is contained under the investigated element of the vector "vector_2", 
#    e.g. for the number 4 the vector is of length 4 and each element will have number 4.
list_2 <- lapply(vector_2, function(x){rep(x, x)})
list_2
# d) Convert "list_2" list into a vector of integers.
unlist(list_2)
# 
# Task 3:
# a) Create function that indicates the outlier observations of the given vector of real numbers (x <-rcauchy(10)) using the quartile rule: <Q1-1.5*(Q3-Q1), >Q3+1.5*(Q3-Q1).
x <- rcauchy(10)
Q1 <- quantile(x)[["25%"]]
Q3 <- quantile(x)[["75%"]]
func <- function(x){
  attr(x=x, "Outliers") <- x[x < (Q1 - 1.5*(Q3-Q1)) | x > (Q1 + 1.5*(Q3-Q1))]
  attr(x=x, "Not outliers") <- x[x >= (Q1 - 1.5*(Q3-Q1)) & x <= (Q1 + 1.5*(Q3-Q1))]
  attr(x=x, "Indices of outliers") <- which(x < (Q1 - 1.5*(Q3-Q1)) | x > (Q1 + 1.5*(Q3-Q1)))
  attr(x=x, "Indices of not outliers") <- which(x >= (Q1 - 1.5*(Q3-Q1)) & x <= (Q1 + 1.5*(Q3-Q1)))
  return(x)
}
res <- func(x)
attributes(res)

# b) The function should return an object with the given attributes containing information:
#   a. what values are outlier
#   b. what values are not outlier
#   c. outlier indexes
#   d. non-outlier indexes

x <- rcauchy(10)
outl <- function(x){
  q1<-quantile(x,0.25,names=FALSE)
  q3<-quantile(x,0.75,names=FALSE)
  quantile(x)
  lowerlimit <- q1-1.5*(q3-q1)
  upperlimit <- q3+1.5*(q3-q1)
  outliers <- ((x < lowerlimit) | (x > upperlimit))
  return(outliers)
}
y <- outl
x[y]
x[!y]
which(y)
which(!y)

# c) (use the functions quantile, which, attr).
# 
# Task 4: 
# a) Import the file Exercise_4.txt into "Table_4" object.
Import <- read.table(file = "C://Users//Student//Downloads//Exercise_4.txt", header = T, sep = "&")
Import
# b) Give the table the attribute "My_name" informing about your name. Display all table attributes.
attr(x=Import, "My_name") <- "Yoan Salambashev"
attributes(Import)
# c) Convert above table to "List_4" list.
List_4 <- as.list(Import)
List_4
# d) Create a function that converts any numerical input vector into a subtitle vector according to the following rule:
#    if the value is less than or equal to 1.5 - enter "less than 1.5", otherwise "more than 1.5".
func_4 <- function(num_vec){
  new_vec <- vector("list", length(num_vec))
  new_vec[which(num_vec <= 1.5)] <- "less than 1.5"
  new_vec
  new_vec[which(num_vec > 1.5)] <- "more than 1.5"
  return(unlist(new_vec))
}
# e) Apply the created function on the "List_4" list items from point c).
lapply(List_4, func_4)


4)

# Task 1:
# a) Create the "list_2" list with 5 default values.
list_2 <- vector("list", 5)
# b) Create the "vector_2" vector by drawing 5 integers (without repeats) from a vector from 1 to 10.
#    The initial value of the random number generator should be set to 123.
set.seed( 123 )
vector_2 <- sample( x = 1:10, size = 5, replace = F )
# c) Using the "repeat" loop, insert in the next elements of the "list_2" list (list has 5 elements, see point a) 
#    the vector repeating a specific number from the "vector_2" vector (you should get 3,8,4,7,6) 
#    so many times, what number is contained under the investigated element of the vector "vector_2", 
#    e.g. for the number 4 the vector is of length 4 and each element will have number 4.
i <- 1
repeat {
  list_2[[i]] <- rep(vector_2[i], vector_2[i])
  i <- i + 1
  if( i > length(vector_2)) break
}
list_2

# 
# Task 2:
# a) Create a vector containing numbers from 1 to 9.
numbers <- 1:9
# b) Create a list that matches the length of the vector in point a).
list_task_2 <- vector("list", length(numbers))
# c) With a for loop iterating within the values contained in the vector from point a), insert in the subsequent elements of the list a subset of the vector from point a), so that
#    the first element of the list contains the first element, the second element of the list contains the first and second element, ...,
#    the ninth element of the list contains all elements. A kind of pyramid will be created.
elems_so_far <- vector()
n <- length(numbers)
for (i in 1:n) {
  elems_so_far <- append(elems_so_far, numbers[i])
  list_task_2[[i]] <- elems_so_far
}
list_task_2

# 
# Task 3: 
# a) Simulate 30 integers between 10 and 20. The initial value of the random number generator should be set to 444.
set.seed( 444 )
random_numbers <- sample( x = 10:20, size = 30, replace = T )
# b) Pre-allocate a vector of integers with default values.
#    The length of this vector is determined as the length of the simulated vector from the point a).
n <- length(random_numbers)
ints <- vector("integer", n)
# c) Using the for loop, insert the elements of the random vector (point a) into the vector from the point b).
#    The loop should be made in two versions: 
#    - operating on the indexes of both vectors and 
#    - on the real values of one of them.
#    In the last step, each loop should display (without using the print() function) the entire vector (point b) and information about its type (line below).
# First approach (operating on the indexes of both vectors):
for (i in 1:n) {
  ints[i] <- random_numbers[i]
  if(i == n) cat(ints, '\n', "Type of vector: ", typeof(ints), '\n', sep = " ")
}
# Second approach (operating on the real values of one of them):
ints <- vector("integer", n)
i <- 1
for (num in random_numbers) {
  ints[i] <- num
  if(i == n) cat(ints, '\n', "Type of vector: ", typeof(ints), '\n', sep = " ")
  else i <- i + 1
}


5)

# In all below tasks create your own toy objects i.e. named vectors, non-empty vectors and lists etc.
# 
# Task 1: Write a R program to create a blank matrix.
blank <- matrix()

# Task 2: Write a R program to create a matrix taking a given vector of numbers as input. Display the matrix.
numbers <- 1:30
x <- matrix(numbers)
print(x)

# Task 3: Write a R program to create a matrix taking a given vector of numbers as input and define the column and row names. Display the matrix.
x <- matrix(numbers, nrow = 5, ncol = 6, dimnames = list(c("r1", "r2", "r3", "r4", "r5"), c("c1", "c2", "c3", "c4", "c5", "c6")))
print(x)

# Task 4: Write a R program to access the element at 3rd column and 2nd row, only the 3rd row and only the 4th column of a given matrix. 
x[2, 3]
x[3]
x[, 4, drop = F]

# Task 5: Write a R program to create two 2x3 matrix and add, subtract, multiply and divide the matrixes.
matrix_task5_1 <- matrix(1:6, 2, 3)
matrix_task5_2 <- matrix(3:8, 2, 3)
add_matrix <- matrix_task5_1 + matrix_task5_2
subtract_matrix <- matrix_task5_1 - matrix_task5_2
multiply_matrix <- matrix_task5_1 * matrix_task5_2
divide_matrix <- matrix_task5_1 / matrix_task5_2

# Task 6: Write a R program to create a matrix from a list of given vectors.
lst <- list(1:5, 2:6, 3:7)
do.call("cbind", lst)

# Task 7: Write a R program to extract the submatrix whose rows have column value > 7 from a given matrix.
matrix_task7 <- matrix(1:10, 5, 2)
task7 <- matrix_task7[matrix_task7 > 7]
task7
# Task 8: Write a R program to convert a given matrix to a list of column-vectors.
lst <- split(matrix_task7, col(matrix_task7))

# Task 9: Write a R program to find row and column index of maximum and minimum value in a given matrix.
x[3,3] <- 50
x[3,5] <- -1
rowidmax <- ceiling(which.max(x)/nrow(x))
colidmax <- ceiling(which.max(x)%%nrow(x))
rowidmin <- ceiling(which.min(x)/nrow(x))
colidmin <- ceiling(which.min(x)%%nrow(x))

# Task 10: Write a R program to rotate a given matrix 90 degree clockwise rotation.
matrix_task10 <- matrix(1:10, 5, 2)
matrix_rotated <- t(apply(matrix_task10, 2, rev))

# Task 11: Write a R program to concatenate two given matrices of same column but different rows.
matrix_task11_1 <- matrix(1:15, 5, 3)
matrix_task11_2 <- matrix(3:8, 2, 3)
matrix_result <- rbind(matrix_task11_1, matrix_task11_2)

# Task 12: Write a R program to convert a given matrix to a 1 dimensional array.
matrix_task12 <- matrix(1:15, 5, 3)
arr <- as.vector(matrix_task12)
arr

# Task 13: Write a R program to create an 3 dimensional array of 24 elements using the dim() function.
x <- 1:24
dim(x) <- c(2, 3, 4)
x

# Task 14: Write a R program to create an array of two 3x3 matrices each with 3 rows and 3 columns from two given two vectors. Print the second row of the second matrix of the array and the element in the 3rd row and 3rd column of the 1st matrix.
vec1 <- 1:9
vec2 <- 10:18
arr <- array(c(vec1, vec2), c(3, 3, 2))
print(arr[, , 2][2,])
print(arr[, , 1][3,3])

# Task 15: Write a R program to create an array using four given columns, three given rows, and two given tables and display the content of the array..
vec1 <- 1:12
vec2 <- 13:24
arr <- array(c(vec1, vec2), c(3, 4, 2))
print(arr)

# Task 16: Write a R program to create a two-dimensional 5x3 array of sequence of even integers greater than 50.
arr <- array(seq(from = 50, by = 2, length.out = 15), c(5, 3))

# Task 17: Write a R program to create an empty data frame.
df_1 <- data.frame()

# Task 18: Write a R program to create a data frame from four given vectors.
ints <- 1:5
height <- c(1.2, 1.4, 1.7, 1.6, 1.5)
weight <- c(65, 60, 70, 50, 50)
is_smoker <- c(T, T, F, T, F)
df_toy <- data.frame(key1 = 1:5, ints, height, weight, is_smoker)

# Task 19: Write a R program to get the structure of a given data frame.
str(df_toy)

# Task 20: Write a R program to get the statistical summary and nature of the data of a given data frame. 
aggregate(df_toy, list(is_smoker), mean)

# Task 21: Write a R program to extract 3rd and 5th rows with 1st and 3rd columns from a given data frame.
extr <- df_toy[c(3, 5), c(1, 3)]
extr

# Task 22: Write a R program to add a new column in a given data frame.
df_task22 <- cbind(df_toy, has_pet = c(T, F, F, T, F))

# Task 23: Write a R program to drop column(s) by name from a given data frame.
df_task23 <- subset(df_toy, select=-weight)

# Task 24: Write a R program to sort a given data frame by multiple column(s).
df_sorted <- df_toy[order(weight, height),]

# Task 25: Write a R program to create inner, outer, left, right join(merge) from given two data frames.
df_task25 <- data.frame(key2 = 1:5, model = c("Skoda", "BMW", "Mercedes", "VW", "Mazda"), 
                        has_insurance = c(F, T, T, T, F), weight = c(60, 40, 50, 70, 90))
df_inner <- merge(x = df_toy, y = df_task25, by.x = "weight", by.y = "weight")
df_outer <- merge(x = df_toy, y = df_task25, by.x = "weight", by.y = "weight", all = T)
df_left <- merge(x = df_toy, y = df_task25, by.x = "weight", by.y = "weight", all.x = T, all.y = F)
df_right <- merge(x = df_toy, y = df_task25, by.x = "weight", by.y = "weight", all.x = F, all.y = T)

# Task 26: Write a R program to replace NA values with 3 in a given data frame.
df_task26 <- subset(df_outer, select=-c(model, has_insurance, is_smoker))
df_task26[is.na(df_task26)] <- 3

# Task 27: Write a R program to compare two data frames to find the elements in first data frame that are not present in second data frame.
df_diff <- setdiff(df_toy, df_task23)

# Task 28: Write a R program to count the number of NA values in a data frame column.
count <- apply(df_outer, 2, function(x){sum(is.na(x))})


6)

install.packages("Rcpp")
install.packages("microbenchmark")
library("microbenchmark")
library("Rcpp")
# Task 1:
# a) Write your own function "cumsum" (returning a vector whose elements are cumulative sums).
cppFunction({'
NumericVector cumsumC( NumericVector x ){
  int n = x.size();
  if(n < 1) return 0;
  NumericVector result(n);
  result[0] = x[0];
  if(n == 1)  {
    return result;
  }
  for( int i = 1;  i < n; i++ ){
    result[i] = result[i - 1] + x[i];
  }
  return result;
}
'})

# b) Compare its operation with the built-in function "cumsum".
y <- 1:1000000
microbenchmark( cumsum(y), cumsumC(y))

#
# Task 2:
# a) Write a function that solves the linear equation "y = ax + b" for the given input parameters "a, x, b".
cppFunction({'
double equationSolverC( double a, double x, double b ){
  return a*x+b;
}
'})

equationSolverC(3, 4, 2)

#
# Task 3:
# a) Write your own function equivalent to the built-in "matrix" function. See the "matrix" source code.
cppFunction({'
void matrixC( RObject x, int nrow, int ncol, bool byrow = false){
  if(is<LogicalVector>(x)) {
    LogicalVector vec = as<LogicalVector>(x);
    int n = vec.size();
    if(n < 1 || nrow < 1 || ncol < 1) stop("Matrix size, nrow or ncol < 1");
    if(n != nrow*ncol) stop("Matrix size != nrow*ncol");
    if(byrow) {
      int temp = nrow;
      nrow = ncol;
      ncol = temp;
    }
    LogicalMatrix mat(nrow, ncol);
    int k = 0;
    for(int i = 0 ; i < nrow ; i++){
      for(int j = 0 ; j < ncol ; j++){
        
        mat(i, j) = vec[k];
        k++;
      }
    }
    Rcout << mat;
  } else if(is<IntegerVector>(x)) {
    IntegerVector vec = as<IntegerVector>(x);
    int n = vec.size();
    if(n < 1 || nrow < 1 || ncol < 1) stop("Matrix size, nrow or ncol < 1");
    if(n != nrow*ncol) stop("Matrix size != nrow*ncol");
    if(byrow) {
      int temp = nrow;
      nrow = ncol;
      ncol = temp;
    }
    IntegerMatrix mat(nrow, ncol);
    int k = 0;
    for(int i = 0 ; i < nrow ; i++){
      for(int j = 0 ; j < ncol ; j++){
        
        mat(i, j) = vec[k];
        k++;
      }
    }
    Rcout << mat;
  } else if(is<NumericVector>(x)) {
    NumericVector vec = as<NumericVector>(x);
    int n = vec.size();
    if(n < 1 || nrow < 1 || ncol < 1) stop("Matrix size, nrow or ncol < 1");
    if(n != nrow*ncol) stop("Matrix size != nrow*ncol");
    if(byrow) {
      int temp = nrow;
      nrow = ncol;
      ncol = temp;
    }
    NumericMatrix mat(nrow, ncol);
    int k = 0;
    for(int i = 0 ; i < nrow ; i++){
      for(int j = 0 ; j < ncol ; j++){
        
        mat(i, j) = vec[k];
        k++;
      }
    }
    Rcout << mat;
  } else if(is<ComplexVector>(x)) {
    ComplexVector vec = as<ComplexVector>(x);
    int n = vec.size();
    if(n < 1 || nrow < 1 || ncol < 1) stop("Matrix size, nrow or ncol < 1");
    if(n != nrow*ncol) stop("Matrix size != nrow*ncol");
    if(byrow) {
      int temp = nrow;
      nrow = ncol;
      ncol = temp;
    }
    ComplexMatrix mat(nrow, ncol);
    int k = 0;
    for(int i = 0 ; i < nrow ; i++){
      for(int j = 0 ; j < ncol ; j++){
        
        mat(i, j) = vec[k];
        k++;
      }
    }
    Rcout << mat;
  } else if(is<CharacterVector>(x)) {
    CharacterVector vec = as<CharacterVector>(x);
    int n = vec.size();
    if(n < 1 || nrow < 1 || ncol < 1) stop("Matrix size, nrow or ncol < 1");
    if(n != nrow*ncol) stop("Matrix size != nrow*ncol");
    if(byrow) {
      int temp = nrow;
      nrow = ncol;
      ncol = temp;
    }
    CharacterMatrix mat(nrow, ncol);
    int k = 0;
    for(int i = 0 ; i < nrow ; i++){
      for(int j = 0 ; j < ncol ; j++){
        
        mat(i, j) = vec[k];
        k++;
      }
    }
    Rcout << mat;
  } else {
    stop("Unsupported matrix type.");
  }
}
'})

matrixC(1:10, 2, 5, TRUE)
matrixC(c(F,T, T, F, T, F), 3, 2)
# 
# Tasks 4:
# a) Write "inverseC" functions, reversing the order of elements in a given vector,
#    e.g. reverseC (1:10), returns 10:1.
# b) The function should take a parameter: "vec" - the vector that is subject to analysis.

cppFunction({'
NumericVector inverseC( NumericVector vec ){
  int n = vec.size();
  if(n < 1) return 0;
  NumericVector result(n);
  if(n == 1)  {
    return result;
  }
  for( int i = 0;  i < n; i++ ){
    result[n - i - 1] =  vec[i];
  }
  return result;
}
'})

inverseC(1:10)

# 
# Tasks 5:
# a) Write "countC" function counting the number of occurrences of a given value in a given vector,
#    e.g. countC ( c(1,2,3,4,5,2,4,2,5,5,5,5,5), c(1,4,5) ), returns: 1 2 6.
# b) The function should take two parameters: "vec" - the vector to be analyzed,
#    and numbers - a vector of numbers that we want to count in the vector "vec".

cppFunction({'
NumericVector countC( NumericVector vec, NumericVector numbers ){
  int n = vec.size();
  int m = numbers.size();
  if(n < 1) return 0;
  NumericVector result(m);
  for( int i = 0 ; i < m ; i++ ) {
    for(int j = 0 ; j < n ; j++) {
      if(numbers[i] == vec[j]) {
        result[i]++;
      }
    }
  }
  return result;
}
'})

countC(c(1,2,3,4,5,2,4,2,5,5,5,5,5), c(1,4,5))

# 
# Tasks 6:
# a) Write "indexC" function that indexes any vector the same way the [] operator does in R,
#    eg: (11:20) [c (4,8,10)]
# b) The function should take two parameters: "vec" - the vector we want to index,
#    and "indx" - the vector of indices we want to get from the vector vec.
cppFunction({'
NumericVector indexC( NumericVector vec, NumericVector indx ){
  int n = vec.size();
  int m = indx.size();
  if(n < 1) return 0;
  NumericVector result(m);
  for( int i = 0 ; i < m ; i++ ) {
    result[i] = vec[indx[i] - 1];
  }
  return result;
}
'})

indexC(11:20, c(4, 8, 10))

#

7)

# Task 1:
# a) Create blank matrix of the size "1000x1001".
mat <- matrix(nrow = 1000, ncol = 1001)
#    Assign name "Y" to the first column. Assign names "x_1" to "x_1000" for the remaining columns.
colnames(mat) <- c("Y", paste("x", 1:1000, sep = "_"))
mat
# b) Insert random values from vector 1 to 100 into column "Y". set.seed = (555).
set.seed(555)
mat[,"Y"] <- sample(x = 1:100, size = 1000, replace = T)
# c) Insert into columns from "x_1" to "x_1000" values according to the following scheme
#    "x_i = Y + random value from normal distribution". set.seed = (555).
set.seed(555)
for (i in 2:1001) {
  mat[,i] <- mat[,1] + rnorm(1000)
}
# 
# Task 2:
# a) Create a function that takes the following parameters: "data", "Yname", "XnameList", "CoreNumber", "method".
# b) The function operating on the "data" should create a linear regression model for "Yname" with reference to the variables XnameList.
#    In the simplest form for data from "Task 1" these are the following models: ("Y ~ x1", "Y ~ x2", "Y ~ x3" etc.).
#    The form the model is defined by the "XnameList" parameter, taking an object of the list type.
#    The list has as many items as there are models to be built. Each item in the list is a vector of "x" variable names.
#    Example: "list(x1, c(x1, x5, x7))" builds two models 1) "Y ~ x1" and 2) "Y ~ x1 + x5 + x7".
# c) The function should build each combination of models in parallel.
# d) Depending on the argument passed to "method", the function should use either a parallel version of "lapply",
#    or a parallel version of the "for" loop.
# e) Each parallel loop should return information about variable/variable names (first text column)
#    and parameter estimates (second numeric column).
# f) The function should return the results as a list.
# g) The function name is "ModelParallel".
install.packages( "doSNOW" )
library( "doSNOW" )

install.packages( "doParallel" )
library( "doParallel" )

install.packages( "microbenchmark" )
library( "microbenchmark" )

ModelParallel <- function(data, Yname, Xnamelist, CoreNumber, method) {
  
  cluster <- makeCluster(CoreNumber)
  clusterExport(cluster, varlist = c("Yname", "Xnamelist", "matToDF"))
  registerDoSNOW(cluster)
  if(method == "lapply"){
    
    processXnamelist <- parLapply(cluster, Xnamelist, function(x){
      summary(lm(formula = paste(Yname, paste(x, collapse=" + "), sep = " ~ "), 
                 data = data))
    })
    res <- parLapply(cluster, processXnamelist, function(x){
      data.frame(varNames = rownames(x$coefficients), 
                 paramEstimates = x$coefficients[,1])
    })
    
  }else if(method == "for"){
    
    n <- length(Xnamelist)
    res <- vector(mode = "list", length = n)
    foreach ( i = 1:n ) %dopar% {
      curr <- summary(
        lm(formula = paste(Yname, paste(Xnamelist[[i]], collapse=" + "), 
                           sep = " ~ "), data = data))
      res[[i]] <- data.frame(varNames = rownames(curr$coefficients), 
                             paramEstimates = curr$coefficients[,1])
    }
    
  }else{
    
    stop("This method is unsupported. Use either lapply or for.")
  }
  return (do.call(rbind, res))
}

ModelSeq <- function(data, Yname, Xnamelist, CoreNumber, method) {
  
  if(method == "lapply"){
    
    processXnamelist <- lapply(Xnamelist, function(x){
      summary(lm(formula = paste(Yname, paste(x, collapse=" + "), sep = " ~ "), 
                 data = matToDF))
    })
    res <- lapply(processXnamelist, function(x){
      data.frame(varNames = rownames(x$coefficients), 
                 paramEstimates = x$coefficients[,1])
    })
    
  }else if(method == "for"){
    
    n <- length(Xnamelist)
    res <- vector(mode = "list", length = n)
    for ( i in 1:n ) {
      curr <- summary(
        lm(formula = paste(Yname, paste(Xnamelist[[i]], collapse=" + "), 
                           sep = " ~ "), data = matToDF))
      res[[i]] <- data.frame(varNames = rownames(curr$coefficients), 
                             paramEstimates = curr$coefficients[,1])
    }
    
  }else{
    
    stop("This method is unsupported. Use either lapply or for.")
  }
  return (do.call(rbind, res))
}

# input
Xnamelist <- list("x_1", c("x_1", "x_5", "x_7"))
Yname <- "Y"
types <- c("lapply", "for", "else")
matToDF <- as.data.frame(mat)
nCores <- detectCores()

microbenchmark( Seq = ModelSeq(matToDF, Yname, Xnamelist, nCores, 
                               types[1]), 
                Par = ModelParallel(matToDF, Yname, Xnamelist, nCores, 
                                    types[1]))

lapplyModelParallel <- ModelParallel(matToDF, Yname, Xnamelist, nCores, 
                                     types[1])
forModelParallel <- ModelParallel(matToDF, Yname, Xnamelist, nCores, 
                                  types[2])
elseModelParallel <- ModelParallel(matToDF, Yname, Xnamelist, nCores, 
                                   types[3])

8)

install.packages("bigmemory")
library("bigmemory")
install.packages("pryr")
library("pryr")
# Task 1:
# a) Create blank matrix of the size "1000x1001".
#    Assign name "Y" to the first column. Assign names "x_1" to "x_1000" for the remaining columns.
mat <- matrix(nrow = 1000, ncol = 1001)
colnames(mat) <- c("Y", paste("x", 1:1000, sep = "_"))
# b) Insert random values from vector 1 to 100 into column "Y". set.seed = (555).
set.seed(555)
mat[, "Y"] <- sample(x = 1:100, size = 1000, replace = T)
# c) Insert into columns from "x_1" to "x_1000" values according to the following scheme
#    "x_i = Y + random value from normal distribution". set.seed = (555).
set.seed(555)
for (i in 2:1001) {
  mat[, i] <- mat[, 1] + rnorm(1000)
}
# 
# Task 2:
# a) Let's simulate the working environment: Assume that your computer has only 50MB of RAM.
# b) Create a function that takes the following parameters: "data", "filter".
# c) The function should evaluate the size of the "data" object in the first step.
#    If the "data" is larger than the available RAM, the object should be processed appropriately.
# d) The function should then filter the rows in the "data" object through the "filter" parameter,
#    accepting a condition in the form of the text: "Variable_name operator value (&, |) ...".
#    Example: "x5 >= 0.5" or "x8 %in% c(0.3,0.6)" or "x2 >= 0.5 & x3 < 0.1".
#    Hint: since "filter" is text, it needs to be converted into an expression.
# e) The function should return the filtered "data" object and work FAST.
# f) The name of the function is "Filter".
#    *HINT*: parse, deparse, substitute, text
object_size(mat) < 50000000
Filter <- function(data, filter) {
  
  list_subs <- list()
  for(i in 1:1000) {
    curr_list <- list(data[, colnames(data)[i+1]])
    list_subs <- append(list_subs, curr_list)
  }
  names(list_subs) <- colnames(mat)[2:1001]
  
  # parse should be used to create expr out of the string "filter"
  # gsub to change x to x_
  processed <- eval(substitute(filter, list_subs))
  res <- data[processed]
  
  return (res)
}
# 
# Task 3:
# a) Test the developed functions on the table from "Task 1".
task_3 <- Filter(mat, x_2 >= 0.5 | x_3 < 0.1)
