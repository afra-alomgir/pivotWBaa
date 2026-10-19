
# pivotWBaa

<!-- badges: start -->
<!-- badges: end -->

This package provides a function for reshaping World Bank
indicator datasets from wide format to long format.


## Installation

You can install the development version of pivotWBaa from [GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("afra-alomgir/pivotWBaa")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(pivotWBaa)
data(maternal_mortality)
matmor_long <- long_WB(
  maternal_mortality,
  "matmor"
)
head(matmor_long)
```

