## Put comments here that give an overall description of what your
## functions do

## The functions below are used to create an object that can cache the inverse of a matrix then compute the inverse or retrieve the inverse from the cache if it has been computed before. Therefore, they can  help aviod repeated time-consuming calculations and improve efficiency


## Write a short comment describing this function

## The first function，makeCacheMatrix creates a special martix which is a list containing a fucntion to 
# set the value of the matrix
# get the value of the matrix
# set the value of the inverse of the matrix
# get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
	i<- NULL
	set <- function(y) {
		x <<- y
		i <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) i<<- inverse 
	getinverse <- function() i
	list(set = set, get=get,
	     setinverse = setinverse,
	     getinverse = getinverse)
}


## Write a short comment describing this function

## The following function solves the inverse of the special matrix created above in two steps. First of all， it checks whether the inverse has already been calculated. If not， then it calculates the inverse of the matrix and stores the value in the cache via the setinverse function；otherwise，it directly get the inverse from the cache and aviod the repeated calculation. 
 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)){
        	message("getting cached data")
        	return(i)
        }
        data <- x$get()
        i <- inverse(data,...)
        x$setinverse(i)
        i
}





