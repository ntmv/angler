#' Sexual Size Dimorphism Calculator
#'
#' Calculates the log ratio of sexual dimorphism, log(F/M) (adapted with alterations from Smith 1999).  For the SDI (Lovich and Gibbons 1992), use SSDFunc().  Defaults to e as the base for the logarithm.
#'
#' @param Size A numerical vector giving the size of each individual as a scalar quantity
#' @param Sex A character or factor vector recording sex for each individual as 'm' or 'f', individuals should be in the same order as the Size vector
#' @param Base the base for the logarithm (defaults to e = 2.718...)
#' @param positiveM Smith 1999 has the log ratio with male biased being positive and female biased being negative (suited to mammalian research), can have the statistic operate in that manner by setting this to TRUE
#'
#' @export
#'
#' @examples
#' SSDLog(Size, Sex)

SSDLog <- function(Size, Sex, Base = exp(1), positiveM = F) {
  Sex <- as.character(Sex)

  if (!is.element("m", Sex) | !is.element("f", Sex)) {
    return(NA_real_)
    warning("No data found for at least one sex.")
  }

  MSize <- mean(Size[Sex == 'm'])
  FSize <- mean(Size[Sex == 'f'])
  if (isTRUE(positiveM)) {
    SSD <- log((MSize/FSize), base = Base)
  }
  else if (isFALSE(positiveM)) {SSD <- log((FSize/MSize), base = Base)}
  else {stop("positiveM argument must be a logical value.")}
  SSD
}
