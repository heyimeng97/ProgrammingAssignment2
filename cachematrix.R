        # NOTE:  singular matrices' inverse could not be computed, and the default could be directly used
#        please run the makeCacheMatrix FIRST, then run cachesolve 

makeCacheMatrix <- function(x = matrix(c(8,3,4,1,5,9,6,7,2),3), Inv = TRUE){  # if you don't want to compute invserse in this 
        inv <<- NULL                                                          # function, please set Inv = 0. 
        x <<- x  #save matrix x into cache
                if (Inv == TRUE){
                        inv <<- solve(x)  # save inv(x) into cache 
                        }
}





cacheSolve <- function(x) {                                            ## This funcion can either compute the value of inverse or load it
        if(!is.null(inv)){                                             ## from the cache 
                print('load the value from cache')
                return(inv)}
        else {
                print('computing the inverse')
                return(solve(x))}
}
