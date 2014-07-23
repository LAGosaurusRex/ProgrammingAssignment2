## Put comments here that give an overall description of what your
## functions do

## Creates a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    # Variable that's is set to the Inverse Property.
    inverseMatrix <- NULL
    
    ## Set Method
    setMatrix <- function(y){
        x <<- y
        inverseMatrix <- NULL

    }
    ## Get Method
    getMatrix <-function() x
    
    ## Get The Inverse
    getInverse <- function(){
        if(is.null(inverseMatrix)){
            inverseMatrix <<- solve(x)
        }else{
            message("Getting cached results!")
        }
        inverseMatrix
        ## Inverse Property
    }
    list(setMatrix = setMatrix,getMatrix = getMatrix,getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    
    
    inverseMatrix <- x$getInverse()
    inverseMatrix
}
## thematrix <- replicate(5,rnorm(5))
## cacheSolve(makeCacheMatrix(thematrix))
## uncomment the 2 prior lines for a test