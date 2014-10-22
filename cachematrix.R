# These two functions cache the inverse of a matrix to avoid repeated its repeated 
# calculation.


# The function makeCacheMatrix takes a matrix argument, calculates its inverse 
# and caches both. 

makeCacheMatrix<-function(x=matrix()){
    cachedmatrix<<-x
    cachedinverse<<-solve(x)
}

# The function cacheSolve takes a matrix argument, checks if it was already 
# cached and returns the previously calculated, cached inverse. If it was not 
# cached before or if it is a different matrix, then it calculates the inverse 
# and returns it.

cacheSolve<-function(y=matrix()){
    if(identical(y,cachedmatrix)==TRUE){
        message("getting cached inverse")
        return(cachedinverse)
    }
    else{
        inverse<-solve(y)
        return(inverse)
    }
    
}