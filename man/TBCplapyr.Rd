\name{TBCplapyr}
\alias{TBCplapyr}
\docType{data}
\title{Data of tumor recurrence in patients with bladder cancer. Patiens were treated with placebo and pyridoxine}
\description{This database corresponds to the time of recurrence of tumors in 78 patients with bladder cancer. Patients were randomly assigned to treatments: placebo (47 patients) and piridoxine (31 patients). Data type data.frame with 222 observations on 8 variables.}
\usage{data(TBCplapyr)}
\format{This data.frame contains the following columns:

 j      : Observation number
 
 id     : ID of each unit. Repeated for each recurrence
 
 Tinicio: Inicial time
 
 time   : recurrence o censoring time. For each unit the last time is censored.
 
 event  : censoring status. '1' = ocurrence of the event in the unit and '0' right censored time. 
 
 strata : Number of strata
 
 trt    : Factor w/ 2 levels "Placebo","Pyridoxine"
 
 group  : a factor with levels. Group identificator.

 }
\details{Experiment \bold{Byar}(\bold{1980}). The database Byar experiment is used and the time (months) of recurrence of tumors in 116 sick patients with superficial bladder cancer is measured. These patients were randomly allocated to the following treatments: placebo (47 patients), pyridoxine (31 patients) and thiotepa (38 patients).}
\source{\bold{Andrews D. }, \bold{Herzberg A.}, (\bold{1985}). "Data. A collections of problems from many fields for the student and reserarch worker", Springer series in statistics, Springer-Verlag, USA}
\references{\bold{Mart�nez C., Ram�rez, G., V�squez M.}(\bold{ 2009}).Pruebas no param�tricas para comparar curvas de supervivencia de dos grupos que experimentan eventos recurrentes. Propuestas. \emph{Revista Ingenier�a U.C.},Vol 16, 3, 45-55.
\bold{Mart�nez, C.} (\bold{2009}). Generalizaci�n de algunas pruebas cl�sicas de comparaci�n de curvas de supervivencia al caso de eventos de naturaleza recurrente. Tesis doctoral.\emph{ Universidad Central de Venezuela (UCV)}. Caracas-Venezuela.
\bold{Pe�a E., Strawderman R., Hollander, M.} (\bold{2001}). Nonparametric Estimation with Recurrent Event Data. \emph{J.A.S.A.} 96, 1299-1315.}
\examples{data(TBCplapyr)
 XL<-data.frame(TBCplapyr)
 print(XL)
 Print.Summary(TBCplapyr)
 }
\keyword{ datasets }