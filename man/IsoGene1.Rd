\name{IsoGene1}
\alias{IsoGene1}
\title{The five test statistics calculated for both the increasing and
  decreasing trends}
\description{
  The function calculates the values for the five test statistics (the
  global likelihood test, Williams, Marcus, M, and the modified M) for
  testing increasing and decreasing alternatives.
}
\usage{
IsoGene1(x, y)
}
\arguments{
  \item{x}{indicates the dose levels}
  \item{y}{is the gene expression for one gene}
}
\value{
   A list with components 
  \item{E2.up}{the test statistic of the global likelihood test for testing
    increasing alternative.}
  \item{Williams.up}{the test statistic of Williams for testing
    increasing alternative.}
  \item{Marcus.up }{the test statistic of Marcus for testing increasing
    alternative.}
  \item{M.up }{the M test statistic for testing increasing alternative.}
\item{ModM.up }{the test statistic of the modified M for testing
  increasing alternative.}
  \item{E2.dn }{the test statistic of Williams for testing decreasing alternative.}
\item{Williams.dn }{the test statistic of global likelihood test for
  testing decreasing alternative.}
  \item{Marcus.dn }{the test statistic of Williams for testing
    decreasing alternative.}
\item{M.dn}{the test statistic of global likelihood test for testing
  decreasing alternative.}
  \item{ModM.dn}{the test statistic of Williams for testing increasing alternative.}
\item{direction}{the direction with the higher likelihood of increasing
  (indicated by "u") or decreasing (indicated by "d") trend.}

}
\references{
Modeling Dose-response Microarray
Data in Early Drug Development Experiments Using 
R, Lin D., Shkedy Z., Yekutieli D., Amaratunga D., and Bijnens, 
L. (editors), (2012), Springer.

Testing for Trend in Dose-Response Microarray Experiments: a Comparison
of Testing Procedures, Multiplicity, and Resampling-Based Inference, Lin
et al. 2007, Stat. App. in Gen. & Mol. Bio., 6(1), article 26.

IsoGene: An R Package for Analyzing Dose-response Studies in Microarray Experiments, Pramana S., Lin D., Haldermans P., Shkedy Z., Verbeke T., De Bondt A., Talloen W., Goehlmann H., Bijnens L. 2010, R Journal 2/1. 

}
\author{Lin et al. }
\note{
  This function calculates the five test statistics for both increasing
  and decreasing ordered alternatives for a single gene. 
}
\seealso{\code{\link{isoreg}}}
\examples{
  x <- c(rep(1,3),rep(2,3),rep(3,3),rep(4,3))
  y <- c(rnorm(3,1,1),rnorm(3,2,1),rnorm(3,3,1),rnorm(3,4,1))
  stat <- IsoGene1(x,y)
  stat
}
\keyword{htest}

