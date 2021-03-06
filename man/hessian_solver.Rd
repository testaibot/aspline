% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/main.R
\name{hessian_solver}
\alias{hessian_solver}
\title{Inverse the hessian and multiply it by the score}
\usage{
hessian_solver(par, XX_band, Xy, pen, w, diff)
}
\arguments{
\item{par}{The parameter vector}

\item{XX_band}{The matrix \eqn{X^T X} where \code{X} is the design matrix. This argument is given
in the form of a band matrix, i.e., successive columns represent superdiagonals.}

\item{Xy}{The vector of currently estimated points \eqn{X^T y}, where \eqn{y} is the y-coordinate of the data.}

\item{pen}{Positive penalty constant.}

\item{w}{Vector of weights. Has to be of length}

\item{diff}{The order of the differences of the parameter. Equals \code{degree + 1} in adaptive spline regression.}
}
\value{
The solution of the linear system: \deqn{(X^T X + pen D^T diag(w) D) ^ {-1} X^T y - par}
}
\description{
Inverse the hessian and multiply it by the score
}
