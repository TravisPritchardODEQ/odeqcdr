% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/contin_volmon_import.R
\name{contin_volmon_import}
\alias{contin_volmon_import}
\title{Import continuous information from volmon data template.}
\usage{
contin_volmon_import(
  file,
  project = "ODEQVolMonWQProgram",
  timezone = "PDT",
  append_ordeq = TRUE
)
}
\arguments{
\item{file}{The path and file name to template xlsx file.}

\item{project}{Optional variable identifying project. ODEQ volmon's program (ODEQVolMonWQProgram) is the default}

\item{timezone}{Optionalvariable setting time zone. Defaults to "PDT"}

\item{append_ordeq}{Optional boolean to append "-ORDEQ" to monitoring locations. Default is TRUE.}
}
\value{
list of each continuous template data
}
\description{
This functions uses the volmon data template as an input and returns a list with each element that matches the output
of contin_import(). This function does the same thing as contin_import() but uses the different template.
}
\details{
This function will read the template and return a list with each list element holding a
dataframe of the information for each spreadsheet. Any rows with all NAs are removed.

The function returns a named list holding each worksheet from the xlsx. The name of each list element is the same as the xlsx:

Organization_Details
Projects
Monitoring_Locations
Deployment
Results
PrePost
Audit_Data

Column names are made into syntactically valid names acceptable by R.

This function relies heavily upon the \link{readxl} package.
}
\seealso{
\code{\link[readxl:read_excel]{readxl::read_excel()}}, \code{\link[=contin_import]{contin_import()}}
}
