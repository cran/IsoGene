\name{IsoGene-package}
\alias{IsoGene-package}
\alias{IsoGene}
\docType{package}
\title{
IsoGene 
}
\description{
Library IsoGene aims to identify for genes with a monotonic trend in the
expression levels with respect to the increasing doses using several
test statistics. They include the global likelihood ratio test
(\eqn{E^2}{E^2}, Bartholomew 1961, Barlow et al. 1972 and Robertson et al. 1988),
Williams (1971, 1972), Marcus (1976), the M (Hu et al. 2005) and the
modified M (Lin et al. 2007). The p-values of the five test statistics
are obtained using permutation and they are adjusted using BH (Benjamini
and Hochberg 1995) and BY (Benjamini and Yekutieli 2004) procedures are
used for controlling the FDR. 
}
\details{

\tabular{ll}{
Package: \tab IsoGene\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2007-05-02\cr
License: \tab Free\cr
}

}

\value{
The package includes the following functions:

 \item{\code{\link{IsoGene1}}}{calculates the five test statistics in
   testing both increasing and decreasing alternatives for a single gene}
\item{\code{\link{IsoGenem}}}{calculates the five test statistics in
   testing both increasing and decreasing alternatives for all the genes in the data set}   
 \item{\code{\link{IsoRawp}}}{obtains the raw (one-sided and two-sided)
   p-values using permuations}
 \item{\code{\link{IsoTestBH}}}{BH or BY procedure to adjust p-values
   while controlling FDR}
  \item{\code{\link{IsoGenemSAM}}}{calculates the SAM test statistic}  
  \item{\code{\link{Isofudge}}}{calculates the fudge factor in the SAM test statistic}  
  \item{\code{\link{Isoqqstat}}}{calculates the SAM test statistic using permutations}  
  \item{\code{\link{Isoallfdr}}}{obtains the delta table in the SAM procedure}
  \item{\code{\link{Isoqval}}}{the SAM procedure to obtain q-values}
  \item{\code{\link{IsoTestSAM}}}{the SAM procedure to obtain a list of significant genes }
  \item{\code{\link{IsoSAMPlot}}}{SAM plot}
  \item{\code{\link{IsoBHPlot}}}{plot of adjusted BH and BY p-values}
 \item{\code{\link{IsoPlot}}}{plot of data, sample means, and a fitted isotonic regression curve with a likely direction}
\item{\code{\link{IsopvaluePlot}}}{plot of p-values obtained using
  permutation under increasing or decreasing alternatives}
}


\author{
Lin et al.

Maintainer: Martin Otava <martin.otava@uhasselt.be>
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
\keyword{package}
\seealso{
  \code{\link[multtest]{mt.rawp2adjp}},
  \code{\link{IsoGene1}},  \code{\link{IsoGenem}},\code{\link{IsoRawp}}, \code{\link{IsoTestBH}}, \code{\link{IsoGenemSAM}},
  \code{\link{Isofudge}}, \code{\link{Isoqqstat}},\code{\link{Isoallfdr}},\code{\link{Isoqval}},\code{\link{IsoTestSAM}},
  \code{\link{IsoSAMPlot}}, \code{\link{IsoBHPlot}}, \code{\link{IsoPlot}}.
}
