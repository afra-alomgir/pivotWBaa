test_that("long_WB reshapes maternal_mortality into country-year observations", {
  result <- long_WB(maternal_mortality, "maternal_mortality")

  expect_equal(nrow(result), nrow(maternal_mortality) * 20)
  expect_named(result, c("iso", "year", "maternal_mortality"))
  expect_type(result$year, "double")
  expect_equal(result$maternal_mortality[result$iso == "AFG" & result$year == 2000], 1450)
})