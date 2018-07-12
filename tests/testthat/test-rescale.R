context("test-rescale.R")

test_that("Check-rescale with defaults",{
    expect_equal(object = rescale(c(1,2,3)), expected = c( 0.0, 0.5, 1.0))
})

test_that("Check-rescale with overwriting defaults",{
    expect_equal(object = rescale(c(1,2,3),lower = 1, upper = 2), expected = c( 1.0, 1.5, 2.0))
})
