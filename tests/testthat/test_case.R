test_that("check case conversion", {
  x <- "demo string"

  expect_equal(to_kebab_case(x), "demo-string")
  expect_equal(to_lower_camel_case(x), "demoString")
  expect_equal(to_upper_camel_case(x), "DemoString")
  expect_equal(to_pascal_case(x), "DemoString")
  expect_equal(to_snake_case(x), "demo_string")
  expect_equal(to_snek_case(x), "demo_string")
  expect_equal(to_title_case(x), "Demo String")
  expect_equal(to_train_case(x), "Demo-String")
  expect_equal(to_shouty_kebab_case(x), "DEMO-STRING")
  expect_equal(to_shouty_snake_case(x), "DEMO_STRING")
})

test_that("check vector input", {
  x <- c("demo string", "Foo Bar")

  expect_equal(to_kebab_case(x), c("demo-string", "foo-bar"))
  expect_equal(to_lower_camel_case(x), c("demoString", "fooBar"))
  expect_equal(to_upper_camel_case(x), c("DemoString", "FooBar"))
  expect_equal(to_pascal_case(x), c("DemoString", "FooBar"))
  expect_equal(to_snake_case(x), c("demo_string", "foo_bar"))
  expect_equal(to_snek_case(x), c("demo_string", "foo_bar"))
  expect_equal(to_title_case(x), c("Demo String", "Foo Bar"))
  expect_equal(to_train_case(x), c("Demo-String", "Foo-Bar"))
  expect_equal(to_shouty_kebab_case(x), c("DEMO-STRING", "FOO-BAR"))
  expect_equal(to_shouty_snake_case(x), c("DEMO_STRING", "FOO_BAR"))
})

test_that("check NA input", {
  x <- NA_character_

  expect_equal(to_kebab_case(x), x)
  expect_equal(to_lower_camel_case(x), x)
  expect_equal(to_upper_camel_case(x), x)
  expect_equal(to_pascal_case(x), x)
  expect_equal(to_snake_case(x), x)
  expect_equal(to_snek_case(x), x)
  expect_equal(to_title_case(x), x)
  expect_equal(to_train_case(x), x)
  expect_equal(to_shouty_kebab_case(x), x)
  expect_equal(to_shouty_snake_case(x), x)
})

test_that("check vector NA input", {
  x <- c("foo-bar", NA_character_)

  expect_equal(to_kebab_case(x), c("foo-bar", NA))
  expect_equal(to_lower_camel_case(x), c("fooBar", NA))
  expect_equal(to_upper_camel_case(x), c("FooBar", NA))
  expect_equal(to_pascal_case(x), c("FooBar", NA))
  expect_equal(to_snake_case(x), c("foo_bar", NA))
  expect_equal(to_snek_case(x), c("foo_bar", NA))
  expect_equal(to_title_case(x), c("Foo Bar", NA))
  expect_equal(to_train_case(x), c("Foo-Bar", NA))
  expect_equal(to_shouty_kebab_case(x), c("FOO-BAR", NA))
  expect_equal(to_shouty_snake_case(x), c("FOO_BAR", NA))
})

test_that("check wrong data type", {
  x <- 1

  expect_error(to_kebab_case(x), "Expected Strings got Doubles")
  expect_error(to_lower_camel_case(x), "Expected Strings got Doubles")
  expect_error(to_upper_camel_case(x), "Expected Strings got Doubles")
  expect_error(to_pascal_case(x), "Expected Strings got Doubles")
  expect_error(to_snake_case(x), "Expected Strings got Doubles")
  expect_error(to_snek_case(x), "Expected Strings got Doubles")
  expect_error(to_title_case(x), "Expected Strings got Doubles")
  expect_error(to_train_case(x), "Expected Strings got Doubles")
  expect_error(to_shouty_kebab_case(x), "Expected Strings got Doubles")
  expect_error(to_shouty_snake_case(x), "Expected Strings got Doubles")
})
