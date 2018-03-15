\name{TBCplathi}
\alias{TBCplathi}
\docType{data}
\title{Data of tumor recurrence in patients with bladder cancer. Patients were treated as placebo and thiotepa}
\description{This database corresponds to the time of recurrence of tumors of 85 patients with bladder cancer. Patients were randomly assigned to treatments: placebo (47 patients) and thiotepa (38 patients). Data type data.frame with 217 observations on 8 variables.}
\usage{data(TBCplathi)}
\format{This data frame contains the following columns:

 j      : Observation number
 
 id     : ID of each unit. Repeated for each recurrence
 
 Tinicio: Inicial time
 
 time   : recurrence o censoring time
 
 event  : censoring status.
 
 strata : Number of strata
 
 trt    : Factor w/ 2 levels "Placebo","Thiotepa"
 
 group  : a factor with levels. Group identificator.

 }
\details{Experiment \bold{Byar} (\bold{1980}). The database Byar experiment is used and the time (months) of recurrence of tumors in 116 sick patients with superficial bladder cancer is measured. These patients were randomly allocated to the following treatments: placebo (47 patients), pyridoxine (31 patients) and thiotepa (38 patients).}
\source{\bold{Andrews D.}, \bold{Herzberg A.}, (\bold{1985}). "Data. A collections of problems from many fields for the student and reserarch worker", 
 \emph{Springer series in statistics, Springer-Verlag}, USA}
\references{\bold{Martínez C., Ramírez, G., Vásquez M. }(\bold{2009}).Pruebas no paramétricas para comparar curvas de supervivencia de dos grupos que experimentan eventos recurrentes. Propuestas. \emph{Revista Ingeniería U.C.},Vol 16, 3, 45-55.
\bold{Peña E., Strawderman R., Hollander, M.} (\bold{2001}). Nonparametric Estimation with Recurrent Event Data. \emph{J.A.S.A.} 96, 1299-1315.}
\examples{data(TBCplathi)
 XL<-data.frame(TBCplathi)
 print(XL)
 Print.Summary(TBCplathi)
 }
\keyword{ datasets }
