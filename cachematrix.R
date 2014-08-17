## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
      i<-NULL
      set<-function(y){
        if (nrow(y) != ncol(y)) {
          stop("Matrix is not square")
        }
        x<<-y
        i<<-NULL
      }
        get<-function()x
      setsolve<-function(solve) i<<-solve
      cachesolve<-function()i
      list(set = set, get = get, setsolve = setsolve, cachesolve = cachesolve)
      }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  i<-x$cachesolve()
  if(!is.null(i)){
    message("getting inversed matrix")
    returm(i)
  }
  matrix<-x$get()
  i<-solve(matrix, ...)
  x$setsolve(i)
  i
        ## Return a matrix that is the inverse of 'x'
}
