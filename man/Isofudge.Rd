\name{Isofudge}
\alias{Isofudge}
\title{Calculation of the fudge factor for the five SAM test statistics in the SAM procedure}
\description{
  The function calculates the fudge factor for SAM test statistics for the
	five test statistics (the global likelihood test, Williams, Marcus, M,
	and the modified M).
}
\usage{
  Isofudge(x, y)
}
\arguments{
  \item{x}{indicates the dose levels}
  \item{y}{gene expression for all genes}
 }
\value{
  A vector of five fudge factor values for the five SAM test statistics.
}

\author{Lin et al.}
\note{
  This function calculates the fudge factor for SAM test statistics for the five test statistics. 
}
\seealso{\code{\link{isoreg}}, \code{\link{Isoallfdr}}, \code{\link{IsoGenemSAM}}, \code{\link{Isoqqstat}},
	       \code{\link{Isoqval}},\code{\link{IsoTestSAM}},\code{\link{IsoSAMPlot}}}
\examples{
  set.seed(1234)
  x <- c(rep(1,3), rep(2,3), rep(3,3))
  y1 <- matrix(rnorm(9000, 1,1), 1000, 9)   # 1000 genes with no trends
  y2 <- matrix(c(rnorm(3000, 1,1), rnorm(3000,2,1), rnorm(3000,3,1)),
               1000, 9)  # 1000 genes with increasing trends
  y <- data.frame(rbind(y1, y2))  # y needs to be a data frame
  fudge.factor <- Isofudge(x,y)
}
\keyword{htest}

