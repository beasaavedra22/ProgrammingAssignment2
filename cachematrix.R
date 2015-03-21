## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  ## set the value of the matrix
  set <- function(y) {
    m <<- y
    i <<- NULL
  }
  ##get the value of the matrix
  get <- function() x
  ## set the inverse
  setinv <- function(inv) i <<- inv
  ##get the inverse
  getinv <- function() i
  ##store the methods to be accessed with $
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinv()         ##retrieves cached inverse
  if(!is.null(i)){        ## if the inverse was previously calculated
    message("getting cached data")  
    return(i)        ##the retrieved old cached inverse is returned
  }
  ##if there wasnt a cached value, the inverse should be calculated
  data <- x$get()        ##
  i <- solve(data, ...)  ## the inverse is calculated
  x$setinv(i)            ## the inverse is cached
  i
}
