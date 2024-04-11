
<!-- README.md is generated from README.Rmd. Please edit that file -->

# heck

<!-- badges: start -->

[![R-CMD-check](https://github.com/DyfanJones/heck/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/DyfanJones/heck/actions/workflows/R-CMD-check.yaml)
[![heck status
badge](https://dyfanjones.r-universe.dev/badges/heck)](https://dyfanjones.r-universe.dev/heck)
[![Codecov test
coverage](https://codecov.io/gh/DyfanJones/heck/branch/master/graph/badge.svg)](https://app.codecov.io/gh/DyfanJones/heck?branch=master)
<!-- badges: end -->

This repository was developed from the excellent tutorial
<https://extendr.github.io/user-guide/heckin-case-converter.html>. This
package is a thin wrapper around the rust crate
[heck](https://github.com/withoutboats/heck) allowing `R` to convert
character vectors to specific cases super fast.

## Installation

You can install the development version of `heck` like so:

r-universe:

``` r
install.packages("heck", repos = c("https://dyfanjones.r-universe.dev", "https://cran.r-project.org"))
```

Github:

``` r
remotes::install_github("dyfanjones/heck")
```

## Code of Conduct

Please note that the `R` `heck` project is released with a [Contributor
Code of
Conduct](https://contributor-covenant.org/version/2/1/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.

## Example

``` r
library(heck)


x <- "Demo String"

to_kebab_case(x)
#> [1] "demo-string"

to_lower_camel_case(x)
#> [1] "demoString"

to_upper_camel_case(x)
#> [1] "DemoString"

to_pascal_case(x)
#> [1] "DemoString"

to_snake_case(x)
#> [1] "demo_string"

to_snek_case(x)
#> [1] "demo_string"

to_title_case(x)
#> [1] "Demo String"

to_train_case(x)
#> [1] "Demo-String"

to_shouty_kebab_case(x)
#> [1] "DEMO-STRING"

to_shouty_snake_case(x)
#> [1] "DEMO_STRING"
```
