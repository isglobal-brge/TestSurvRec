\name{Dif.Surv.Rec}
\alias{Dif.Surv.Rec}
\title{This function computes statistical difference between two survival curves}
\description{p-values of these tests are computed.}
\usage{Dif.Surv.Rec(XX, type, alfa, beta,gamma,eta)}
\arguments{
\item{XX}{Object type recurrent events data}
\item{type}{"LRrec","Grec","TWrec","PPrec","PMrec","FHrec","CMrec","Mrec","all"}
\item{alfa}{The appropriate choice, see \eqn{w_{z}}. Defect value is equal zero}
\item{beta}{The appropriate choice, see \eqn{w_{z}}. Defect value is equal zero}
\item{gamma}{The appropriate choice, see \eqn{w_{z}}. Defect value is equal zero}
\item{eta}{The appropriate choice, see \eqn{w_{z}}. Defect value is equal zero}
}
\details{This function contains tests to compare survival curves with recurrent events. The curves are estimated using \bold{Peña-Strawderman-Hollander} estimator . \bold{Peña} \emph{et al.} (\bold{2001}) defined the estimator of the survival function to recurrent events or \bold{Kaplan-Meier} estimator \bold{GPLE}. They used two counting processes \bold{N} and \bold{Y}. The PSH estimator was defined as,
\deqn{\hat{S}(z) =\prod_{t\leq\,z}\left[1-\frac{\Delta\,N\left(s,z\right)}{Y\left(s,z\right)}\right]}
 The authors considered two time scales: one related to calendar time (S) and other related to intercurrences time (T). So, the counting process \bold{N(s, z)} represents the number of observed events in the calendar period \eqn{[0,s]} with \eqn{t\leq\,z} and \bold{Y(s, z)} represents the number of observed events in the period \eqn{[0,s]} with \eqn{t\geq\,z}. The produc-limit estimator was developed by \bold{Peña, Strawderman} and \bold{Hollander},called PSH. This estimator is useful when the interoccurrence times are assumed to represents IID sample from some underlying distribution F. 
\bold{GPLE model}
 The \bold{GPLE} estimator is defined as: A fundamental assumption of this approach is that individuals have been previously and properly classified in groups according to a stratification variable denote by \emph{r}. Thus, the estimator of the survival curve by each group is defined as,
\deqn{\hat{S}_{r}(z) =\prod_{t\leq\,z}\left[1-\frac{\Delta\,N\left(s,z;r\right)}{Y\left(s,z;r\right)}\right]\!\nabla\:r\:=\!1,2.}
}
\value{# Dif.Surv.Rec(TBCplapyr,"all",0,0,0,0). Values returned
\tabular{lll}{
 Nomb.Est\tab  Chi.square\tab   p.value\cr
 LRrec   \tab  0.3052411 \tab 0.5806152\cr
 Grec    \tab  1.4448446 \tab 0.2293570\cr
 TWrec   \tab  0.9551746 \tab 0.3284056\cr
 PPrec   \tab  1.1322772 \tab 0.2872901\cr
 PMrec   \tab  1.1430319 \tab 0.2850126\cr
 PPrrec  \tab  1.1834042 \tab 0.2766641\cr
 HFrec   \tab  0.3052411 \tab 0.5806152\cr
 CMrec   \tab  0.3052411 \tab 0.5806152\cr
 Mrec    \tab  1.5298763 \tab 0.2161310\cr
 }
}
\references{\bold{Martínez C., Ramírez, G., Vásquez M. }(\bold{2009}).Pruebas no paramétricas para comparar curvas de supervivencia de dos grupos que experimentan eventos recurrentes. Propuestas. \emph{Revista Ingeniería U.C.},Vol 16, 3, 45-55.
\bold{Martínez, C.} (\bold{2009}). Generalización de algunas pruebas clásicas de comparación de curvas de supervivencia al caso de eventos de naturaleza recurrente. Tesis doctoral.\emph{ Universidad Central de Venezuela (UCV)}. Caracas-Venezuela.
\bold{Peña E., Strawderman R., Hollander, M.} (\bold{2001}). Nonparametric Estimation with Recurrent Event Data. \emph{J.A.S.A.} 96, 1299-1315.}
\author{Dr. \bold{Carlos Martínez}, <cmmm7031@gmail.com>}
\seealso{Plot.Event.Rec,Plot.Surv.Rec,Print.Summary}
\examples{data(TBCplapyr)
 #Return the p-values of the all tests 
 Dif.Surv.Rec(TBCplapyr,"all",0,0,0,0)
 #Return the p-value of the LRrec test
 Dif.Surv.Rec(TBCplapyr)
 #Return the p-value of the Grec test
 Dif.Surv.Rec(TBCplapyr,"Grec")
 #Return the p-values of the CMrec tests 
 #The CMrec test with this parameters generates LRrec test
 Dif.Surv.Rec(TBCplapyr,"all",0,0,0,0)
 #The CMrec test with this parameters generates Grec test
 Dif.Surv.Rec(TBCplapyr,"all",0,0,1,0)
 #The CMrec test with this parameters generates TWrec test
 Dif.Surv.Rec(TBCplapyr,"all",0,0,0.5,0)
 #The CMrec test with this parameters generates PPrec test
 Dif.Surv.Rec(TBCplapyr,"all",1,0,0,0)
 #The CMrec test with this parameters generates HFrec test
 Dif.Surv.Rec(TBCplapyr,"all",1,1,0,0)
 }
\keyword{ Statistical }
\keyword{ Tests }