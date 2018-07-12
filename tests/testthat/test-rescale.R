context("test-rescale.R")

test_that("Check-rescale",{
    expect_equal(object = rescale(c(1,2,3)), expected = c( 0.0, 0.5, 1.0))
})
