\name{TestSurvRec-package}
\alias{TestSurvRec-package}
\alias{TestSurvRec}
\docType{package}
\title{Statistical tests to compare survival curves of two groups with recurrent events.}
\description{Recurrent events are common in many areas: \emph{psychology, engineery, medicine, physic, astronomy, biology, economics} and \emph{so on} .Such events are very common in the real world: \emph{viral diseases,carcinogenic tumors, machinery and equipment failures, births, murders, rains, industrial accidents,car accidents} and \emph{so on}. The availability of computerized tools for the analysis is indispensable. Survival analysis is a branch of the statistic that it is used to model the time until the occurrence of events. The objectives of the survival analysis are: the modeling of the survival functions , the estimation of the risk functions of the occurrence of an event, the estimation of the probability of occurrence and the comparisons of survival curves of population groups. The development of tools for the statistical analysis of recurrent event is relatively recent and these are not fully known. The purpose of this package is to present statistical tests for the analysis of data with recurrent event. Martínez \emph{et al.} \bold{(2009)} published some statistical tests to compare survival curves on groups with recurrent events.}
\details{The hypothesis is,
					\deqn{\bold{H_{o} : S_{1}(t) = S_{2}(t)}} 
					\deqn{\bold{H_{1} : S_{1}(t) \neq S_{2}(t)}}
 Where, \eqn{S_{1}(t)} and \eqn{S_{2}(t)} are the survival curves of the both group. The statistic of test is,
\deqn{Z=\frac{\sum^{\,}_{t\leq\,z}w_{z}\left[\Delta\,N(s,z;r)-E\left\{\Delta\,N(s,z;r)\right\} \right]}{\sqrt{\sum^{\,}_{t\leq\,z}w^{2}_{z}Var\left\{\Delta\,N(s,z ;r) \right\}}}}
 The statistic Z has a normal asymptotic behavior. Its square has a chi-square approximate behavior with a degree of freedom. So, 
 \deqn{\Delta\,N(s, z; 1) = N(s, z + \Delta\,z; 1) - N(s, z; 1)}
 Now, if \eqn{\Delta\,z} is approaches to zero and \eqn{\Delta\,N(s, z; 1)} has a hypergeometric behavior and the expected value is, 
 \deqn{Y(s, z; 1)×\Delta\,N(s, z)/Y(s, z)} 
 and the variance is,
 \deqn{Var\left[\Delta\,N(s, z; 1) \right]=\frac{Y(s,z)-Y(s,z;1)}{Y(s,z)-1}Y(s,z;1)\frac{\Delta\,N(s,z)}{Y(s,z)}\left[1-\frac{\Delta\,N(s,z)}{Y(s,z)}\right]}
 This author proposed various types of weights \eqn{(w_{z})},
 \deqn{w_{z}=\left[S(z)\right]^{\gamma}\left[1-S(z)\right]^{\eta}\frac{\left[Y(s,z)\right]^{\alpha}}{\left[Y(s,z)+1\right]^{\beta}}}
 The appropriate selection of weights to the survival analysis depends of the behavior of its curves. With the selection of the values of the parameters \eqn{(  \alpha,\;\beta,\;\gamma\   ;and \; \eta )} on our proposal, this statistical  is able of adjustment to this  behavior. With this proposal, we are able of make studies on survival analysis with recurrent events and of generate tests for analysis others, including the classical tests types: \bold{logrank, Gehan, Peto -Peto, Fleming-Harrington} and so on. See, that if on the statistical all parameters are zero imply that \eqn{w_{z} = 1}, it generate the test type logrank to the analysis with recurrent events. If, \eqn{\alpha = 1} and the other parameters are zero \eqn{w_{z} = Y(s,z)}, it generate the test type \bold{Gehan}. If, \eqn{\gamma=1} and the other parameters are zero \eqn{w_ {z} = S(z)}, it generate the test of \bold{Peto-Peto}. If, \eqn{\gamma = 1}, \eqn{\eta = 1} and the rest of the parametres are zero, it generate the test of \bold{Fleming -Harrington}. For that our statistical be able of generate the tests for the clasical survival analysis, all the study units have that experiment only one event or one censure. On the proposal, the statistical of comparison for recurrent events depends of the counting processes \bold{N} and \bold{Y}, both are doubles indexed. With S index, we measure calendar time and with Z index, we measure the gap times. So, if the observation time tends to infinity and the event can only occur once on the unit, the test of comparison of the proposal becomes on the classical weighted test of comparison of groups on the survival analysis. We can conclude that, the tests proposed by \bold{Martínez} \emph{et al. }(\bold{2009}) are useful on diverse fields of the research, such as: \emph{ medicine, public health, insurance, social science, reliability} and others.}
\author{Dr. \bold{Carlos Martínez}, <cmmm7031@gmail.com>}
\seealso{Dif.Surv.Rec,Plot.Data.Events,Plot.Event.Rec,Plot.Surv.Rec,Print.Summary}
\references{
\bold{Martínez C., Ramírez, G., Vásquez M.} (\bold{2009}).Pruebas no paramétricas para comparar curvas de supervivencia de dos grupos que experimentan eventos recurrentes. Propuestas. \emph{Revista Ingeniería U.C.},Vol 16, 3, 45-55.
\bold{Martínez, C. (2009)}. Generalización de algunas pruebas clásicas de comparación de curvas de supervivencia al caso de eventos de naturaleza recurrente. Tesis doctoral.\emph{ Universidad Central de Venezuela (UCV)}. Caracas-Venezuela.
 \bold{Peña E., Strawderman R., Hollander, M. (2001)}. Nonparametric Estimation with Recurrent Event Data. \emph{J.A.S.A.} 96, 1299-1315.}
\examples{data(TBCplapyr)
 Plot.Event.Rec(TBCplapyr)
 Dif.Surv.Rec(TBCplapyr,"all",1,1,0,0)
 Dif.Surv.Rec(TBCplapyr,"Grec")
 Print.Summary(TBCplapyr)
 }
\keyword{ package }
