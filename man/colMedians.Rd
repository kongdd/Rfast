\name{Column-wise medians}
\alias{colMedians}
\title{
Colum-wise medians
}

\description{
Colum-wise variances and standard deviations of a matrix
}

\usage{
colMedians(x)
}

\arguments{
\item{x}{
A matrix with the data.
}
}

\details{
The functions is written in C++ in order to be as fast as possible.
}

\value{
A vector with the column medians.
}

%\references{
%Tsagris M.T., Preston S. and Wood A.T.A. (2011). A data-based power transformation for compositional data. In Proceedings of the 4th Compositional Data Analysis Workshop, Girona, Spain.
%}

\author{
Michail Tsagris

R implementation and documentation: Michail Tsagris <mtsagris@yahoo.gr> and Manos Papadakis <papadakm95@gmail.com>.
}


\seealso{
\code{\link{colVars}, \link{colMeans} (buit-in R function)
}
}

\examples{
x <- matrix( rnorm(100 * 1000), ncol = 1000 )
system.time( apply(x, 2, stats::median) )
system.time( colMedians(x) )
a = apply(x, 2, median) 
b = colMedians(x) 
all.equal(a, b)
}

\keyword{ Column-wise medians }