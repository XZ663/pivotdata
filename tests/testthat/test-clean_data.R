library(testthat)
library(pivotdata)
library(tidyverse)

test_that("clean_data reshapes wide to long correctly", {
  toy_df <- data.frame(
    iso = c("CA", "US"),
    X2000 = c(10, 20),
    X2001 = c(11, 21),
    X2002 = c(12, 22),
    X2003 = c(13, 23),
    X2004 = c(14, 24),
    X2005 = c(15, 25),
    X2006 = c(16, 26),
    X2007 = c(17, 27),
    X2008 = c(18, 28),
    X2009 = c(19, 29),
    X2010 = c(20, 30),
    X2011 = c(21, 31),
    X2012 = c(22, 32),
    X2013 = c(23, 33),
    X2014 = c(24, 34),
    X2015 = c(25, 35),
    X2016 = c(26, 36),
    X2017 = c(27, 37),
    X2018 = c(28, 38),
    X2019 = c(29, 39)
  )

  value_name <- "matmor"

  long_df <- clean_data(toy_df, value_name)

  expect_true(all(c("iso", "year", value_name) %in% colnames(long_df)))

  expect_equal(nrow(long_df), 40)

  expect_true(is.numeric(long_df$year))

  expect_equal(long_df$matmor[long_df$iso == "CA" & long_df$year == 2000], 10)
  expect_equal(long_df$matmor[long_df$iso == "US" & long_df$year == 2019], 39)
})
