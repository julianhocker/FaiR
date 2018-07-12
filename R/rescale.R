#' Rescaling vectors
#'
#' @param v numeric vectors
#' @param lower numeric value of lower rescaling value default: 0
#' @param upper numeric value of upper rescaling value default: 1
#'
#' @return numeric vecotr, rescaled from input vector to the range of 0-1
#' @export
#'
#' @examples
#' rescale(c(1,2,3)) --> 0.0 0.5 1.0
#' rescale(c(1,2,3,4,5)) --> 0.00 0.25 0.50 0.75 1.00
#' rescale(c(1,2,3), 1,2) --> 1.0 1.5 2.0
rescale <- function(v, upper =1, lower= 0) {
  L <- min(v)
  H <- max(v)
  result <- (v - L) / (H - L) * (upper - lower) + lower
return(result)
}
