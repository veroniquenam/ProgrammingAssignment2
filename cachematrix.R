## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## Initialisation,
  # "i" will be the inverse
  i <- NULL
  
  ## set the matrix
  set = function( matrix ) {
    m=matrix
    i=NULL #reinitisaling the inverse too
  }
  
  ## get the matrix
  get = function() {
    m
  }
  
  ## set the inverse 
  setInverse = function(inverse) {
    i <<- inverse
    # "i" will be equal to the new inverse
  }
  
  ## get the inverse
  getInverse <- function() {
    i
  }
  
## Return all the set and get methods
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'  
  i <- x$getInverse()
  #if there is an inverse already set , return it
  if(!is.null(i)) {
    return(i)
  }
  #else get the matrix
  m <- x$get()
  #then solve it using whatever method that exists
  i <- solve(data, ...)
  #then set theresult as the inverse of x and return that inverse
  x$setInverse(i)
  i
}