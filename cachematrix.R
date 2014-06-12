<<<<<<< HEAD
## Calculates inverse of a matrix using R solve function and caching matrix 
## and its inverse to improve computational time.
##
## Test function is provided if you want to use it
=======
## Calculates inverse of a matrix using R solve function and caching matrix and its inverse 
## to improve computational time.
##
## Test functions are provided if you want to use it
>>>>>>> origin/master


## makeCacheMatrix
##   Inits environment variables (caching when needed) and defines associated functions 

makeCacheMatrix <- function(x = matrix()) {
<<<<<<< HEAD
    # Inits inverse matrix
    my_inverse <- NULL
    
    
    # Inits my_matrix if a matrix is indicated, otherwise set it as null
    if (is.null(x)) {
        my_matrix <- NULL
    }
    else
        my_matrix <- x
    
    
    # SetMatrix function: inits matrix using argument and inits its inverse as null
    setMatrix<-function(y){
        my_matrix <<- y
        my_inverse <<- NULL
    }
    
    
    # GetMatrix function: shows original matrix
    getMatrix<-function() {
        my_matrix
    }
    
    
    # SetInverse function: set inverse matrix using argument
    setInverse<-function(x) {
        my_inverse <<- x
    }
    
    # GetInverse shows inverse matrix
    getInverse <- function() {
        my_inverse
    }
    
    
    # Define available functions 
    list( setMatrix=setMatrix
          , getMatrix=getMatrix
          , setInverse=setInverse
          , getInverse=getInverse
    )
=======
  # Inits inverse matrix
  my_inverse <- NULL
  
  
  # Inits matrix if it was indicated, otherwise set it as null
  if (is.null(x)) {
    my_matrix <- NULL
  }
  else
    my_matrix <- x
  
  
  # setMatrix function: set matrix (outside environment) using argument and inits its inverse as null
  setMatrix<-function(y){
    my_matrix <<- y
    my_inverse <<- NULL
  }
  
  
  # getMatrix function: shows original matrix
  getMatrix<-function() {
    my_matrix
  }
  
  
  # setInverse function: set inverse matrix (outside environment) using argument
  setInverse<-function(x) {
    my_inverse <<- x
  }
  
  
  # getInverse shows inverse matrix
  getInverse <- function() {
    my_inverse
  }
  
  
  # Define available functions 
  list( setMatrix=setMatrix
        , getMatrix=getMatrix
        , setInverse=setInverse
        , getInverse=getInverse
      )
>>>>>>> origin/master
}


## cacheSolve: 
<<<<<<< HEAD
##   Calculates inverse of matrix only if was not previously calculated (cached)

cacheSolve <- function(my_matrix = matrix()) {
    my_inverse <- my_matrix$getInverse()
    
    if(!is.null(my_inverse)){
        message("Getting cached inverse")
        return(my_inverse)
    }
    
    my_inverse <- solve(my_matrix$getMatrix())
    my_matrix$setInverse(my_inverse)
    my_inverse
=======
##   Calculates inverse of matrix only if it was not previously calculated (cached)

cacheSolve <- function(my_matrix = matrix()) {
  my_inverse <- my_matrix$getInverse()
  
  if(!is.null(my_inverse)){
    message("Getting cached inverse")
    return(my_inverse)
  }
  
  my_inverse <- solve(my_matrix$getMatrix())
  my_matrix$setInverse(my_inverse)
  my_inverse
>>>>>>> origin/master
}


## testInverse01
<<<<<<< HEAD
##   Function to test main functions setting original matrix at the begining. 
##   Sample taken from http://www.purplemath.com/modules/mtrxinvr2.htm
testInverse01 <- function() {
    
    my_matrixTest <- makeCacheMatrix( matrix(c(1,2,3, 0,1,4, 5,6,0), nrow=3, ncol=3, byrow = TRUE))
    
    cacheSolve(my_matrixTest)
    
}

## testInverse02
##   Function to test main functions setting original matrix later. 
##   Sample taken from http://www.purplemath.com/modules/mtrxinvr.htm
testInverse02 <- function() {
    
    my_matrixTest <- makeCacheMatrix()
    my_matrixTest$setMatrix(matrix(c(1,3,3, 1,4,3, 1,3,4), ncol=3, nrow=3, byrow = TRUE))
    
    cacheSolve(my_matrixTest)
    
=======
##   Function to test main functions setting matrix at the begining. 
##   Sample taken from http://www.mathcentre.ac.uk/resources/uploaded/sigma-matrices11-2009-1.pdf
testInverse01 <- function() {
  
  my_matrixTest <- makeCacheMatrix( matrix(c(7,2,1, 0,3,-1, -3,4,-2), nrow=3, ncol=3, byrow = TRUE))
  cacheSolve(my_matrixTest)
  
}

## testInverse02
##   Function to test main functions setting matrix later. 
##   Sample taken from http://www.purplemath.com/modules/mtrxinvr.htm
testInverse02 <- function() {
  
  my_matrixTest <- makeCacheMatrix()
  my_matrixTest$setMatrix(matrix(c(1,3,3, 1,4,3, 1,3,4), ncol=3, nrow=3, byrow = TRUE))
  
  cacheSolve(my_matrixTest)
  
>>>>>>> origin/master
}
