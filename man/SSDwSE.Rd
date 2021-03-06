% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SSDwSE.R
\name{SSDwSE}
\alias{SSDwSE}
\title{SSD with Standard Error estimated via a Bootstrap}
\usage{
SSDwSE(Size, Sex, rep = 1000)
}
\arguments{
\item{Size}{a numerical vector giving the size of each individual as a scalar quantity}

\item{Sex}{a character or factor vector recording sex for each individual as 'm' or 'f'}

\item{rep}{number of times to perform the resampling procedure}

\item{Strata}{a character or factor vector giving the factor by which we wish to divide individuals into groups before calculating SSD}
}
\description{
SSD with Standard Error estimated via a Bootstrap
}
