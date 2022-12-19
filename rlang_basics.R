# Install a packagge
install.packages("dplyr", dependencies = TRUE)

# R can do basic arithmetic
1+2
6-7
5/2
2^3

# Invoking Modulo Operator
x <- 159
hours <- x %/% 60
remainder <- x  %% 60
print(paste0("There are ", hours, " hours and ", remainder, " minutes."))

# Logical Operators
1 > 2 
1>2 & 1>0.5
1>2 | 1>0.5
1 != 2

## Value matching
4 %in% 1:10
4 %in% 5:10

### Define a "not in" function
`%ni%` = Negate(`%in%`)
5 %ni% 7:12

# Evaluations
0.1 + 0.2 == 0.3 ## What? This gives me fall
all.equal(0.1+0.2,0.3) ##This is the right way

# Variable assignment 
a <- 5 + 10 
a
b <- a
b
b <- a+5
b
a

# Help function
help(plot)
?plot
example(plot)
vignette("dplyr")
vignette(all = FALSE)
library(dplyr)

demo(package = .packages(all.available = FALSE))

# Objects in R

## Data frames and matrices
d <- data.frame(x = 1:3, y=4:6)
d
m <- as.matrix(d)
class(d)  ## Check's class of d
typeof(d) ## type of d
str(d)    ## structure of d
d
View(d)
d

# Regressions
lm(y ~ x, data=d) # Regress y on x

d2 <- data.frame(x = rnorm(10), y=runif(10))
model <- lm(y ~ x, data = d2)
summary(model)

# Explicitly call a package's function
stats::filter(1:10, rep(1,2))
stats::filter(1:10, rep(1,3))
dplyr::starwars 
scales::comma(c(1000,10))
