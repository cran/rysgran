\name{legend.bubbles}
\alias{legend.bubbles}
\title{Add Legends to Bubble Plots}
\description{  This functions can be used to add legends to bubble plots  }
\usage{
legend.bubbles (x, y = NULL, z = NULL, nleg = NULL, digits = NULL, 
  pch, z.cex.range = NULL, x.intersp = 1, y.intersp = 1, bg="white",...)
}
\arguments{
  \item{x, y}{  the x and y co-ordinates to be used to position the legend. They can be specified by keyword or in any way which is accepted by xy.coords. The location may also be specified by setting x to a single keyword from the list "bottomright", "bottom", "bottomleft", "left", "topleft", "top", "topright", "right" and "center". This places the legend on the inside of the plot frame at the given location. Partial argument matching is used. The optional inset argument specifies how far the legend is inset from the plot margins. If a single value is given, it is used for both margins; if two values are given, the first is used for x- distance, the second for y-distance  }
  \item{z}{  a numeric vector whose values were used to define the points expansion factor (bubbles) of the plot  }
  \item{nleg}{  integer indicating the number of values (quantiles) to be drawn in the legend. The default is "3" which will return the minimum, median and maximum values of \code{z} (quantiles 0, 50 and 100 percent, respectively)  }
  \item{digits}{  integer indicating the number of decimal places to be used on legend. Default is "1"  }
  \item{pch}{  the plotting symbols appearing in the legend, either as vector of 1-character strings, or one (multi character) string. Must be the same used on plotting  }
  \item{z.cex.range}{  vector of length 2. Minimum and maximum 'cex' of the bubbles plotted. Replace the argument \code{pt.cex}. Must be the same used on plotting  }
  \item{x.intersp}{  character interspacing factor for horizontal (x) spacing  }
  \item{y.intersp}{  the same for vertical (y) line distances  }
  \item{bg}{  the background color for the legend box  }
  \item{\dots}{  further graphical parameters. See legend() for additional options  }
}
\details{  This is a "wrapper" function for legend() that adds bubbles - legend() should be consulted for details.\code{\link{legend.bubbles}} was designed to plot legends to bubbles for the \code{\link{rysgran.plot}} and \code{\link{rysgran.ternary}} functions. For this, the values of \code{z}, \code{z.cex.range} and \code{pch} should be the same used to plot the graph and \code{\link{legend.bubbles}}. To avoid problems with overlapping symbols and characters due to the different sizes of \code{pch}, arguments \code{x.intersp}, \code{y.intersp} and \code{cex} should be adjusted accordingly. Note that the option 'bty="n"' from legend is hardcoded to avoid overlapping  }
\author{
  Eliandro R. Gilbert (\email{eliandrogilbert@gmail.com})
}
\note{  \code{\link{legend.bubbles}} depends on the package 'soiltexture'  }
\seealso{\code{\link{rysgran.plot}}, \code{\link{rysgran.ternary}}}
\examples{

#Shepard diagram with Sorting as bubbles
#Calculating the percentage of weight in each textural class
library(rysgran)
data(camargo2001)

percent <- class.percent(camargo2001, mode="total")

#Calculating the grain size statistics

rys <- gran.stats(camargo2001 , method="folk")

#Plotting

rysgran.ternary (x = percent[2:4], method = "shepard",
  z = rys$Sorting, z.cex.range = c(0.5,4), col = "blue", pch = 20)

legend.bubbles ("topright", z=rys$Sorting , nleg=4, pch=20, col="blue",cex=1, 
  z.cex.range=c(0.5,4), x.intersp=1.2, y.intersp=1.2,digits=1, title="Sorting")


#Bivariated Plot
#Mean and Sorting with Kurtosis as bubbles
library(rysgran)
data(camargo2001)

#Calculating the grain size statistics

rys <- gran.stats(camargo2001 , method="folk")

#Ploting

rysgran.plot ("mean" , "sort" , data=camargo2001, method="folk", pch = 21,
  col = "red", z=rys$Kurtosis, z.cex.range=c(1,5),bg="red")

legend.bubbles ("bottomright", z=rys$Kurtosis , nleg=3, pch=21, col="black", 
  z.cex.range=c(1,5), x.intersp=1.3, y.intersp=1.6, digits=1, title="Kurtosis")

}