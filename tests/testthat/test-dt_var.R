test_that("Expected input to be non-empty dataframe with all numeric columns", {
  expect_error(df_var(rnorm(10)))
  expect_equal(df_var(NULL),"Please use a non-empty dataframe.")
  expect_equal(df_var(cancer_sample),"You have a non numeric column, please select a dataframe with all numeric column")
})

test_that("Correct intput and expected output", {
  expect_equal(df_var(data.frame(c(1,2,3,4,5),c(11,22,33,44,55))), c(2.5,302.5))
  expect_true(is.numeric(df_var(data.frame(c(1,2,3,4,5),c(11,22,33,44,55)))))
})