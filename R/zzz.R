#' @title Convert string depending case preference
#' @param x A character vector to be converted.
#' @return
#'  - `to_kebab_case()` returns character vector in kebab case i.e. "kebab-case"
#'  - `to_lower_camel_case()` returns character vector in lower camel case i.e. "lowerCamelCase"
#'  - `to_upper_camel_case()` returns character vector in upper camel case i.e. "UpperCammelCase"
#'  - `to_pascal_case()` returns character vector in pascal case i.e. "PascalCase"
#'  - `to_snake_case()` returns character vector in snake case i.e. "snake_case"
#'  - `to_snek_case()` returns character vector in snake case i.e. "snek_case"
#'  - `to_title_case()` returns character vector in title case i.e. "Title Case"
#'  - `to_train_case()` returns character vector in train case i.e. "Train-Case"
#'  - `to_shouty_kebab_case()` returns character vector in shouty kebab case i.e. "SHOUTY-KEBAB-CASE"
#'  - `to_shouty_snake_case()` returns character vector in shouty snake case i.e. "SHOUTY_SNAKE_CASE"
#'
#' @examples
#' x <- "Demo String"
#'
#' to_kebab_case(x)
#'
#' to_lower_camel_case(x)
#' to_upper_camel_case(x)
#'
#' to_pascal_case(x)
#'
#' to_snake_case(x)
#' to_snek_case(x)
#'
#' to_title_case(x)
#' to_train_case(x)
#'
#' to_shouty_kebab_case(x)
#' to_shouty_snake_case(x)
#'
#' @name caseconverter
NULL
