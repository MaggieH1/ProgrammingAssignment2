## Put comments here that give an overall description of what your
## functions do

## This function stores the matrix and its inverse's values in a list. 

makeCacheMatrix <- function(x = matrix()) {
  invert <- NULL
  set <- function(s)
  {
    s <<- x
    invert <<- NULL
  }
  get <- function()
    {
      x
    }
  setInvert <- function(inv1) #idk
 {
    invert <<-  inv1
  }

  getInvert <- function()
  {invert} 
  
  list(set = set, get = get,
       setInvert = setInvert,
       getInvert = getInvert)
  
}



## This function returns an inverse matrix if it is already solved
# or solves the inverse of the matrix if the inverse is not already solved

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invert <- x$getInvert()
  
  if(!is.null(invert)) 
    {
    return(invert)
  }
  
  data <- x$get()
  
  invert <- solve(data, ...)
  
  x$setInvert(invert)
  
  invert

}
