## Put comments here that give an overall description of what your
## functions do

## Below function gets and sets the value and inverse value of matrix

makeCacheMatrix <- function(x = matrix()) {
    inv<- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inv<<- inverse
    getinverse <- function() inv
    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## Function to find inverse of a matrix assuming matrix is invertible

cacheSolve <- function(x, ...) {
    inverse <- x$getinverse()
    if(!is.null(inv)) {
        message("getting cached data.")
        return(inv)
    }
    data <- x$get()
    inv <- solve(data)
    x$setinverse(inv)
    inv
}
