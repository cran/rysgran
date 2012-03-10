\name{gran.stats}
\alias{gran.stats}
\title{Statistical Analysis of Grain Size for Unconsolidated Sediments}
\description{  Calculates mean, median, sorting, skewness, kurtosis, fifth and sixth moments, and creates the verbal classification of the results. Uses the statistical methods of Trask (1930), Otto (1939), Folk & Ward (1957), McCammon(a) (1962), McCammon(b) (1962) and Method of Moments (TANNER, 1995)\cr
Data input can be in logarithmic (phi) or geometric (micrometers) scale. Regardless the input data, the user can choose the output result scale through \code{output} argument }
\usage{
gran.stats(data, output = "phi", method = "folk", verbal = FALSE, lang = "en-US")
}
\arguments{
  \item{data}{  a data matrix with grain size samples  }
  \item{output}{  output result scale. Could be \code{output="phi"} for logarithmic scale or \code{output="metric"} for geometric scale. The default is "phi" }
  \item{method}{  statistical analysis method. Could be \code{method="folk"} , \code{method="moment"} , \code{method="otto"} , \code{method="trask"} , \code{method="mcA"} and \code{method="mcB"}. Default is \code{method="folk"}  }
  \item{verbal}{  logical. If TRUE, columns will be added with verbal classification of statistical paramenters. Default is TRUE  }
  \item{lang}{  language . Could be english ("en-US", "en-GR", "eng", "e"), or portuguese ("pt-BR", "pt-PT", "port", "p"). The default is "en-US"  }
}
\details{  The particle size matrix used in data entry must contain the first line of grain size classes (logarithmic or geometric scale), each following line should contain the weights of a sample. No header should be used\cr

Example of particle size matrix with classes in logarithmic scale\cr
\tabular{lllllllllllllllllll}{
row names\tab V2\tab V3\tab V4\tab V5\tab V6\tab V7\tab V8\tab V9\tab V10\tab V11\tab V12\tab V13\cr
Samples\tab -1.5\tab -1.0\tab -0.5\tab 0.0\tab 0.5\tab 1.0\tab 1.5\tab 2.0\tab 2.5\tab 3.0\tab 3.5\tab 4.0\cr
A\tab 0.0\tab 0.0\tab 0.0\tab 0.02\tab 0.07\tab 0.10\tab 0.18\tab 0.27\tab 0.58\tab 5.08\tab 11.18\tab 1.29\cr
B\tab 0.0\tab 0.0\tab 0.0\tab 0.00\tab 0.00\tab 0.00\tab 0.00\tab 0.05\tab 0.59\tab 12.98\tab 26.60\tab 2.90\cr
}

Example of particle size matrix with classes in geometric scale (micrometers)\cr
\tabular{lllllllllllllllllll}{
row names\tab V2\tab V3\tab V4\tab V5\tab V6\tab V7\tab V8\tab V9\tab V10\tab V11\tab V12\tab V13\cr
Samples\tab 2828\tab 2000\tab 1414\tab 1000\tab 707\tab 500\tab 354\tab 250\tab 177\tab 125\tab 88\tab 63\cr
A\tab 0.0\tab 0.0\tab 0.0\tab 0.02\tab 0.07\tab 0.10\tab 0.18\tab 0.27\tab 0.58\tab 5.08\tab 11.18\tab 1.29\cr
B\tab 0.0\tab 0.0\tab 0.0\tab 0.00\tab 0.00\tab 0.00\tab 0.00\tab 0.05\tab 0.59\tab 12.98\tab 26.60\tab 2.90\cr
}

\code{gran.stats} automatically detects which scale of grain size is being used and converts the results according to the \code{output} argument\cr
For further details on the structure of the input table see data examples \code{camargo2001}, \code{sed.phi} and \code{sed.metric} included in this package  }
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

library (rysgran)
data (camargo2001)
data (sed.metric)

#Folk & Ward

gran.stats(camargo2001, output="phi", method = "folk" , verbal = FALSE)


#Folk & Ward with verbal classification

gran.stats (camargo2001, output="phi", method = "folk" , verbal = TRUE)


#Folk & Ward with geometric data and verbal classification

gran.stats (sed.metric, output="phi", method = "folk" , verbal = TRUE)


#Method of Moments with geometric data and verbal classification

gran.stats (sed.metric, output="phi", method = "moment" , verbal = TRUE)

}
