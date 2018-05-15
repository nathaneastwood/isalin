#' Translate using pig latin
#'
#' Translate words into their pig latin form.
#'
#' @param word A character vector of word(s) to translate.
#' @param end The ending of words beginning with a vowel.
#'
#' @examples
#' pig_latin("hello")
#' pig_latin("airplane")
#' pig_latin("eye")
#' pig_latin("ear")
#' pig_latin("aeiou")
#' pig_latin("my")
#' pig_latin(c("hello", "world"))
#'
#' @export
pig_latin <- function(word, end = c("ay", "way", "yay")) {

  if (!is.character(word)) stop("word must be a character vector")
  if (any(grepl("[0-9]", word))) stop("word cannot contain numbers")

  end <- match.arg(end, c("ay", "way", "yay"), several.ok = FALSE)

  unname(vapply(word, apply_pl, FUN.VALUE = NA_character_, end = end))
}

apply_pl <- function(word, end) {
  if (grepl("^[aeiou].+$", word)) {
    paste0(word, end, collapse = NULL)
  } else if (grepl("^[^aeiou].+$", word)) {
    pos <- as.numeric(regexpr("[aeiou]", word))
    first <- substr(word, start = 1, stop = pos - 1)
    second <- substr(word, start = pos, stop = nchar(word))
    paste0(second, first, "ay", collapse = NULL)
  }
}
