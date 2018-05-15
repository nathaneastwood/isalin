context("Pig latin")

test_that("pig_latin correctly translates", {

  # Consonant
  expect_identical(pig_latin("hello"), "ellohay")
  expect_identical(pig_latin("street"), "eetstray")
  expect_identical(pig_latin("world", end = "way"), "orldway")

  # All consonant
  expect_identical(pig_latin("my"), "myay")
  expect_identical(pig_latin("my", end = "yay"), "myay")

  # Vowel
  expect_identical(pig_latin("airplane"), "airplaneay")
  expect_identical(pig_latin("eye"), "eyeay")
  expect_identical(pig_latin("ear"), "earay")
  expect_identical(pig_latin("apple", end = "yay"), "appleyay")

  # All vowel
  expect_identical(pig_latin("aeiou"), "aeiouay")
  expect_identical(pig_latin("aeiou", end = "way"), "aeiouway")
  expect_identical(pig_latin("aeiou", end = "yay"), "aeiouyay")

  # Vector
  expect_identical(
    pig_latin(c("hello", "world", "and", "my", "cat")),
    c("ellohay", "orldway", "anday", "myay", "atcay")
  )
  expect_identical(
    pig_latin(c("hello", "world", "and", "my", "cat"), end = "way"),
    c("ellohay", "orldway", "andway", "myay", "atcay")
  )

  # Errors
  expect_error(pig_latin(123), "word must be a character vector")
  expect_error(pig_latin(c("hello", "1")), "word cannot contain numbers")
})
