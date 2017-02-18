## The purpose of those two fonctions combine is to determine a matrix inverse 
## and store those two matrices in the environment of a fonction
## in order to gain time skiping nex determination of the inverse


## This function define our two objects x the matrix and inv her inverse
## and define the four functions needed to assign and recall 


makeCacheMatrix <- function ( x = matrix())  {
        
        mat_inv <- NULL
        
        set <- function(y) {
                
                x <<- y
                mat_inv <<- NULL
        
        }
        
        get <- funtion () x
        
        setinv <- function(solve)  mat_inv <<- solve
        
        getinv <- function() mat_inv
        
        list (set = set , get = get , setinv = setinv,
              getinv = getinv )
}

}


## This function use the objects and functions define in the previous function environment
## to solve the matrix if necesseray or getting the intel from Make cahematrix environment

cacheSolve <- function (x , ...)  {
        
        inv <- x$getinv ()
        
        if (!is.null(inv)) {
                
                message ("getting cached data")
                
                return (inv)
        }
        
        data <- x$get ()
        
        inv <- solve(data,...)
        
        x$setinv(inv)
        
        inv
}
        ## Return a matrix that is the inverse of 'x'
}

