## Put comments here that give an overall description of what your
## functions do

<<<<<<< HEAD
## makeCacheMatrix creates a list containing a function to
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of inverse of the matrix
## 4. get the value of inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}



## Used to solve the amtrix for the inverse and caches the data if it has not been calculated 
##before. if has been calculated before it will skip the calculation and return the result from cache. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}

##sample run:
##> x = rbind (c(1, 5, -4, -1/4), c(-1/2, 1, 3, 2), c(1/3, -2/3, 4, 1), c(-1/2, 1/5, 1, 2))
##> x
##           [,1]       [,2]       [,3]       [,4]
##[1,]  1.0000000  5.0000000       -4         -0.25
##[2,] -0.5000000  1.0000000       3          2.00
##[3,]  0.3333333 -0.6666667       4          1.00
##[4,] -0.5000000  0.2000000       1          2.00
##
##> m = makeCacheMatrix(x)
##> cacheSolve(m)
##            [,1]        [,2]       [,3]       [,4]
##[1,]  0.36931818 -1.2457386  1.12073864  0.7315341
##[2,]  0.09943182  0.4723011 -0.15980114 -0.3799716
##[3,] -0.03977273  0.3110795  0.06392045 -0.3480114
##[4,]  0.10227273 -0.5142045  0.26420455  0.8948864
##
##> cacheSolve(m)
##getting cached data
##            [,1]       [,2]        [,3]       [,4]
##[1,]  0.36931818 -1.2457386  1.12073864  0.7315341
##[2,]  0.09943182  0.4723011 -0.15980114 -0.3799716
##[3,] -0.03977273  0.3110795  0.06392045 -0.3480114
##[4,]  0.10227273 -0.5142045  0.26420455  0.8948864
=======
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
>>>>>>> 7f657dd22ac20d22698c53b23f0057e1a12c09b7
