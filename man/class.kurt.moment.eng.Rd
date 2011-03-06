\name{class.kurt.moment.eng}
\alias{class.kurt.moment.eng}
\title{Verbal Classification for Kurtosis}
\description{  This internal function generates the verbal classification for the kurtosis parameter calculated by \code{\link{gran.stats}} function according to Methods of Moments, in English language  }
\usage{
class.kurt.moment.eng(kurtosis.moment)
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
gran.stats(tab , method="moment" , verbal=TRUE , lang="en-US")
}
\keyword{internal}