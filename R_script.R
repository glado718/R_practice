
#generating the exercise data

cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1, 0, 1))
write.csv(x = cats, file = "Data/feline-data.csv", row.names = FALSE)

#loading and querying the feline-data.csv data

write.csv(x = cats, file = "Data/feline-data.csv", row.names = FALSE)
cats

a = as.numeric(cats$coat)
b = as.numeric(cats$weight)
a+b
a
b
typeof(cats$weight)
class(cats$weight)
typeof(1L)

# challenge 1: Start by making a vector with the numbers 1 through 26. Multiply the vector by 2, and give the resulting vector names A through Z (hint: there is a built in vector called LETTERS)
x <- 1:26
x <- x * 2
names(x) <- (LETTERS)
x/2
tail(x,n = 3)

# challenge 2
cats
str(cats)
str(cats$coat)

#Lists
list_example <- list(1, "a", TRUE, 1+4i)
list_example

another_list <- list(title = "Numbers", numbers = 1:10, data = TRUE )
another_list
#lists challenge
typeof(cats)


cats[1]
typeof(cats[1])

cats[[1]]
typeof(cats[[1]])

cats$coat
typeof(cats$coat)

cats["coat"]
typeof(cats["coat"])

cats[1, 1]
typeof(cats[1, 1])

cats[, 1]
typeof(cats[, 1])

cats[1, ]
typeof(cats[1, ])

# matrices
matrix_example <- matrix(0, ncol=6, nrow=3)
matrix_example
#matrices challenge 1
length(matrix_example)
#matrices challenge 2
x <- matrix(1:50, ncol=5, nrow=10)
x <- matrix(1:50, ncol=5, nrow=10, byrow = TRUE) # to fill by row
#matrices challenge 3
dataTypes <- c('double', 'complex', 'integer', 'character', 'logical')
dataStructures <- c('data.frame', 'vector', 'factor', 'list', 'matrix')
answer <- list(dataTypes, dataStructures)
answer
#matrices challenge 4
mt = matrix(c(4, 1, 9, 5, 10, 7), ncol = 2, byrow = TRUE)
mt

# exploring data frame

age <- c(2, 3, 5)
age
cats

cats = cbind(cats,age)
cats

newRow <- list(FALSE, 3.3, TRUE, 9)
cats <- rbind(cats, newRow)

typeof(cats$coat)

str(cats)
cats
human_age = cats$age*7
human_age
str(human_age)
as.factor(human_age)
as.numeric(human_age)

cats
cats = cats[-5,]
cats


df <- data.frame(id = c("a", "b", "c"),
                 x = 1:3,
                 y = c(TRUE, TRUE, FALSE),
                 stringsAsFactors = FALSE)
df

inf = data.frame(first_name = c("gladys"),
                 last_name = c("rotich"),
                 lucky_number = c(11),
                 stringsAsFactors = FALSE)
inf

newprsn = list("freddrick", "sanger", 75)
inf = rbind(inf,newprsn)

inf


inf = cbind(inf,cofeetime = c(TRUE,TRUE))
inf


# Example
gapminder <- read.csv("~/Residential _training/data/gapminder_data.csv", stringsAsFactors = TRUE)

head(gapminder)
tail(gapminder)
tail(gapminder, n = 15)
