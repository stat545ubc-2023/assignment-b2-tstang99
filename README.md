
# df.Var

The goal of df.Var is to help users to find the variance of each
attribute/column in a dataframe.

## Installation

You can install the development version of df.Var from
[GitHub](https://github.com/) using the following code:

``` r
# install.packages("devtools")
devtools::install_github("stat545ubc-2023/df.Var")
```

## Example

Below are some examples of how to use the function in this package.

``` r
library(datateachr)
df_var(cancer_sample[,3:10])
#> Error in df_var(cancer_sample[, 3:10]): could not find function "df_var"
df_var(data.frame(c(0,0,0),c(10,2,3),c(22,323,9303)))
#> Error in df_var(data.frame(c(0, 0, 0), c(10, 2, 3), c(22, 323, 9303))): could not find function "df_var"
```
