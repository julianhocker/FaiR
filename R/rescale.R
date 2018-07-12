#' Rescaling vectors
#'
#' @param v numeric vectors
#'
#' @return numeric vecotr, rescaled from input vector to the range of 0-1
#' @export
#'
#' @examples 
#' rescale(c(1,2,3)) --> 0.0 0.5 1.0
#' rescale(c(1,2,3,4,5)) --> 0.00 0.25 0.50 0.75 1.00
rescale <- function(v) {
  L <- min(v)
  H <- max(v)
  result <- (v - L) / (H - L)
return(result)  
}