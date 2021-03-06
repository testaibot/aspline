% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main.R
\name{wridge_solver}
\alias{wridge_solver}
\title{Fit B-Splines with weighted penalization over differences of parameters}
\usage{
wridge_solver(XX_band, Xy, degree, pen, w = rep(1, nrow(XX_band) - degree -
  1), old_par = rep(1, nrow(XX_band)), maxiter = 1000, tol = 1e-08)
}
\arguments{
\item{XX_band}{The matrix \eqn{X^T X} where \code{X} is the design matrix. This argument is given
in the form of a band matrix, i.e., successive columns represent superdiagonals.}

\item{Xy}{The vector of currently estimated points \eqn{X^T y}, where \code{y} is the y-coordinate of the data.}

\item{degree}{The degree of the B-splines.}

\item{pen}{Positive penalty constant.}

\item{w}{Vector of weights. The case \eqn{\mathbf w = \mathbf 1} corresponds to fitting P-splines with difference #' order \code{degree + 1} (see \emph{Eilers, P., Marx, B. (1996) Flexible smoothing with B-splines and penalties}.)}

\item{old_par}{Initial parameter to serve as starting point of the iterating process.}

\item{maxiter}{Maximum number of Newton-Raphson iterations to be computed.}

\item{tol}{The tolerance chosen to diagnostic convergence of the adaptive ridge procedure.}
}
\value{
The estimated parameter of the spline regression.
}
\description{
Fit B-Splines with weighted penalization over differences of parameters
}
