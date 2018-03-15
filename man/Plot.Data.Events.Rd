\name{Plot.Data.Events}
\alias{Plot.Data.Events}
\title{Plot data with recurrent events}
\description{This function plot data with recurrent events}
\usage{Plot.Data.Events(yy, paciente, inicio, dias, censored,
      especiales,colevent="red",colcensor="blue")}
\arguments{
\item{yy}{Data type recurrent events. Examples: TBCplapyr}
\item{paciente}{Vector of number of units on the data base}
\item{inicio}{Vector, its assumed that the units are observed from one time equal to zero.}
\item{dias}{Vector of the periods of observations of the study untis}
\item{censored}{vector of times of censorship for each unit}
\item{especiales}{Three-column matrix containing the identification of the units, times of occurrence of the event and type of event.}
\item{colevent}{Color event identifier.}
\item{colcensor}{ Color censored data identifier.}
}
\details{The plot shows the recuurence of the events on the time.}
\value{This function returned the pictorial representation of the set of recurrence events data}
\references{\bold{Martínez C., Ramírez, G., Vásquez M.} (\bold{2009}).Pruebas no paramétricas para comparar curvas de supervivencia de dos grupos que experimentan eventos recurrentes. Propuestas. \emph{Revista Ingeniería U.C.},Vol 16, 3, 45-55.
\bold{Martínez, C. (2009)}. Generalización de algunas pruebas clásicas de comparación de curvas de supervivencia al caso de eventos de naturaleza recurrente. Tesis doctoral.\emph{Universidad Central de Venezuela (UCV)}. Caracas-Venezuela.
\bold{Peña E., Strawderman R., Hollander, M. (2001)}. Nonparametric Estimation with Recurrent Event Data. \emph{J.A.S.A.} 96, 1299-1315}
\author{Dr. \bold{Carlos Martinez}, <cmmm7031@gmail.com>}
\note{We recommend users to use routines similar to the example.}
\seealso{Plot.Surv.Rec,Print.Summary}
\examples{data(TBCplapyr)
 XL<-data.frame(TBCplapyr)
 p<-ncol(XL)
 N<-nrow(XL)
 censor<-matrix(XL$event)
 especiales<-matrix(data=0,nrow(XL),3)
 especiales[,1]<-matrix(XL$id)
 especiales[,2]<-matrix(XL$Tcal)
 especiales[,3]<-matrix(XL$event)
 niveles<-levels(factor(especiales[,1]))
 for(i in 1:N){
 for(j in 1:nrow(matrix(niveles))){
 if (as.character(especiales[i,1])==niveles[j]) especiales[i,1]<-j}}
 StudyPeriod<-matrix(data=0,nrow(matrix(niveles)),1)
 start<-matrix(data=0,nrow(matrix(niveles)),1)
 k<-0
 for(j in 1:N){if (XL$event[j]==0){k<-k+1;StudyPeriod[k,1]<-XL$Tcal[j]}}
 units<-matrix(1:nrow(matrix(niveles)),nrow(matrix(niveles)),1)
 Plot.Data.Events(XL,units,start,StudyPeriod,censor,
								especiales,"black","blue")
Plot.Data.Events(XL,units,start,StudyPeriod,censor,
								especiales,"red","black")
 }
\keyword{ Recurrence }
\keyword{ Events }

