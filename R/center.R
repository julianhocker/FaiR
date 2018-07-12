##centeR ;)


# (dat <- read.csv(file = "inflammation.csv", header = FALSE)) ##round brackets make you see the output directly
#
# head(dat)
#
#
# avg_patient_inflammation <- rowMeans(dat)
# avg_day_inflammation <- colMeans(dat)
# plot(avg_day_inflammation)

#' Centering Datasets
#'
#' @param data the numeric vector to be centered
#' @param desired numeric mid-point value around which the data will be centered. Default = 0
#'
#' @return this function returns a new vector containing the original _data_ centered around the _desired_ values
#'
#' @examples
#' center(c(1,2,3),0) -> -1 0 1
center <- function(data, desired = 0) {
  new_dat <- (data - mean(data)) + desired
  return(new_dat)
}

# z <- c(1,2,3)
#
# center(z,0) #calculate the center for our dataset z
# centered <- center(dat[,4],desired = 0) #show 4th coloum
# ##check if our function is right:
# sd(dat[,4])
# sd(centered)
#
# identical(x = sd(dat[,4]), y = sd(centered))
