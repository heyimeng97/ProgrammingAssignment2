
## makeCacheMatrix 

# This function represents a complex object of a matrix where the inverse could be stored

# it contains the followings function:

# set the matrix

# get the matrix

# set the value of the inverse

# get the value of the inverse

makeCacheMatrix <- function(x = matrix()){                               
        # beginning
        inv <<- NULL                                                           
        
        #set the value of the matrix
        set <- function(y){
                x <<- y
                inv <<- NULL
                }
        
        get <- function(){
                x   #return the origin value of x
                }
        
        setinverse <- function(solve){
                inv <<- solve
                }
        
         getinverse <- function(){
                 inv  # retrun the inverse value
                 }
        
        list(set = set, get = get,

         setinverse = setinverse,

         getinverse = getinverse)
}




cacheSolve <- function(x) {                                            ## This funcion can either compute the value of inverse or load it
        if(!is.null(inv)){                                             ## from the cache 
                print('load the value from cache')
                return(inv)}
        else {
                print('computing the inverse')
                return(solve(x))}
}
