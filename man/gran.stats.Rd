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

Example of particle size matrix with classes in logarithmic scale (phi units). Note that the columns names (V2, V3, V4, V5, ...) are automatically created by the R when any headerless dataset is imported.
\tabular{lllllllllllllllllll}{
row names\tab V2\tab V3\tab V4\tab V5\tab V6\tab V7\tab V8\tab V9\tab V10\tab V11\tab V12\tab V13\cr
Samples\tab -1.5\tab -1.0\tab -0.5\tab 0.0\tab 0.5\tab 1.0\tab 1.5\tab 2.0\tab 2.5\tab 3.0\tab 3.5\tab 4.0\cr
A\tab 0.0\tab 0.0\tab 0.0\tab 0.02\tab 0.07\tab 0.10\tab 0.18\tab 0.27\tab 0.58\tab 5.08\tab 11.18\tab 1.29\cr
B\tab 0.0\tab 0.0\tab 0.0\tab 0.00\tab 0.00\tab 0.00\tab 0.00\tab 0.05\tab 0.59\tab 12.98\tab 26.60\tab 2.90\cr
}

Example of particle size matrix with classes in geometric scale (micrometers). Note that the columns names (V2, V3, V4, V5, ...) are automatically created by the R when any headerless dataset is imported.
\tabular{lllllllllllllllllll}{
row names\tab V2\tab V3\tab V4\tab V5\tab V6\tab V7\tab V8\tab V9\tab V10\tab V11\tab V12\tab V13\cr
Samples\tab 2828\tab 2000\tab 1414\tab 1000\tab 707\tab 500\tab 354\tab 250\tab 177\tab 125\tab 88\tab 63\cr
A\tab 0.0\tab 0.0\tab 0.0\tab 0.02\tab 0.07\tab 0.10\tab 0.18\tab 0.27\tab 0.58\tab 5.08\tab 11.18\tab 1.29\cr
B\tab 0.0\tab 0.0\tab 0.0\tab 0.00\tab 0.00\tab 0.00\tab 0.00\tab 0.05\tab 0.59\tab 12.98\tab 26.60\tab 2.90\cr
}

The grain size scale adopted in this package is those used by Udden (1914) and Wentworth (1922).
\tabular{lll}{
\bold{phi}\tab \bold{micrometers}\tab \bold{Verbal Classification}\cr
< -8\tab >256000\tab Boulder\cr
-8 to -6\tab 64000 to 256000\tab Cobble\cr
-6 to -2\tab 4000 to 64000\tab Pebble\cr
-2 to -1\tab 2000 to 4000\tab Granules\cr
-1 to 0\tab 1000 to 2000\tab Very coarse sand\cr
0 to 1\tab 500 to 1000\tab Coarse sand\cr
1 to 2\tab 250 to 500\tab Medium sand\cr
2 to 3\tab 125 to 250\tab Fine sand\cr
3 to 4\tab 63 to 125\tab Very fine sand\cr
4 to 5\tab 31 to 63\tab Coarse silt\cr
5 to 6\tab 16 to 31\tab Medium silt\cr
6 to 7\tab 8 to 16\tab Fine silt\cr
7 to 8\tab 4 to 8\tab Very fine silt\cr
> 8\tab < 4\tab Clay\cr
}

If \code{method} = "moment" the sorting, skewness and kurtosis is calculated by the method of moments as described by Tanner (1995) and the descriptive terminology is given  according to the output scale chosen by the user (geometric or logarithmic), as described bellow.
\tabular{lllll}{
\bold{Sorting} (Geometric)\tab \tab \tab \bold{Sorting} (Logarithmic)\tab \cr
Very well sorted\tab < 1.27\tab \tab Very well sorted\tab < 0.35\cr
Well sorted\tab 1.27 to 1.41\tab \tab Well sorted\tab 0.35 to 0.50\cr
Moderately well sorted\tab 1.41 to 1.62\tab \tab Moderately well sorted\tab 0.50 to 0.70\cr
Moderately sorted\tab 1.62 to 2.00\tab \tab Moderately sorted\tab 0.70 to 1.00\cr
Poorly sorted\tab 2.00 to 4.00\tab \tab Poorly sorted\tab 1.00 to 2.00\cr
Very poorly sorted\tab 4.00 to 16.00\tab \tab Very poorly sorted\tab 2.00 to 4.00\cr
Extremely poorly sorted\tab > 16.00\tab \tab Extremely poorly sorted\tab > 4.00\cr
\tab \tab \tab \tab \cr
\bold{Skewness} (Geometric)\tab \tab \tab \bold{Skewness} (Logarithmic)\tab \cr
Very positive\tab < -1.30\tab \tab Very positive\tab > 1.30\cr
Positive\tab -1.30 to -0.43\tab \tab Positive\tab 0.43 to 1.30\cr
Approximately symmetrical\tab -0.43 to 0.43\tab \tab Approximately symmetrical\tab -0.43 to 0.43\cr
Negative\tab 0.43 to 1.30\tab \tab Negative\tab -0.43 to - 1.30\cr
Very negative\tab > 1.30\tab \tab Very negative\tab < -1.30\cr
\tab \tab \tab \tab \cr
\bold{Kurtosis} (Geometric)\tab \tab \tab \bold{Kurtosis} (Logarithmic)\tab \cr
Very platykurtic\tab < 1.70\tab \tab Very platykurtic\tab < 1.70\cr
Platykurtic\tab 1.70 to 2.55\tab \tab Platykurtic\tab 1.70 to 2.55\cr
Mesokurtic\tab 2.55 to 3.70\tab \tab Mesokurtic\tab 2.55 to 3.70\cr
Leptokurtic\tab 3.70 to 7.40\tab \tab Leptokurtic\tab 3.70 to 7.40\cr
Very leptokurtic\tab > 7.40\tab \tab Very leptokurtic\tab > 7.40
}

If \code{method} = "folk", "otto", "trask", "mcA" or "mcB" the sorting, skewness and kurtosis is calculated as described by Folk & Ward (1957), Otto (1939), Trask (1930) or McCammon (1962), respectively. The descriptive terminology is given  according to the output scale chosen by the user (geometric or logarithmic), as described bellow.
\tabular{lllll}{
\bold{Sorting} (Geometric)\tab \tab \tab \bold{Sorting} (Logarithmic)\tab \cr
Very well sorted\tab < 1.27\tab \tab Very well sorted\tab < 0.35\cr
Well sorted\tab 1.27 to 1.41\tab \tab Well sorted\tab 0.35 to 0.50\cr
Moderately well sorted\tab 1.41 to 1.62\tab \tab Moderately well sorted\tab 0.50 to 0.70\cr
Moderately sorted\tab 1.62 to 2.00\tab \tab Moderately sorted\tab 0.70 to 1.00\cr
Poorly sorted\tab 2.00 to 4.00\tab \tab Poorly sorted\tab 1.00 to 2.00\cr
Very poorly sorted\tab 4.00 to 16.00\tab \tab Very poorly sorted\tab 2.00 to 4.00\cr
Extremely poorly sorted\tab > 16.00\tab \tab Extremely poorly sorted\tab > 4.00\cr
\tab \tab \tab \tab \cr
\bold{Skewness} (Geometric)\tab \tab \tab \bold{Skewness} (Logarithmic)\tab \cr
Very positive\tab -0.3 to -1.0\tab \tab Very positive\tab 0.3 to 1.0\cr
Positive\tab -0.1 to -0.3\tab \tab Positive\tab 0.1 to 0.3\cr
Approximately symmetrical\tab -0.1 to 0.1\tab \tab Approximately symmetrical\tab 0.1 to -0.1\cr
Negative\tab 0.1 to 0.3\tab \tab Negative\tab -0.1 to -0.3\cr
Very negative\tab 0.3 to 1.0\tab \tab Very negative\tab -0.3 to -1.0\cr
\tab \tab \tab \tab \cr
\bold{Kurtosis} (Geometric)\tab \tab \tab \bold{Kurtosis} (Logarithmic)\tab \cr
Very platykurtic\tab < 0.67\tab \tab Very platykurtic\tab < 0.67\cr
Platykurtic\tab 0.67 to 0.90\tab \tab Platykurtic\tab 0.67 to 0.90\cr
Mesokurtic\tab 0.90 to 1.11\tab \tab Mesokurtic\tab 0.90 to 1.11\cr
Leptokurtic\tab 1.11 to 1.50\tab \tab Leptokurtic\tab 1.11 to 1.50\cr
Very leptokurtic\tab 1.50 to 3.00\tab \tab Very leptokurtic\tab 1.50 to 3.00\cr
Extremely leptokurtic\tab > 3.00\tab \tab Extremely leptokurtic\tab > 3.00
}

\code{gran.stats} automatically detects which scale of grain size is being used and converts the results according to the \code{output} argument\cr
For further details on the structure of the input table see data examples \code{camargo2001}, \code{sed.phi} and \code{sed.metric} included in this package  }
\value{  An array of variable number of dimensions, depending on the chosen arguments, with the statistical parameters for each sample. The values of this matrix should be used in \code{\link{rysgran.plot}} function, available in this package  }
\references{
- Folk, R. L. and Ward W. C. (1957) Brazos river bar: A study in the significance of grain size parameters. \emph{Journal of Sed. Petrol.}, \bold{27}: 3--27.\cr

- McCammon, R. B. (1962) Efficiencies of percentile measurements for describing the mean size and sorting of sedimentary particles. \emph{Journal of Geology}, \bold{70}: 453--465.\cr

- Otto, G. H. (1939) A modified logarithmic probability paper for the interpretation of mechanical analysis of sediments. \emph{Journal os Sed. Petrol.}, \bold{9}: 62--76.\cr

- Tanner, W.F. (1995) \emph{Environmental clastic granulometry. Florida Geological Survey, Special Publication} \bold{40}. 142 pp.\cr

- Trask, P. D. (1930) Mechanical analysis of sediments by centrifuge. \emph{Economic Geology}, \bold{25}: 581--599.\cr

- Udden J. A. (1914) Mechanical composition of clastic sediments. \emph{Bulletin of the Geological Society of America}, \bold{25}: 655--744.\cr

- Wentworth, C. K. (1922) A scale of grade and class terms for clastic sediments. \emph{Journal of Geology}, \bold{30}: 377--392.
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
