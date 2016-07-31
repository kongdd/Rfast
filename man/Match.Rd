\name{ Match }
\alias{Match}
\title{
Match
}

\description{
Match.
}

\usage{
Match(x,key)
}

\arguments{
\item{x}{
A Numeric vector 
}
\item{key}{
The value for searching the key
}

}

\details{
This function implements the R's "match" function.
}

\value{
Returns the position of the given key in the x vector.
}

\author{
Manos Papadakis

R implementation and documentation: Manos Papadakis <papadakm95@gmail.com>
}

%\note{
%%  ~~further notes~~
%}

\seealso{
\code{\link{match}
}
}

\examples{
y <- rnorm(100)
Match(y,50) == match(50,y)
}

\keyword{ Match Function }