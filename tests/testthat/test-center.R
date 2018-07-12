context("test-center.R")

test_that("Check-center",{
    expect_equal(object = center(c(1,2,3)), expected = c( -1, 0, 1))
    expect_equal(object = center(c(1,2,3),1), expected = c( 0, 1, 2))
})
