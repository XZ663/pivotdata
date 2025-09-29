
#' @title reshape dataset
#' @description This function reshapes a dataset from wide to long format.
#' @param data A dataframe containing columns 'iso', 'X2000' to 'X2019'.
#' @param value_name A string specifying the name for the value column in the reshaped dataframe.
#' @return A dataframe in long format with columns 'iso', 'year', and the specified value column.
#' @author Xinyi Zhao
#' @export
#' @examples
#' data("mat_data")
#' clean_data(mat_data, matmor)
#' library(dplyr)
#' library(tidyr)
clean_data <- function(data, value_name) {
  data %>%
    pivot_longer(
      cols = X2000:X2019,
      names_to = 'year',
      values_to = value_name,
      names_prefix = 'X'
    ) %>%
    mutate(year = as.numeric(year)) %>%
    select(iso, year, value_name
    )
}


