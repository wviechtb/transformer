% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/d_from_r_pearson.R
\name{d_from_r_pearson}
\alias{d_from_r_pearson}
\title{Obtain Cohen's \emph{d} from the Pearson correlation \emph{r}}
\usage{
d_from_r_pearson(
  r_pearson,
  n,
  baseRateSensitive = FALSE,
  biasCorrect = FALSE,
  crosssectionalSampling = FALSE
)
}
\arguments{
\item{r_pearson}{A numerical vector with one or more Pearson \emph{r} values.}

\item{n}{A numerical vector with the sample sizes of each Pearson \emph{r}
value. Note that the \emph{n}th element of these vectors must correspond to
the \emph{n}th element of the \code{r_pbs} vector.}

\item{baseRateSensitive}{Whether to compute the base rate sensitive
Cohen's d or not (see McGrath & Meyer, 2006).}

\item{biasCorrect}{Logical to indicate if the \emph{d}-values should be
bias-corrected. Can also be a vector.}

\item{crosssectionalSampling}{Logical ...}
}
\value{
Invisibly, a data frame with three columns, as many rows as
\code{r_pearson} and \code{n} are long, and filled with \code{NA}s for all cells except
those in the last column.
}
\description{
This function does not convert the Pearson correlation \emph{r} to Cohen's \emph{d},
because this is not possible. If two variables are continuous, it is not
possible to compute a value of Cohen's \emph{d}.
}
\details{
This function is included in the \code{escalc} package for two reasons. First,
it provides a consistent API for users (i.e. every conversion function
exists). Second, it allows informing users that they try to do something
that isn't sensible.
}
\examples{
escalc::d_from_r_pearson(r_pearson = .3, n = 100)

}
\references{
McGrath, R. E. & Meyer, G. J. (2006) When Effect Sizes Disagree:
The Case of \emph{r} and \emph{d}. \emph{Psychological Methods, 11}, 386-401,
doi:\doi{10.1037/1082-989X.11.4.386386}
}
