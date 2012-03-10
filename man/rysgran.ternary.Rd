\name{rysgran.ternary}
\alias{rysgran.ternary}
\title{Generates the Ternary Diagrams of Shepard and Pejrup}
\description{  Uses data from percentages of soil textures to generate ternary diagrams of Shepard (Shepard, 1954) and Pejrup (Pejrup, 1988)  }
\usage{
rysgran.ternary(x = NULL, method = "shepard", lang = "en-US", 
    main= NULL, z= NULL, show.labels=FALSE, label.points=FALSE,
    labels = NULL, axis.labels = NULL, show.names = TRUE,
    show.lines = TRUE, show.legend = TRUE, show.grid = FALSE,
    z.cex.range= NULL, cex.labels= 1, cex.points=1, cex.axis=1,
    cex.names = 0.8, col.names = "gray2", col = "black",
    col.labels= "black", col.axis= "black", col.lines= "black",
    col.grid = "gray", pos = 1, pch = 1, lty.grid = 3, ...)
}
\arguments{
  \item{x}{  a 3 columns matrix with percentages of Sand, Silt and Clay which should be passed by \code{\link{class.percent}} function. The sum of each row must be 100 or 1, otherwise there may be distortions in the position of the points  }
  \item{method}{  shape of ternary diagram to be created. Should be "shepard" or "pejrup". Default is "shepard"  }
  \item{lang}{  language . Should be English ("en-US", "en-GR", "eng", "e"), or Portuguese ("pt-BR", "pt-PT", "port", "p"). The default is "en-US"  }
  \item{main}{  an overall title for the plot. If NULL it will be generated an automatic title according to language chosen. Default is NULL  }
  \item{z}{  vector with the same length of \code{x} and \code{y} whose value must be used to define the points expansion factor and color (bubble plot). If NULL, a simple plot is drawn (no 'bubbles'). Default is "NULL"  }
  \item{show.labels}{  logical. If TRUE the points are replaced by text passed by \code{labels} argument. Default is FALSE  }
  \item{label.points}{  logical. if TRUE text is added, provided by the argument \code{labels}, with the points on the graph. the text position to the point should be changed by argument \code{pos}. \code{labels.points} will be automatically FALSE if \code{show.labels} is TRUE. The default is FALSE  }
  \item{labels}{  a character vector or expression specifying the text to be written. If NULL \code{labels} will be the row names of the \code{data} argument. Default is NULL  }
  \item{axis.labels}{  vector of length 3 with the soil textures names. If NULL the names are taken from the matrix of percentages. Default is NULL  }
  \item{show.names}{  logical. If TRUE the textural classes names will show up in the ternary diagram according with the \code{method} argument. Should be used with the  argument \code{show.legend}. Default is TRUE  }
  \item{show.lines}{  logical. If TRUE the lines that separate the textural classes are displayed. Default is TRUE  }
  \item{show.legend}{  logical. If TRUE the legend of textural classes are displayed in the top left according with the argument \code{method}. Should be used with the argument \code{show.names}. Default is TRUE  }
  \item{show.grid}{  logical. If TRUE display grid lines in the ternary diagram. Default is FALSE  }
  \item{z.cex.range}{  Vector of length 2. Minimum and maximum 'cex' of the bubbles plotted if 'z' is not NULL. Replace the argument \code{cex.points}. Default is "(1,3)"  }
  \item{cex.labels}{  character size of text provided by the argument \code{labels} added with the point (or replacing it) in case \code{show.label}, \code{label.points} or \code{z} arguments are defined. Default is "1"  }
  \item{cex.points}{  character size of points provided by the argument \code{pch}. Default is "1"  }
  \item{cex.axis}{  character expansion for axis labels. Default is "1"  }
  \item{cex.names}{  character size of  text of textural classes text which composes the ternary diagram according to \code{method} argument. Default is "1"  }
  \item{col.names}{  text color of textural classes which composes the ternary diagram if the argument \code{show.names} is TRUE. Default is "gray"  }
  \item{col}{  symbol color used in \code{pch} argument if the argument \code{show.labels} is FALSE. Default is "black"  }
  \item{col.labels}{  text color of \code{labels} if the arguments \code{show.label}, \code{label.points} or \code{z} are defined. Default is "black"  }
  \item{col.axis}{  text color of axis labels. Default is "black"  }
  \item{col.lines}{  color of lines that separate the textural classes case the argument \code{show.lines} is TRUE. Default is "black"  }
  \item{col.grid}{  color of grid lines case the argument \code{show.grid} is TRUE. Default is "gray"  }
  \item{pos}{  a position specifier for the text. Values of 1, 2, 3 and 4, respectively, indicate positions below, to the left of, above and to the right of the specified coordinates. Default is "1"  }
  \item{pch}{  either an integer specifying a symbol or a single character to be used as the default in plotting points. Default is "1"  }
  \item{lty.grid}{  type of grid line case the argument \code{show.grid} is TRUE. Default is "3"  }
  \item{\dots}{  further graphical parameters  }
}
\details{  When \code{z} argument is used to draw bubble plots the \code{\link{legend.bubbles}} function should be used to draw the legend accordingly  }
\value{  Display a triangular plot  }
\references{
- Pejrup, M. (1988) The triangular diagram used for classification of estuarine sediments: a new approach. in: \emph{Tide-influenced sedimentary environments and facies}. BOER, P.L. ; GELDER, A. & NIO, S.D. (Eds). D. Reidel Publishing Company. Holland.\cr 

- Shepard, F. P. (1954) Nomenclature based on sand-silt-clay ratios. \emph{Journal Sedimentary Petrology}, \bold{24}:151--158.
}
\author{
  Eliandro R. Gilbert (\email{eliandrogilbert@gmail.com})
}
\note{  rysgran.ternary can only properly display one or more sets of three proportions (sand, silt and clay) that each sum to 1 (or percentages that sum to 100), otherwise they will not plot properly and the user will be notified. Samples with considerable amount of gravel are not properly plotted. rysgran.ternary is based on plotrix package and depends on soiltexture package  }
\seealso{\code{\link{gran.stats}} , \code{\link{class.percent}} , \code{\link{rysgran.ternary}} , \code{\link{rysgran.hist}}, \code{\link{legend.bubbles}}}
\examples{

library(rysgran)
data(camargo2001)
data(sed.phi)

#Shepard diagram
percent <- class.percent(camargo2001, mode="total")
x<-percent[2:4] #choosing only the 'sand', 'silt' and 'clay' columns
rysgran.ternary  (x, method = "shepard")


#Pejrup diagram
percent <- class.percent(camargo2001, mode="total")
x<-percent[2:4] #choosing only the 'sand', 'silt' and 'clay' columns
rysgran.ternary  (x, method = "pejrup")


#Shepard diagram with show.labels
percent <- class.percent(camargo2001, mode="total")
x<-percent[2:4]
rysgran.ternary (x, method="shepard", show.labels = TRUE)


#Pejrup diagram with Sorting as bubbles for different environments
#Calculating the percentage of weight in each textural class
percent <- class.percent(sed.phi, mode="total")
x<-percent[2:4]

# Calculating the grain size statistics
rys <- gran.stats(sed.phi , method="folk")
env<- as.factor(rep(c("River","Tidal Flat","Subtidal","Beach"),each=10))

# Plotting
rysgran.ternary (x, method = "pejrup",
	z = rys$Sorting, z.cex.range = c(0.5,3), 
	col = c("red","blue","black","brown")[env], pch = 19)

# Plotting the legends
legend.bubbles ("right", z=rys$Sorting , nleg=4, pch=21, col="black",
	cex=1, z.cex.range=c(0.5,3), x.intersp=1.2, y.intersp=1.2,
	digits=1, title="Sorting")

legend ("topright", c("Beach","River","Subtidal","Tidal Flat"),
	pch=15, col=c("red","blue","black","brown"))

}
