\name{rysgran.hist}
\alias{rysgran.hist}
\title{Histograms of Grain Size Data}
\description{  rysgran.hist generates histograms of weight percentage of phi classes for each grain size sample  }
\usage{
rysgran.hist(data, subset = NULL, which = NULL, ordered = TRUE)
}
\arguments{
  \item{data}{  a data matrix with grain size samples. Must contain the first line of grain size classes (logarithmic or geometric scale), each following line should contain the weights of a sample. No header should be used  }
  \item{subset}{  Vector whit factor to subset the histograms. Default is NULL  }
  \item{which}{  factor from \code{subset} object argument. Default is NULL  }
  \item{ordered}{  logical. If TRUE the panels order is on the order of row in \code{tab}, if FALSE the order is alphabetical. Default is TRUE  }
}
\details{  rysgran.hist is the only function in \code{\link{rysgran}} package which uses the package \code{lattice}. Users familiarized with lattice will have no problem using this function  }
\value{  return multiples histograms  }
\author{
  Leonardo Sandrini (\email{leonardosandrini@gmail.com})\cr
  Eliandro R. Gilbert (\email{eliandrogilbert@gmail.com})
}
\seealso{
\code{\link{rysgran.plot}} , \code{\link{gran.stats}} , \code{\link{rysgran.ternary}} , \code{\link{class.percent}} , \code{\link{lattice}}
}
\examples{

library(rysgran)
data(camargo2001)
data(sed.phi)

#histograms

rysgran.hist(camargo2001)


#histograms separated by factors

env<- rep(c("River","Tidal Flat","Subtidal","Beach"),each=10)
rysgran.hist(sed.phi, subset = env , which= "Subtidal")


#Making it more attractive

env<- rep(c("River","Tidal Flat","Subtidal","Beach"),each=10)
hist <- rysgran.hist(sed.phi, subset = env , which= "Subtidal")
hist

hist.up <- update(hist, aspect = .4,
    scales=list(x=list(cex=.7),y=list(cex=.7)),
    layout = c(2,5),
    between= list(x = c(0.2), y = c(0.2)),
    ylab = "Frequency",
    xlab = expression(paste(phi)),
    strip = strip.custom(bg = "lightblue"),
    col = "red",
    main="Histogram")
hist.up

}
