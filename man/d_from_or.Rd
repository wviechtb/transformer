% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/d_from_or.R
\name{d_from_or}
\alias{d_from_or}
\title{Obtain Cohen's \emph{d} from an Odds Ratio and its Confidence Interval}
\usage{
d_from_or(or, lb, ub, ci = 95, dist = "normal")
}
\arguments{
\item{or}{Numerical vector for the odds ratios.}

\item{lb}{Numerical vector for the lower bound of the confidence intervals.}

\item{ub}{Numerical vector for the upper bound of the confidence intervals.}

\item{ci}{Scalar between 0 and 100 to indicate the confidence interval width (default is 95). Can also be a vector.}

\item{dist}{Character string to indicate the distribution to assume for the underlying data. Either \code{"normal"} (the default) or \code{"logistic"}. Can also be a vector.}
}
\value{
A numeric vector of Cohen's \code{d} values.
}
\description{
This function computes Cohen's \emph{d} values based on an odds ratio using either the \sQuote{normal} or the \sQuote{logistic} transformation.
}
\examples{
d_from_or(or=c(1.29, 1.71), lb=c(0.32, 0.64), ub=c(5.19, 4.61))
d_from_or(or=c(1.29, 1.71), lb=c(0.32, 0.64), ub=c(5.19, 4.61), dist="logistic")

}
\references{
Chinn, S. (2000). A simple method for converting an odds ratio to effect size for use in meta-analysis. Statistics in Medicine, 19(22), 3127-3131.

Cox, D. R., & Snell, E. J. (1989). Analysis of binary data (2nd ed.). London: Chapman & Hall.
}
