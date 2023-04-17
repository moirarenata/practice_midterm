install.packages("testthat")
library(tidyverse)
library(testthat)

convert_temp <- function(temperature, method) {
  if (method == "c2f") {
    return (temperature * 9 / 5) + 32
  } else {
    return (temperature - 32) * 5 / 9
  }
}

#Create tests
expect_equal(convert_temp(32, "f2c"), 0)
expect_equal(convert_temp(0, "c2f"), 32)
expect_equal(convert_temp(30, "c2f"), 86)
expect_equal(convert_temp(212, "f2c"), 100)
