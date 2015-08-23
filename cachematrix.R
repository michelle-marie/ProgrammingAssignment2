## the makeCacheMatrix function is used to create a matrix
## the cacheSolve function is used to return the inverse of that matrix
## the makeCacheMatrix function sets the value of the matrix, gets the value of the matrix, sets the value of the inverse, and gets the value of the inverse
makeCacheMatrix <- function(x = matrix) {
## main function
        m <- NULL 
        set <- function(y) { ## set is a function that changes the matrix stored in the main function
                x <<- y 
                m <<- NULL 
        }
        get <- function() x 
        setmatrix <- function(solve) 
	m <<- solve
        getmatrix <- function() m
        list(set = set, get = get,
             setmatrix = setmatrix,
             getmatrix = getmatrix)
}
## Returns a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) 
{
        m <- x$getmatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setmatrix(m)
        m
}
