\name{rysgran.hist}
\alias{rysgran.hist}
\title{Histograms of Grain Size Data}
\description{  rysgran.hist generates histograms of weight percentage of phi classes for each grain size sample  }
\usage{
rysgran.hist(tab, subset = NULL, which = NULL, ordered = TRUE)
}
\arguments{
  \item{tab}{  a data matrix with grain size samples  }
  \item{subset}{  Vector whit factor to subset the histograms. Default is NULL  }
  \item{which}{  factor from \code{subset} object argument. Default is NULL  }
  \item{ordered}{  logical. If TRUE the panels order is on the order of row in \code{tab}, if FALSE the order is alphabetical. Default is TRUE  }
}
\details{  rysgran.hist is the only function in \code{\link{rysgran}} package which uses the package \code{lattice}. Users familiarized with lattice will have no problem using the function \code{\link{rysgran.hist}}. the particle size matrix used in data entry must contain the first line of phi classes (logarithmic scale), each following line should contain the weights of a sample. For further details on the structure of the input table see data example \code{camargo2001} included in this package  }
\value{  return multiples histograms  }
\author{
  Leonardo Sandrini (\email{leonardosandrini@gmail.com})\cr
  Eliandro R. Gilbert (\email{eliandrogilbert@gmail.com})
}
\seealso{
\code{\link{rysgran.plot}} , \code{\link{gran.stats}} , \code{\link{rysgran.ternary}} , \code{\link{class.percent}} , \code{\link{lattice}}
}
\examples{
#Example 1
#histograms ordered by as a table
library(rysgran)
data(camargo2001)
tab<-camargo2001
rysgran.hist(tab, ordered=TRUE)
#
#Example 2
#histograms ordered alphabetically
library(rysgran)
data(camargo2001)
tab<-camargo2001
rysgran.hist(tab, ordered=FALSE)
#
#Example 3 
#histograms separated by factors
library(rysgran)
data(camargo2001)
tab<-camargo2001
months<- rep(c("Jan","Fev","Mar","Abr","Mai"),each=7)
rysgran.hist(tab, ordered=TRUE , subset = months , which= "Jan")
#
#Example 4
#Histograms updated
library(rysgran)
data(camargo2001)
tab<-camargo2001
hist <- rysgran.hist(tab, ordered=TRUE)
hist
hist.up <- update(hist, aspect = .5,
    scales=list(x=list(cex=.7),y=list(cex=.7)),
    between= list(x = c(0.2), y = c(0.2)),
    ylab = "Frequency",
    xlab = "Phi",
    strip = strip.custom(bg = "lightblue"),
    col = "red",
    main="Histogram")
hist.up
}
