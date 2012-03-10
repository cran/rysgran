\name{class.percent}
\alias{class.percent}
\title{Weight Percentages of Textural Classes}
\description{  Calculates the percentage of weight retained on each sieve and its corresponding textural class  }
\usage{class.percent(data,mode = "both", 
    empty.col = FALSE, lang = "en-US")}
\arguments{
  \item{data}{  a data matrix with grain size samples  }
  \item{mode}{  shape of textural classes matrix. \code{mode="total"} shows grouped classes of gravel, sand, silt and clay. \code{mode="classes"} shows the subclasses like fine sand, coarse silt and medium clay. \code{mode="both"} shows both the grouped classes as subclasses. Default is "both"  }
  \item{empty.col}{  logical. If TRUE empty columns (with zero percent) are displayed. Default is FALSE  }
  \item{lang}{  language . May be english ("en-US", "en-GR", "eng", "e"), or portuguese ("pt-BR", "pt-PT", "port", "p"). The default is "en-US"  }
}
\details{  The particle size matrix used in data entry must contain the first line of grain size classes (logarithmic or geometric scale), each following line should contain the weights of a sample. . No header should be used.\cr
For further details on the structure of the input table see data examples \code{camargo2001}, \code{sed.phi} and \code{sed.metric} included in this package  }
\value{  An array of variable dimension, depending on the chosen arguments, with the relative percentages of textural classes for each sample. This matrix should be used in ternary diagrams like Shepard and Pejrup by \code{\link{rysgran.ternary}} function, available in this package  }
\author{
  Eliandro R. Gilbert (\email{eliandrogilbert@gmail.com})\cr
  Mauricio G. Camargo (\email{camargo.ufpr@gmail.com})
}
\seealso{\code{\link{rysgran.ternary}} , \code{\link{gran.stats}}}
\examples{
#testing the different modes

library(rysgran)
data(camargo2001)

class.percent(camargo2001, mode="total", empty.col=FALSE, lang="en-US")

class.percent(camargo2001, mode="classes", empty.col=FALSE, lang="en-US")

class.percent(camargo2001, mode="both", empty.col=FALSE, lang="en-US")
}
