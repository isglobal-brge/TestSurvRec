\name{Plot.Surv.Rec}
\alias{Plot.Surv.Rec}
\title{Plots estimated survival function from an object of class TestSurvRec. The survival curves of two groups are estimated using PHS estimator.}
\description{The survival curves are plotted. Both curves are estimates using survrec package. This package is available in language R. This important clearly, that the PHS estimator is of valid use, when it assumed that the inter-occurrence times are  IID. Its obvious that this assumption is restrictive in biomedical applications and its use is more valid on the field of engineering.}
\usage{Plot.Surv.Rec(XX)}
\arguments{
\item{XX}{Data type recurrent events. Example: TBCplapyr}}
\value{The survival curves for both groups are plotted.}
\references{\bold{Martínez C., Ramírez, G., Vásquez M. }(\bold{2009}).Pruebas no paramétricas para comparar curvas de supervivencia de dos grupos que experimentan eventos recurrentes. Propuestas. \emph{Revista Ingeniería U.C.},Vol 16, 3, 45-55.
\bold{González, J., Peña, E., & Strawderman, R. }(\bold{2002}). survrec: Survival analysis for recurrent event data. \emph{The Comprehensive R Archive Network.} R package.
\bold{Peña E., Strawderman R., Hollander, M.} (\bold{2001}). Nonparametric Estimation with Recurrent Event Data. \emph{J.A.S.A.} 96, 1299-1315.}
\author{Dr. \bold{Carlos Martinez} <cmmm7031@gmail.com>}
\seealso{Plot.Event.Rec,Dif.Surv.Rec}
\examples{data(TBCplapyr)
 Plot.Surv.Rec(TBCplapyr)}
\keyword{ Functions }
\keyword{ Survival }