# Student: Nicholas Stewart
# Coursera Course: R Programming
# Date: October 29, 2018

## Two R functions: (1) makeCacheMatrix and (2) cacheSolve
## which form a list and calculate a matrix inverse rspectively...

## Write a short comment describing this function
# Makes a list or R objects
makeCacheMatrix <- function(x = matrix()) {

  m<-NULL
  set<-function(y) {
    x<<-y
    m<<-NULL
    
  }
  
  get <- function() x
  setinv <- function(solve) m <<- solve
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
  

}


## Write a short comment describing this function
# Finds the inverse of a matrix first time and gets it from the cache otherwise
cacheSolve <- function(x, ...) {

  m<-x$getinv()
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
    
  }
  data <- x$get()
  m<-solve(data,...)
  x$setinv(m)
  m

        ## Return a matrix that is the inverse of 'x'
}


