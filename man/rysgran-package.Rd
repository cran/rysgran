\name{rysgran-package}
\alias{rysgran-package}
\alias{rysgran}
\docType{package}
\title{Grain size analysis, textural classifications and distribution of unconsolidated sediments  }
\description{  This package is a port to R of the SysGran program, written in Delphi by Camargo (2006). It contains functions for the analysis of grain size samples based on various methods, like Folk & Ward (1957) and Methods of Moments (Tanner, 1995), among others; textural classifications and distribution of unconsolidated sediments are shown in histograms, bivariated plots and ternary diagrams of Shepard (1954) and Pejrup (1988).\cr
Versions prior to 2.0 supported only data input in logarithmic scale (phi intervals). Now rysgran can handle both logarithmic and geometric scale data (micrometers intervals).\cr
English and Portuguese languages are supported in outputs  }
\details{
\tabular{ll}{
Package: \tab rysgran\cr
Type: \tab Package\cr
Version: \tab 2.0\cr
Date: \tab 2012-03-10\cr
License: \tab GPL (>= 2.0)\cr
LazyLoad: \tab yes\cr
}
}
\author{
  Eliandro R. Gilbert (\email{eliandrogilbert@gmail.com})\cr
  Mauricio G. Camargo (\email{camargo.ufpr@gmail.com})\cr
  Leonardo Sandrini (\email{leonardosandrini@gmail.com})

Maintainer:   Eliandro R. Gilbert (\email{eliandrogilbert@gmail.com})
}
\references{
- Camargo, M. G. (2006) SysGran: um sistema de codigo aberto para analises granulometricas do sedimento. \emph{Revista Brasileira de Geociencias}, \bold{345}: 345--352.\cr

- Folk, R. L. and Ward W. C. (1957) Brazos river bar: A study in the significance of grain size parameters. \emph{Journal of Sed. Petrol.}, \bold{27}: 3--27.\cr

- McCammon, R. B. (1962) Efficiencies of percentile measurements for describing the mean size and sorting of sedimentary particles. \emph{Journal of Geology}, \bold{70}: 453--465.\cr

- Otto, G. H. (1939) A modified logarithmic probability paper for the interpretation of mechanical analysis of sediments. \emph{Journal os Sed. Petrol.}, \bold{9}: 62--76.\cr

- Pejrup, M. (1988) The triangular diagram used for classification of estuarine sediments: a new approach. in: \emph{Tide-influenced sedimentary environments and facies}. BOER, P.L. ; GELDER, A. & NIO, S.D. (Eds). D. Reidel Publishing Company. Holland.\cr 

- Shepard, F. P. (1954) Nomenclature based on sand-silt-clay ratios. \emph{Journal Sedimentary Petrology}, \bold{24}:151--158.\cr

- Tanner, W.F. (1995) \emph{Environmental clastic granulometry. Florida Geological Survey, Special Publication} \bold{40}. 142 pp.\cr

- Trask, P. D. (1930) Mechanical analysis of sediments by centrifuge. \emph{Economic Geology}, \bold{25}: 581--599.
}
\keyword{ package }
\seealso{
\code{\link{gran.stats}} , \code{\link{class.percent}} , \code{\link{rysgran.hist}} , \code{\link{rysgran.plot}} , \code{\link{rysgran.ternary}}
}
\examples{

library (rysgran)
data (camargo2001)
data(sed.phi)
data(sed.metric)

#grain size analysis using Folk & Ward with verbal classification
gran.stats (camargo2001, method="folk" , verbal=TRUE)


#grain size analysis using Method of Moments with verbal classification
gran.stats (sed.metric, method="moment" , verbal=TRUE)


#weight percentages
class.percent (camargo2001, mode="total")


#histograms
rysgran.hist (camargo2001)


#bivariated plot
rysgran.plot ("mean" , "sort" , data = camargo2001, method="folk", pch=19)


#ternary diagram of Shepard
percent <- class.percent(camargo2001, mode="total")
x<-percent[2:4]
rysgran.ternary  (x, method= "shepard", pch=19)
}
