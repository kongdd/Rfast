\name{Column and row-wise variances and standard deviations}
\alias{colVars}
\alias{rowVars}
\title{
Column and row-wise variances and standard deviations of a matrix
}

\description{
Column and row-wise variances and standard deviations of a matrix
}

\usage{
colVars(x, suma = NULL, std = FALSE)
}

\arguments{
\item{x}{
A matrix with the data.
}
\item{suma}{
If you already have the column sums vector supply it, otherwise leave it NULL.
}
\item{std}{
A boolean variable specyfying whether you want the variances (FALSE) or the standard deviations (TRUE) of each column.
}
}

\details{
We found this in \href{http://stackoverflow.com/questions/25099825/row-wise-variance-of-a-matrix-in-r}{stackoverflow} and was created by \href{http://stackoverflow.com/users/3001626/david-arenburg}{David Arenburg}.
We then modified the function to match the sums type formula of the variance, which is faster.
}

\value{
A vector with the colum variances or standard deviations.
}

%\references{
%Tsagris M.T., Preston S. and Wood A.T.A. (2011). A data-based power transformation for compositional data. In Proceedings of the 4th Compositional Data Analysis Workshop, Girona, Spain.
%}

\author{
Michail Tsagris

R implementation and documentation: Michail Tsagris <mtsagris@yahoo.gr> and Manos Papadakis <papadakm95@gmail.com>.
}

\examples{
x <- matrix( rnorm(100 * 10000), ncol = 10000 )
system.time( a1 <- apply(x, 2, var) )
system.time( a2 <- colVars(x) )
all.equal(as.vector(a1), as.vector(a2))
}

\keyword{ Column-wise variances }
\keyword{ row-wise variances }
