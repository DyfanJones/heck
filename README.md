
<!-- README.md is generated from README.Rmd. Please edit that file -->

# heck

<!-- badges: start -->

[![R-CMD-check](https://github.com/DyfanJones/heck/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/DyfanJones/heck/actions/workflows/R-CMD-check.yaml)
[![heck status
badge](https://dyfanjones.r-universe.dev/badges/heck)](https://dyfanjones.r-universe.dev/heck)
[![Codecov test
coverage](https://codecov.io/gh/DyfanJones/heck/branch/master/graph/badge.svg)](https://app.codecov.io/gh/DyfanJones/heck?branch=master)
[![CRAN
status](https://www.r-pkg.org/badges/version/heck)](https://CRAN.R-project.org/package=heck)
<!-- badges: end -->

This repository was developed from the excellent extendr tutorial. This
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
```

``` r

to_lower_camel_case(x)
#> [1] "demoString"
```

``` r

to_upper_camel_case(x)
#> [1] "DemoString"
```

``` r

to_pascal_case(x)
#> [1] "DemoString"
```

``` r

to_snake_case(x)
#> [1] "demo_string"
```

``` r

to_snek_case(x)
#> [1] "demo_string"
```

``` r

to_title_case(x)
#> [1] "Demo String"
```

``` r

to_train_case(x)
#> [1] "Demo-String"
```

``` r

to_shouty_kebab_case(x)
#> [1] "DEMO-STRING"
```

``` r

to_shouty_snake_case(x)
#> [1] "DEMO_STRING"
```
