## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##makeCacheMatrix generates a list with 3 functions to get the matix value,set and display inverse value

makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

## CacheSolve, first fetches value of i(Matrix inverse) and checks if a value os store ot not.
##If a value is loaded, function retunrs the  pre-loaded matix inverse else calculates in the inverse, 
## set it i and diplays the inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if (!is.null(i)) {
          message("getting cached data")
          return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i        
}
