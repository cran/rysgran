\name{rysgran.plot}
\alias{rysgran.plot}
\title{Generates a Bivariated Plot}
\description{  rysgran.plot generates a bivariated plot of grain size statistical parameters passed by \code{\link{gran.stats}} function  }
\usage{
rysgran.plot(x = NULL, y = NULL, data = NULL, output = "phi", lang = "en-US", 
    method= "folk", main = NULL, xlab = NULL, ylab = NULL, 
    show.labels = FALSE, label.points = FALSE, pch = 1, 
    col.labels = "black", labels = NULL, col = "black", 
    cex.labels = 1, cex.points=1,
    pos = 1, z.cex.range = NULL, z = NULL, ...)
}
\arguments{
  \item{x}{  the x coordinates of points in the bivariate plot. The value should be presented in quotation marks. Abbreviations are accepted in upper and lower case as well as the full name of the variable, independent of the chosen language. Examples of accepted values are: "mean", "Mean", "Sorting", "sorting", "sort", "Sort", "Skewness", "skewness", "Skew", "skew", "Kurtosis", "kurtosis", "Kurt", "kurt". The same logic applies to the Portuguese language, including the accent  }
  \item{y}{  the y coordinates of points in the bivariated plot. Has the same prerequisites for the argument \code{x}  }
  \item{data}{  a data matrix with grain size samples similar to the \code{\link{camargo2001}} matrix in which each column contains the weight (in grams) of each mesh size (in phi or micrometers) and the lines represent the samples  }
  \item{output}{  output result scale. Could be \code{output="phi"} for logarithmic scale or \code{output="metric"} for geometric scale. The default is "phi" }
  \item{lang}{  language . Should be English ("en-US", "en-GR", "eng", "e"), or Portuguese ("pt-BR", "pt-PT", "port", "p"). The default is "en-US"  }
  \item{method}{  statistical analysis method. Could be \code{method="folk"} (Folk & Ward, 1957), \code{method="moment"} (Tanner, 1995), \code{method="otto"} (Otto, 1939), \code{method="trask"} (Trask, 1930), \code{method="mcA"} and \code{method="mcB"} (McCammon, 1962). Default is \code{method="folk"}  }
  \item{main}{  an overall title for the plot. If NULL it will be generated an automatic title according to language chosen. Default is NULL  }
  \item{xlab}{  a title for the x axis. If NULL it will be generated an automatic title according to language chosen. Default is NULL  }
  \item{ylab}{  a title for the y axis. If NULL it will be generated an automatic title according to language chosen. Default is NULL  }
  \item{show.labels}{  logical. If TRUE the points are replaced by text passed by \code{labels} argument. Default is FALSE  }
  \item{label.points}{  logical. if TRUE text is added, provided by the argument \code{labels}, with the points on the graph. the text position to the point should be changed by argument \code{pos}. \code{labels.points} will be automatically FALSE if \code{show.labels} is TRUE. The default is FALSE  }
  \item{pch}{  Either an integer specifying a symbol or a single character to be used as the default in plotting points. Default is "1"  }
  \item{col.labels}{  color of text if the arguments \code{show.label}, \code{label.points} or \code{z} are defined. Default is "black"  }
  \item{labels}{  a character vector or expression specifying the text to be written. If NULL \code{labels} will be the row names of the \code{data} argument. Default is NULL  }
  \item{col}{  symbol color used in \code{pch} argument. Default is "black"  }
  \item{cex.labels}{  character size of text provided by the argument \code{labels} added with the point (or replacing it) in case \code{show.label}, \code{label.points} or \code{z} arguments are defined. Default is "1"  }
  \item{cex.points}{  character size of points provided by the argument \code{pch}. Default is "1"  }
  \item{pos}{  a position specifier for the text. Values of 1, 2, 3 and 4, respectively indicate positions below, to the left of, above and to the right of the specified coordinates. Default is "1"  }
  \item{z.cex.range}{  Vector of length 2. Minimum and maximum 'cex' of the bubbles plotted if 'z' is not NULL. Replace the argument \code{cex.points}. Default is "(1,3)"  }
  \item{z}{  vector with the same length of \code{x} and \code{y} whose value must be used to define the points expansion factor and color (bubble plot). If NULL, a simple plot is drawn (no 'bubbles'). Default is "NULL"  }
  \item{\dots}{  further graphical parameters  }
}
\details{  The data matrix provided to \code{data} argument should be similar to the \code{\link{camargo2001}} matrix in which each column contains the weight (in grams) of each mesh size (in phi or micrometers) and the lines represent the samples. \code{\link{rysgran.plot}} uses the \code{\link{gran.stats}} function to calculate grain size statistical parameters according to the analysis method chosen by \code{method} argument. When \code{z} argument is used to draw bubble plots the \code{\link{legend.bubbles}} function should be used to draw the legend accordingly  }
\value{  return a bivariated plot  }
\references{
- Folk, R. L. and Ward W. C. (1957) Brazos river bar: A study in the significance of grain size parameters. \emph{Journal of Sed. Petrol.}, \bold{27}: 3--27.\cr

- McCammon, R. B. (1962) Efficiencies of percentile measurements for describing the mean size and sorting of sedimentary particles. \emph{Journal of Geology}, \bold{70}: 453--465.\cr

- Otto, G. H. (1939) A modified logarithmic probability paper for the interpretation of mechanical analysis of sediments. \emph{Journal os Sed. Petrol.}, \bold{9}: 62--76.\cr

- Tanner, W.F. (1995) \emph{Environmental clastic granulometry. Florida Geological Survey, Special Publication} \bold{40}. 142 pp.\cr

- Trask, P. D. (1930) Mechanical analysis of sediments by centrifuge. \emph{Economic Geology}, \bold{25}: 581--599.
}
\author{
  Eliandro R. Gilbert (\email{eliandrogilbert@gmail.com})
}
\note{  rysgran.plot depends on the package 'soiltexture'  }
\seealso{\code{\link{gran.stats}}, \code{\link{class.percent}}, \code{\link{rysgran.ternary}}, \code{\link{rysgran.hist}}, \code{\link{legend.bubbles}}}
\examples{

library(rysgran)
data(camargo2001)
data(sed.phi)

# Plot Mean and Sorting

rysgran.plot ("mean", "sort", data=camargo2001, output="phi", method="folk")


# Using show.labels

rysgran.plot("mean" , "sort" , data=camargo2001 , method="folk",
	show.labels = TRUE,	labels = NULL)


# Skewness and Kurtosis with label.points

rysgran.plot ("skew" , "kurt" , data=camargo2001, output="phi",
	method="folk", show.labels = FALSE, labels = NULL,
	label.points = TRUE, pch = 19, col.labels = "black",
	col = "blue", cex.labels = 1,	cex.points = 1, pos=1)


# Mean and Sorting with Kurtosis as bubbles
# Calculating the grain size statistics
rys <- gran.stats(camargo2001, method="folk")

# Plotting
rysgran.plot ("mean" , "sort" , data=camargo2001, method="folk", pch = 21, 
	col = "red", z=rys$Kurtosis, z.cex.range=c(1,3),bg="red")

# Plotting the legend
legend.bubbles ("bottomright", z=rys$Kurtosis , nleg=3, pch=21, col="black", 
	z.cex.range=c(1,3), x.intersp=1.3, y.intersp=1.3, digits=1, title="Kurtosis")


# Mean and Sorting with Skewness as bubbles for different environments
# Calculating the grain size statistics
rys <- gran.stats(sed.phi, method="folk")
env<- as.factor(rep(c("River","Tidal Flat","Subtidal","Beach"),each=10))

# Plotting
rysgran.plot ("mean" , "sort" , data=sed.phi, method="folk", pch = 19, 
	col = c("red","blue","black","brown")[env], z=rys$Skewness, z.cex.range=c(1,3))

# Plotting the legends
legend.bubbles ("bottomright", z=rys$Skewness , nleg=3, pch=21, col="black", 
	z.cex.range=c(1,3), x.intersp=1.3, y.intersp=1.3, digits=1, title="Skewness")

legend ("bottomleft", c("Beach","River","Subtidal","Tidal Flat"),
	pch=15, col=c("red","blue","black","brown"))
}