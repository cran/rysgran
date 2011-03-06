\name{class.skew.moment.eng}
\alias{class.skew.moment.eng}
\title{Verbal Classification for Skewness}
\description{ This internal function generates the verbal classification for the skewness parameter calculated by \code{\link{gran.stats}} function according to Methods of Moments, in English language }
\usage{
class.skew.moment.eng(skewness.moment)
}
\arguments{
  \item{skewness.moment}{  a numeric object with length 1 which  is classified  }
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
gran.stats(tab , method="moment" , verbal=TRUE , lang="en-US")
}
\keyword{internal}