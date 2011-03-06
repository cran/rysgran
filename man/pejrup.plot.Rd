\name{pejrup.plot}
\alias{pejrup.plot}
\title{Generates the Structure of Pejrup Ternary Diagram}
\description{  Generates the structure of Pejrup ternary diagram that may be used by \code{\link{rysgran.ternary}} function  }
\usage{
pejrup.plot(x = x, lang = lang, axis.labels = axis.labels,
    show.names = show.names, show.lines = show.lines,
    show.legend = show.legend, show.grid = show.grid,
    cex.axis = cex.axis, cex.names = cex.names,
    col.labels = col.labels, col.axis = col.axis,
    col.names = col.names, col.lines = col.lines,
    col.grid = col.grid, lty.grid = par("lty"))
}
\arguments{
  \item{x}{  a 3 columns matrix with percentages of Sand, Silt and Clay which should be passed by \code{\link{class.percent}} function. The sum of each row must be 100 or 1, otherwise there may be distortions in the position of the points  }
  \item{lang}{  language . Could be english ("en-US", "en-GR", "eng", "e"), or portuguese ("pt-BR", "pt-PT", "port", "p"). The default is "en-US"  }
  \item{axis.labels}{  vector of length 3 with the soil textures names. If NULL, the names are taken from the matrix of percentages. Default is NULL  }
  \item{show.names}{  logical. If TRUE the textural classes names will show up in the ternary diagram. Should be used with the argument \code{show.legend}. Default is TRUE  }
  \item{show.lines}{  logical. If TRUE the lines that separate the textural classes are displayed. Default is TRUE  }
  \item{show.legend}{  logical. If TRUE the legend of textural classes are displayed in the top left. Should be used with the argument \code{show.names}. Default is TRUE  }
  \item{show.grid}{  logical. If TRUE display grid lines in the ternary diagram. Default is FALSE  }
  \item{cex.axis}{  character expansion for axis labels. Default is "1"  }
  \item{cex.names}{  character size of  text of textural classes text which composes the ternary diagram. Default is "1"  }
  \item{col.labels}{  text color of \code{labels}. Default is "black"  }
  \item{col.axis}{  text color of axis labels. Default is "black"  }
  \item{col.names}{  text color of textural classes which composes the ternary diagram if the argument \code{show.names} is TRUE. Default is "gray"  }
  \item{col.lines}{  color of lines that separate the textural classes case the argument \code{show.lines} is TRUE. Default is "black"  }
  \item{col.grid}{  color of grid lines case the argument \code{show.grid} is TRUE. Default is "gray"  }
  \item{lty.grid}{  type of grid line case the argument \code{show.grid} is TRUE. Default is "3"  }
}
\details{  The arguments are passed by the \code{\link{rysgran.ternary}} function. To generate the Pejrup ternary diagram in the \code{\link{rysgran.ternary}} function, the user must set the 'method' argument to "pejrup"  }
\value{  a triangular plot which is passed to \code{\link{rysgran.ternary}} function  }
\references{
- Pejrup, M. (1988) The triangular diagram used for classification of estuarine sediments: a new approach. in: \emph{Tide-influenced sedimentary environments and facies}. BOER, P.L. ; GELDER, A. & NIO, S.D. (Eds). D. Reidel Publishing Company. Holland.
}
\author{
  Eliandro R. Gilbert (\email{eliandrogilbert@gmail.com})
}
\note{  pejrup.plot is based on plotrix package and depends on soiltexture package  }
\seealso{\code{\link{gran.stats}}, \code{\link{class.percent}}, \code{\link{rysgran.ternary}}, \code{\link{rysgran.hist}},\code{\link{rysgran.plot}}}
\examples{
#Pejrup diagram
library(rysgran)
data(camargo2001)
tab<-camargo2001
percent <- class.percent(tab, mode="total", empty.col=FALSE, lang='en-US')
rysgran.ternary  (x = percent[2:4], method = "pejrup")
}
\keyword{internal}