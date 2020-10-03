print("shivendra")
my_name <- "shivendra is a ego person "
print(my_name)

# my first Program in R programming Language 
my_string <- " hello world ! "
print (my_string)


if(FALSE) {
  "This is a demo for multi-line comments and it should be put inside either a 
      single OR double quote"
}

myString <- "Hello, World!"
print ( myString)

"like C and java in R, the variables are not declared as some data type. The variables are assigned with R-Objects and the data type of the R-object becomes the data type of the variable. There are many types of R-objects. The frequently used ones are ???

Vectors
Lists
Matrices
Arrays
Factors
Data Frames"

# DataTypes # logical (T/F ) 

v <- TRUE 
print(class(v)) # we will get logical as output 

# DataTypes # Numerical (12.3, 5, 999)

v <- 23.5
print(class(v)) # we will get Numeric as output 

# DataTypes # integer (2L,3L,0L)
v <- 2L 
print(class(v)) # This will show integer as output

# DataTypes # Complex (4+5i) 
v<- 4+5i
print(class(v)) # this will show complex as output

# Dtatype #  Character  ('a' , '"good", "TRUE", '23.4')
v<- "TRUE"
print(class(v))

# Dtatype # Raw ("Hello" is stored as 48 65 6c 6c 6f)
v <- charToRaw("Hello")
print(class(v))

"In R programming, the very basic data types are the R-objects called vectors 
which hold elements of different classes as shown above. Please note in R the 
number of classes is not confined to only the above six types. For example, we
can use many atomic vectors and create an array whose class will become array.

Vectors
When you want to create vector with more than one element, you should use c() function
which means to combine the elements into a vector."

# Create a vector.
apple <- c('red','green',"yellow")
print(apple)

# Get the class of the vector.
print(class(apple))


"Lists
A list is an R-object which can contain many different types of elements inside it
like vectors, functions and even another list inside it."

# Create a list.
list1 <- list(c(2,5,3),21.3,sin)

# Print the list.
print(list1)

"Matrices
A matrix is a two-dimensional rectangular data set. It can be created using a 
vector input to the matrix function.
"

# Create a matrix.
M = matrix( c('a','a','b','c','b','a'), nrow = 2, ncol = 3, byrow = TRUE)
print(M)

" Array 
      While matrices are confined to two dimensions, arrays can be of any number of 
dimensions. The array function takes a dim attribute which creates the required 
number of dimension. In the below example we create an array with two elements 
which are 3x3 matrices each."
# Create an array.
a <- array(c('green','yellow'),dim = c(3,3,2))
print(a)


