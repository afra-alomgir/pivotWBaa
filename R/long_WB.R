
#' Convert World Bank Data from Wide to Long Format
#'
#' Reshapes World Bank indicator data so that each row represents
#' one country and year.
#'
#' @param df A data frame containing an `iso` column and yearly
#'   columns named with an X prefix, such as X2000 and X2001.
#' @param varname A character string specifying the name of the
#'   output indicator column.
#'
#' @return A data frame containing `iso`, `year`, and the
#'   indicator column specified by `varname`.
#'
#' @details The function removes the X prefix from year-column
#'   names, converts the year to numeric, and reshapes the data
#'   from wide to long format.
#'
#' @examples
#' matmor_long <- long_WB(maternal_mortality, "matmor")
#'
#' @export
long_WB <- function(df, varname) {
  result <- df %>%
    dplyr::select(iso, X2000:X2019) %>%
    tidyr::pivot_longer(cols = starts_with("X"),
      names_to = "year",
      names_prefix = "X",
      values_to = varname
    ) %>%
    dplyr::mutate(year = as.numeric(year)) %>%
    dplyr::select(iso, year, all_of(varname))
  return(result)
}
