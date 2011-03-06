\name{gran.stats}
\alias{gran.stats}
\title{Statistical Analysis of Grain Size for Unconsolidated Sediments}
\description{  Calculates mean, median, sorting, skewness, kurtosis, fifth and sixth moments, and creates the verbal classification of the results. Uses the statistical methods of Trask (1930), Otto (1939), Folk & Ward (1957), McCammon(a) (1962), McCammon(b) (1962) and Method of Moments (TANNER, 1995)  }
\usage{
gran.stats(tab, method = "folk", verbal = FALSE, lang = "en-US")
}
\arguments{
  \item{tab}{  a data matrix with grain size samples  }
  \item{method}{  statistical analysis method. Could be \code{method="folk"} , \code{method="moment"} , \code{method="otto"} , \code{method="trask"} , \code{method="mcA"} and \code{method="mcB"}. Default is \code{method="folk"}  }
  \item{verbal}{  logical. If TRUE, columns will be added with verbal classification of statistical paramenters. Default is TRUE  }
  \item{lang}{  language . Could be english ("en-US", "en-GR", "eng", "e"), or portuguese ("pt-BR", "pt-PT", "port", "p"). The default is "en-US"  }
}
\details{  The particle size matrix used in data entry must contain the first line of phi classes (logarithmic scale), each following line should contain the weights of a sample. For further details on the structure of the input table see data example \code{camargo2001} included in this package  }
\value{  An array of variable number of dimensions, depending on the chosen arguments, with the statistical parameters for each sample. The values of this matrix should be used in \code{\link{rysgran.plot}} function, available in this package  }
\references{
- Folk, R. L. and Ward W. C. (1957) Brazos river bar: A study in the significance of grain size parameters. \emph{Journal of Sed. Petrol.}, \bold{27}: 3--27.\cr

- McCammon, R. B. (1962) Efficiencies of percentile measurements for describing the mean size and sorting of sedimentary particles. \emph{Journal of Geology}, \bold{70}: 453--465.\cr

- Otto, G. H. (1939) A modified logarithmic probability paper for the interpretation of mechanical analysis of sediments. \emph{Journal os Sed. Petrol.}, \bold{9}: 62--76.\cr

- Tanner, W.F. (1995) \emph{Environmental clastic granulometry. Florida Geological Survey, Special Publication} \bold{40}. 142 pp.\cr

- Trask, P. D. (1930) Mechanical analysis of sediments by centrifuge. \emph{Economic Geology}, \bold{25}: 581--599.
}
\author{
  Eliandro R. Gilbert (\email{eliandrogilbert@gmail.com})\cr
  Mauricio G. Camargo (\email{camargo.ufpr@gmail.com})
}
\seealso{\code{\link{rysgran.plot}} , \code{\link{rysgran.ternary}} , \code{\link{rysgran.hist}} , \code{\link{class.percent}}}
\examples{
#Example
library (rysgran)
data (camargo2001)
tab <- camargo2001
#
#Folk & Ward
gran.stats(tab , method = "folk" , verbal = FALSE, lang="en-US")
#
#Folk & Ward with verbal classification
gran.stats (tab , method = "folk" , verbal = TRUE, lang="en-US")
#
#Folk & Ward in portuguese
gran.stats (tab , method = "folk" , verbal = TRUE, lang="pt-BR")
#
#Method of Moments with verbal classification
gran.stats (tab , method = "moment" , verbal = TRUE)
}
