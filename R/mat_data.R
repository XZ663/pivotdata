#' Maternal Mortality Data
#'
#' The maternal mortality ratio was the number of women who died from pregnancy-related causes while pregnant or within 42 days of pregnancy termination per 100,000 live births.
#'
#' @docType data
#' @format A data frame in wide format with 186 rows and 23 variables:
#' \describe{
#'   \item{iso}{Country code (ISO 3-letter).}
#'   \item{country}{Country name.}
#'   \item{indicator}{Data type}
#'   \item{X2000}{Value for year 2000.}
#'   \item{X2001}{Value for year 2001.}
#'   \item{...}{Values continue for each year up to 2019.}
#'   \item{X2019}{Value for year 2019.}
#' }
#' @source https://data.worldbank.org
#' @references Jawad M, Hone T, Vamos EP, Cetorelli V, Millett C. Implications of armed conflict for maternal and child health: A regression analysis of data from 181 countries for 2000–2019. PLoS Med. 2021 Sep 28;18(9):e1003810. doi: 10.1371/journal.pmed.1003810.

"mat_data"
