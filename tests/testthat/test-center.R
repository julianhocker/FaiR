context("test-center.R")

test_that("Check-center",{
    expect_equal(object = center(c(1,2,3),0), expected = c( -1, 0, 1))
})
