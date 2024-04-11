
<!-- README.md is generated from README.Rmd. Please edit that file -->

# heck

<!-- badges: start -->
<!-- badges: end -->

This repo was developed from the excellent tutorial
<https://extendr.github.io/user-guide/heckin-case-converter.html>. This
package is a thin wrapper around the rust crate
[heck](https://crates.io/crates/heck) allowing R to convert character
vectors to specific cases super fast.

## Installation

You can install the development version of heck like so:

``` r
remotes::install_github("dyfanjones/heck")
```

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

**NOTE:** This repo was created to help me learn how R and Rust work
together.
