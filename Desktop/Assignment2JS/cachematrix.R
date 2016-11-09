
## First function sets and gets matrix, then sets and finds inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
              i<- NULL
              set<- function(y){
                x<<- y
                i<- NULL
}
            get<- function() x
         

            setInv<- function(inv){
              i<<- inv
              return(i)
            }
            
            getInv<- function() i
            list(set = set, get = get,
                 setInv = setInv,
                 getInv = getInv)
            }
## Function returns inverse of matrix, but checks to see if inverse has been returned first, always assumes matrix is inversible.

cacheSolve <- function(x, ...) {
  i <- x$getInv()
  if( !is.null(i) ) {
    message("Getting cached data!")
    return(i)
  }
  datmat <- x$get()
 i <- solve(datmat, ...)
  x$set(i)
  
  i
}
