## Put comments here that give an overall description of what your
## functions do

## These functions are for Coursera Data Science: R Programming assignment 
## week 3


makeCacheMatrix <- function(x = matrix()) {

}
## Write a short comment describing this function


cacheSolve <- function(x, ...) {
        
  +makeCacheMatrix <- function(x = matrix()) { 
    +    inv <- NULL                             
    +    set <- function(y) {                    
      +        x <<- y                            
      +        inv <<- NULL                       
      +    }
    +    get <- function() x                  
    +    
      +    setinverse <- function(inverse) inv <<- inverse
      +    getinverse <- function() inv                     
      +    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse) 
      +                                                                                 
  
  }
  
  inv <- x$getinverse()
  +    if(!is.null(inv)) {
    +        message("getting cached data")
    +        return(inv)
    +    }
  +    data <- x$get()
  +    inv <- solve(data, ...)
  +    x$setinverse(inv)
  +    inv
}