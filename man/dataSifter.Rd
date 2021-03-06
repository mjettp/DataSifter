% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dataSifter.R
\name{dataSifter}
\alias{dataSifter}
\title{Data Sifter Algorithm}
\usage{
dataSifter(level = "indep", data, subjID = NULL, col_preserve = 0.5,
  col_pct = 0.7, nomissing = FALSE, maxiter = 1)
}
\arguments{
\item{level}{Takes a value among ("none","small","medium","large","indep"). The user-defined level of obfuscation for the data sifter algorithm. Greater value represents higher level of obfuscation. The default value is "indep" with most obfuscation, which produces independent variables that follows the imperical distribution of the original data.}

\item{data}{Original data to be processed.}

\item{subjID}{Vector of characters indicating the variables for subject ID. These variables will be removed for privacy protection.}

\item{col_preserve}{The maximum percentage of number of columns can be deleted due to massive missingness.}

\item{col_pct}{Criterion for column deletion due to massive missingness. If missing percentage is larger than this threshold, delete the corresponding column.}

\item{nomissing}{Indicator of missing in the original dataset. If nomissing=TRUE, there are no missing in the original data.}
}
\value{
Return sifted dataset.
}
\description{
Create a informative privacy-preserving dataset that guarantees subjects' privacy while preserving the information contained in the original dataset.
}
\details{
When level="indep" each variable in the sifted dataset is independently generated from their empirical distribution from the original data.
On the other hand, level="none" returns the original dataset. When some factors contain a level with empty value " ", it will likely to present "out of bounds" error.

The process could take a while to run with large datasets. There will be two messages indicating the progress of the process. They are Artifical missingness and imputation done",
and "Obfuscation step done".
}
