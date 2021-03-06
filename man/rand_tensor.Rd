% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rTensor_Misc.R
\name{rand_tensor}
\alias{rand_tensor}
\title{Tensor with Random Entries}
\usage{
rand_tensor(modes = c(3, 4, 5), drop = FALSE)
}
\arguments{
\item{modes}{the modes of the output Tensor}

\item{drop}{whether or not modes equal to 1 should be dropped}
}
\value{
a Tensor object with modes given by \code{modes}
}
\description{
Generate a Tensor with specified modes with iid normal(0,1) entries.
}
\note{
Default \code{rand_tensor()} generates a 3-Tensor with modes \code{c(3,4,5)}.
}
\examples{
rand_tensor()
rand_tensor(c(4,4,4))
rand_tensor(c(10,2,1),TRUE)
}
