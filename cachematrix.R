## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

Creates a special matrix object that can cache its inverse for the input.

makeCacheMatrix <- function(x = matrix()) {
nverse_x <- NULL
set <- function(y) {
x <<- y
inverse_x <<- NULL
}
get <- function() x
setinverse <- function(inverse) inverse_x <<- inverse
getinverse <- function() inverse_x
list(set = set,
get = get,
setinverse = setinverse ,
getinverse = getinverse)

}


## Write a short comment describing this function

Computes the inverse of the special matrix created with the function above

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
