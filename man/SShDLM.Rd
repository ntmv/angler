% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SShDLM.R
\name{SShDLM}
\alias{SShDLM}
\title{Calculate SShD using the lm() function}
\usage{
SShDLM(Coords, Sex, Zeroed = T)
}
\arguments{
\item{Coords}{Two-dimensional array of coordinates from geometric morphometric analysis (see two.d.array() in geomorph for correct formatting)}

\item{Sex}{A character or factor vector recording sex for each individual as 'm' or 'f'}

\item{Zeroed}{a logical value stating whether you wish to correct the SShD for the variation among individuals regardless of sex (defaults to TRUE)}
}
\description{
All of this program's built in SShD functions that perform bootstrap analysis on the data use the lm() function for some of its nice properties.  This function allows you to reproduce the results of the lm() function-based SShD calculation for a single sample.
}
