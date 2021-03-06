\name{Floyd-Warshall algorithm}
\alias{floyd}
\title{
Floyd-Warshall algorithm for shortest paths in a directed graph
}

\description{
Floyd-Warshall algorithm for shortest paths in a directed graph.
}

\usage{
floyd(x) 
}

\arguments{
\item{x}{
The adjacency matrix of a directed graph. A positive number in x[i, j] indicates that there is an arrow
from i to j and it also shows the cost of going from i to j. Hence, the algorithm will find not only the shortest path but also the with the smallest cost. A value of zero means that there is no path. 
Put positive number only, as negative will cause problems.
}
}

\details{
The Floyd-Warshall algorithm is designed to find the shortest path (if it exists) between two nodes in a graph. 
}

\value{
A matrix, say z, with 0 and positive numbers. If z[i, j] is zero it  means that there is no path going from i to j. If z[i, j] has a positive value it means that there is a path from i to j and its value is equal to the cost of going from i to j. 
}

\references{
Floyd, Robert W. (1962). Algorithm 97: Shortest Path. Communications of the ACM. 5(6): 345.
 
Warshall, Stephen (1962). A theorem on Boolean matrices. Journal of the ACM. 9 (1): 11-12.

https://en.wikipedia.org/wiki/Floyd%E2%80%93Warshall_algorithm
}

\author{
John Burkardt (C++ code)

Ported into R and documentation: Manos Papadakis <papadakm95@gmail.com>.
}
%\note{
%%  ~~further notes~~
%}

\seealso{
\code{\link{sort_mat}
}
}

\examples{
x <- matrix(0, 5, 5)
x[1, 2] <- 2 ; x[1, 3] <- 2
x[2, 4] <- 6 ; x[2, 5] <- 5
x[3, 4] <- 5 ; x[3, 5] <- 4
x[4, 5] <- 7
x[5, 4] <- 8 

floyd(x)
}

\keyword{ Floyd-Warshall algorithm }
\keyword{ directed graph }
\keyword{ shortest paths }
