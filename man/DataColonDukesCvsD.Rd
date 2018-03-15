\name{DataColonDukesCvsD}
\alias{DataColonDukesCvsD}
\docType{data}
\title{Rehospitalization of patients with colorectal cancer}
\description{This data contains the rehospitalization times of patients diagnosed with stage C and patients diagnosed with stage D.}
\usage{data(DataColonDukesCvsD)}
\format{
  A data frame with 537 observations on the following 10 variables.
  \describe{This data.frame contains the following columns:
    \item{\code{j}}{Observation number}
    \item{\code{Iden}}{identificator of each subject. Repeated for each recurrence}
    \item{\code{id}}{identificator of each subject. Repeated for each recurrence}
    \item{\code{Tinicio}}{Initial time of observation just before each recurrence}
    \item{\code{time}}{rehospitalization o censoring gapntime}
    \item{\code{Tcal}}{rehospitalization o censoring calendar time}
    \item{\code{event}}{censoring status. All event are 1 for each subject excepting last one that it is 0}
    \item{\code{chemoter}}{Did patient receive chemotherapy? 1: No 2:Yes}
    \item{\code{dukes}}{Dukes tumoral stage: 2:C 3:D}
    \item{\code{distance}}{distance from living place to hospital 1:less than 30 Km. 2:more than 30 Km.}
  }
}
\details{The patients included in the study have been operated between January 1996 and December 1998. For each patient, we have considered this date as the beginning of the observational period. All patients were followed until June 2002. Consequently, the length of the monitoring period can differ for each patient, depending on its surgery date. The first interoccurrence time has been considered as the time between the surgical intervention and the first hospitalization related to cancer. Four hundred and three patients with colon and rectum cancer have been included in the study. Information about their sex (male or female), age (· 60, 60-74 or ¸ 75), and tumoral stage using Dukes classification (A-B, C, or D) have been recorded. The following interoccurrence times have been considered as the difference between the last hospitalization and the current one. Only readmissions related to cancer have been considered. 
}
\source{This data can be obtained upon request from \bold{González, JR }\emph{et al.}}
\references{\bold{Martínez, C.} (\bold{2009}). Generalización de algunas pruebas clásicas de comparación de
 curvas de supervivencia al caso de eventos de naturaleza recurrente. Tesis doctoral. \emph{Universidad Central de Venezuela (UCV)}. Caracas-Venezuela.
 \bold{González, JR., Fernandez, E., Moreno, V.} \emph{et al.} Gender differences in hospital readmission among colorectal cancer patients. Currently submited to JCO.
}
\examples{data(DataColonDukesCvsD)
 XL<-DataColonDukesCvsD
 print(XL)}
\keyword{ datasets }