## Put comments here that give an overall description of what your
## functions do

## This function sets and gets both the original matrix and the inverted matrix
## The function below is adapted from the Coursera example
makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)


}


## This function first checks to see if the inverted matrix is cached in the function above
## It then inverts the matrix using the solve() function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

       s <- x$getsolve()
        if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setsolve(s)
        s

}



