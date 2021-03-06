% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LPP_lp.R
\name{ROTBW.fit}
\alias{ROTBW.fit}
\title{Rule of thumb bandwidth for inference at a point}
\usage{
ROTBW.fit(d, kern = "triangular", order = 1, boundary = NULL)
}
\arguments{
\item{d}{object of class \code{"LPPData"}}

\item{kern}{specifies kernel function used in the local regression. It can
either be a string equal to \code{"triangular"} (\eqn{k(u)=(1-|u|)_{+}}),
\code{"epanechnikov"} (\eqn{k(u)=(3/4)(1-u^2)_{+}}), or \code{"uniform"}
(\eqn{k(u)= (|u|<1)/2}), or else a kernel function.}

\item{order}{Order of local regression 1 for linear, 2 for quadratic.}

\item{boundary}{Is point at a boundary?}
}
\value{
ROT bandwidth
}
\description{
Calculate bandwidth for inference at a point with local linear regression
using method in Fan and Gijbels (1996, Chapter 4.2).
}
\examples{
dp <- LPPData(lee08[lee08$margin>0, ], point=0)
bp1 <- ROTBW.fit(dp, kern="uniform", order=1)
}
\references{
{

\cite{Fan , J., and I. Gijbels (1996): Local Polynomial Modelling and Its
Applications, Monographs on Statistics and Applied Probability. Chapman &
Hall/CRC, New York, NY.}

}
}
