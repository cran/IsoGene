\name{Isoqval}
\alias{Isoqval}
\title{Obtaining the list of significant genes using the SAM procedure}
\description{
  The function obtains the list of significant genes using the SAM procedure for the five test statistics (the
  global likelihood test, Williams, Marcus, M, and the modified M).
}
\usage{
Isoqval(delta, allfdr, qqstat, stat)
}
\arguments{
  \item{delta}{the delta value as cut-off to find the number of significant genes}
  \item{allfdr}{the delta table obtained from function Isoallfdr}
  \item{qqstat}{output from function Isoqqstat containing the test statistics of permutations}
  \item{stat}{choose one of the five test statistics to use}
}
\value{
   A list of components
  \item{res}{returns the list genes with descending q-values of the SAM procedure in three columns: the first column is the row number of the genes, the second column is the observed test statistic values, and the last column is the q-values}
  \item{sign.list}{returns the list of significant genes found by the defined delta value with descending p-values in three columns: the first column is the row number of the genes, the second column is the observed test statistic values, and the last column is the q-values}
  }

\author{Lin et al.}
\note{
  This function obtains the list of significant genes using the SAM procedure for the five test statistics. To use the SAM procedure, the number of genes in the dataset is preferably larger than 500.
}
\seealso{\code{\link{isoreg}}, \code{\link{Isoqqstat}},
\code{\link{Isoallfdr}}, \code{\link{IsoTestSAM}}, \code{\link{IsoSAMPlot}}
}
\examples{
  set.seed(1234)
  x <- c(rep(1,3),rep(2,3),rep(3,3))
  y1 <- matrix(rnorm(9000, 1,1),1000,9) ## 1000 genes with no trends
  y2 <- matrix(c(rnorm(3000, 1,1),rnorm(3000,2,1),rnorm(3000,3,1)),1000,9) ## 1000 genes with increasing trends
  y <- data.frame(rbind(y1, y2)) ##y needs to be a data frame
  qqstat <- Isoqqstat(x, y, fudge="pooled", niter=100)
  allfdr <- Isoallfdr(qqstat, ,stat="E2")
  qval <- Isoqval(delta=0.2, allfdr, qqstat, stat="E2")
}
\keyword{htest}