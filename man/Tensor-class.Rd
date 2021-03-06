% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rTensor_Class.R
\docType{class}
\name{Tensor-class}
\alias{Tensor-class}
\alias{Tensor}
\title{S4 Class for a Tensor}
\description{
An S4 class for a tensor with arbitrary number of modes. The Tensor class extends the base 'array' class to include additional tensor manipulation (folding, unfolding, reshaping, subsetting) as well as a formal class definition that enables more explicit tensor algebra.
}
\details{
{This can be seen as a wrapper class to the base \code{array} class. While it is possible to create an instance using \code{new}, it is also possible to do so by passing the data into \code{\link{as.tensor}}.

Each slot of a Tensor instance can be obtained using \code{@}.

The following methods are overloaded for the Tensor class: \code{\link{dim-methods}}, \code{\link{head-methods}}, \code{\link{tail-methods}}, \code{\link{print-methods}}, \code{\link{show-methods}},  element-wise array operations, array subsetting (extract via `['), array subset replacing (replace via `[<-'), and \code{\link{tperm-methods}}, which is a wrapper around the base \code{aperm} method.

To sum across any one mode of a tenor, use the function \code{\link{modeSum-methods}}. To compute the mean across any one mode, use \code{\link{modeMean-methods}}.

You can always unfold any Tensor into a matrix, and the \code{\link{unfold-methods}}, \code{\link{k_unfold-methods}}, and \code{\link{matvec-methods}} methods are for that purpose. The output can be kept as a Tensor with 2 modes or a \code{matrix} object. The vectorization function is also provided as \code{vec}. See the attached vignette for a visualization of the different unfoldings.

Conversion from \code{array}/\code{matrix} to Tensor is facilitated via \code{\link{as.tensor}}. To convert from a Tensor instance, simply invoke \code{@data}.

The Frobenius norm of the Tensor is given by \code{\link{fnorm-methods}}, while the inner product between two Tensors (of equal modes) is given by \code{\link{innerProd-methods}}. You can also sum through any one mode to obtain the K-1 Tensor sum using \code{\link{modeSum-methods}}. \code{\link{modeMean-methods}} provides similar functionality to obtain the K-1 Tensor mean. These are primarily meant to be used internally but may be useful in doing statistics with Tensors.

For Tensors with 3 modes, we also overloaded \code{t} (transpose) defined by Kilmer et.al (2013). See \code{\link{t-methods}}.

To create a Tensor with i.i.d. random normal(0, 1) entries, see \code{\link{rand_tensor}}.
}
}
\note{
All of the decompositions and regression models in this package require a Tensor input.
}
\section{Slots}{

\describe{
\item{num_modes}{number of modes (integer)}
 \item{modes}{vector of modes (integer), aka sizes/extents/dimensions}
 \item{data}{actual data of the tensor, which can be 'array' or 'vector'}
}
}

\section{Methods}{

 \describe{
   \item{[}{\code{signature(tnsr = "Tensor")}: ... }
   \item{[<-}{\code{signature(tnsr = "Tensor")}: ... }
   \item{matvec}{\code{signature(tnsr = "Tensor")}: ... }
   \item{dim}{\code{signature(tnsr = "Tensor")}: ... }
   \item{fnorm}{\code{signature(tnsr = "Tensor")}: ... }
   \item{head}{\code{signature(tnsr = "Tensor")}: ... }
   \item{initialize}{\code{signature(.Object = "Tensor")}: ... }
   \item{innerProd}{\code{signature(tnsr1 = "Tensor", tnsr2 = "Tensor")}: ... }
   \item{modeMean}{\code{signature(tnsr = "Tensor")}: ... }
   \item{modeSum}{\code{signature(tnsr = "Tensor")}: ... }
   \item{Ops}{\code{signature(e1 = "array", e2 = "Tensor")}: ... }
   \item{Ops}{\code{signature(e1 = "numeric", e2 = "Tensor")}: ... }
   \item{Ops}{\code{signature(e1 = "Tensor", e2 = "array")}: ... }
   \item{Ops}{\code{signature(e1 = "Tensor", e2 = "numeric")}: ... }
   \item{Ops}{\code{signature(e1 = "Tensor", e2 = "Tensor")}: ... }
   \item{print}{\code{signature(tnsr = "Tensor")}: ... }
   \item{k_unfold}{\code{signature(tnsr = "Tensor")}: ... }
   \item{show}{\code{signature(tnsr = "Tensor")}: ... }
   \item{t}{\code{signature(tnsr = "Tensor")}: ... }
   \item{tail}{\code{signature(tnsr = "Tensor")}: ... }
   \item{unfold}{\code{signature(tnsr = "Tensor")}: ... }
   \item{tperm}{\code{signature(tnsr = "Tensor")}: ...}
   \item{image}{\code{signature(tnsr = "Tensor")}: ...}
 }
}

\examples{
tnsr <- rand_tensor()
class(tnsr)
tnsr
print(tnsr)
dim(tnsr)
tnsr@num_modes
tnsr@data
}
\references{
James Li, Jacob Bien, Martin T. Wells (2018). rTensor: An R Package for Multidimensional Array (Tensor) Unfolding, Multiplication, and Decomposition. Journal of Statistical Software, 87(10), 1-31. URL http://www.jstatsoft.org/v087/i10/.
}
\seealso{
\code{\link{as.tensor}}
}
\author{
James Li \email{jamesyili@gmail.com}
}
