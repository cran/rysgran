\name{class.sort.pt}
\alias{class.sort.pt}
\title{Verbal Classification for Sorting in Portuguese Language}
\description{  This internal function generates the verbal classification for the sorting parameter calculated by \code{\link{gran.stats}} function according to methods Folk & Ward, Otto, Trask, McCammon (a) and McCammon (b), in Portuguese language  }
\usage{
class.sort.pt(sort)
}
\arguments{
  \item{sort}{  a numeric object with length 1 which  is classified  }
}
\value{  A character string with the verbal classification  }
\author{
  Eliandro R. Gilbert (\email{eliandrogilbert@gmail.com})
}
\seealso{\code{\link{gran.stats}}}
\examples{
#Folk & Ward with verbal classification
library(rysgran)
data(camargo2001)
tab<-camargo2001
gran.stats(tab , method="folk" , verbal=TRUE , lang="pt-BR")
}
\keyword{internal}
