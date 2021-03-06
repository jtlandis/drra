% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auxiliary.R
\name{vcov.dr4pl}
\alias{vcov.dr4pl}
\title{Obtain the variance-covariance matrix of the parameter estimators of a
4PL model.}
\usage{
\method{vcov}{dr4pl}(object, ...)
}
\arguments{
\item{object}{An object of the dr4pl class.}

\item{...}{Other function arguments to be passed to the default 'vcov' function.}
}
\value{
The variance-covariance matrix of the parameter estimators of a 4PL
model whose columns are in the order of the upper asymptote, IC50, slope and lower
asymptote from left to right and whose rows are in the same order.
}
\description{
This function obtains the variance-covariance matrix of the parameter
estimators of a 4PL model. The variance-covariance matrix returned by this
function can be used to compute the standard errors and confidence intervals
for statistical inference.
}
\details{
This function obtains the variance-covariance matrix of the parameter
estimators of a 4PL model. The Hessian matrix is used to obtain the second order
approximation to the sum-of-squares loss function, and then the standard errors 
are computed as the square roots of the half of the Hessian matrix. Please refer
to Subsection 5.2.2 of Seber and Wild (1989).
}
\examples{
obj.dr4pl <- dr4pl(Response ~ Dose, data = sample_data_1)  # Fit a 4PL model to data
vcov(obj.dr4pl)  # Variance-covariance matrix of the parameters

obj.dr4pl <- dr4pl(Response ~ Dose, data = sample_data_2)  # Fit a 4PL model to data
vcov(obj.dr4pl)  # Variance-covariance matrix of the parameters

}
\references{
\insertRef{Seber1989}{dr4pl}
}
