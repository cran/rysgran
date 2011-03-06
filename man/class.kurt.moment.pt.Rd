\name{class.kurt.moment.pt}
\alias{class.kurt.moment.pt}
\title{Verbal Classification for Skewness in Portuguese Language}
\description{  This internal function generates the verbal classification for the kurtosis parameter calculated by \code{\link{gran.stats}} function according to Methods of Moments, in Portuguese language  }
\usage{
class.kurt.moment.pt(kurtosis.moment)
}
\arguments{
  \item{kurtosis.moment}{  a numeric object with length 1 which  is classified  }
}
\value{  A character string with the verbal classification  }
\author{
  Eliandro R. Gilbert (\email{eliandrogilbert@gmail.com})
}
\seealso{\code{\link{gran.stats}}}
\examples{
#Method of Moments with verbal classification
library(rysgran)
data(camargo2001)
tab<-camargo2001
gran.stats(tab , method="moment" , verbal=TRUE , lang="pt-BR")
}
\keyword{internal}