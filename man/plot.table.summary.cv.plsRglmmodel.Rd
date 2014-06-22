\name{plot.table.summary.cv.plsRglmmodel}
\alias{plot.table.summary.cv.plsRglmmodel}
\title{Plot method for table of summary of cross validated plsRglm models}
\description{
This function provides a table method for the class \code{"summary.cv.plsRglmmodel"}
}
\usage{
\method{plot}{table.summary.cv.plsRglmmodel}(x, type=c("CVMC","CVQ2","CVPreChi2"), ...)
}
\arguments{
  \item{x}{an object of the class \code{"table.summary.cv.plsRglmmodel"}}
  \item{type}{the type of cross validation criterion to plot.}  
  \item{\dots}{further arguments to be passed to or from methods.}  
}
%\details{}
\value{
  \code{NULL}
}
\references{
Nicolas Meyer, Myriam Maumy-Bertrand et \enc{Fr?d?ric}{Fr\'ed\'eric} Bertrand (2010). Comparaison de la \enc{r?gression}{r\'egression} PLS et de la \enc{r?gression}{r\'egression} logistique PLS : application aux \enc{donn?es}{donn\'ees} \enc{d'all?lotypage}{d'all\'elotypage}. \emph{Journal de la Soci?t? Fran?aise de Statistique}, 151(2), pages 1-18.
\url{http://smf4.emath.fr/Publications/JSFdS/151_2/pdf/sfds_jsfds_151_2_1-18.pdf}
}
\author{\enc{Fr?d?ric}{Fr\'ed\'eric} Bertrand\cr
\email{frederic.bertrand@math.unistra.fr}\cr
\url{http://www-irma.u-strasbg.fr/~fbertran/}
}
\seealso{\code{\link{summary}}}
\examples{
data(Cornell)
XCornell<-Cornell[,1:7]
yCornell<-Cornell[,8]
bbb <- cv.plsRglm(dataY=yCornell,dataX=XCornell,nt=10,NK=1,
modele="pls-glm-family",family=gaussian())
plot(cvtable.plsRglm(summary(bbb)),type="CVPreChi2")
rm(list=c("XCornell","yCornell","bbb"))
}
\keyword{methods}
\keyword{print}