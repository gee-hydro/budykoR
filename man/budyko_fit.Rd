% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{budyko_fit}
\alias{budyko_fit}
\title{Fit Budyko Curve to Data}
\usage{
budyko_fit(
  data,
  method,
  dif = "nls",
  res = NULL,
  hshift = FALSE,
  hs = NULL,
  silent = FALSE
)
}
\arguments{
\item{data}{\link{list} dataframe requiring the following two columns: "PET.P" for
potential evapotranspiration divided by precipitation (units normalized,
dimensionless), and "AET.P" for actual evapotranspiration divided by precipitation
or one minus the runoff coefficient (Q/P)}

\item{method}{A string. One of the following: Fu, Turc-Pike, Wang-Tang}

\item{dif}{A string. One of the following: "nls" (default) "rsq" "mae". Determines whether to fit automatically with stats::nls, or manually, with best fit determined by either Pearson's R squared or Minimum Mean Absolute Error}

\item{res}{\link{numeric} resolution of fit, defaults to 0.01 units}

\item{hshift}{A boolean.  T/F (default F), whether to test for horizontal shift}

\item{hs}{\link{numeric} optional horizontal shift value}

\item{silent}{A boolean.  (default F) display messages?}
}
\value{
Given a dataset of Aridity Index and Evaporative Index,
find the best-fit Budyko Curve. Returns a "fit" object dataframe.
}
\description{
Fit Budyko Curve to Data
}
\examples{
library(ggplot2)
fit=budyko_fit(data=testdata,method="Fu")
blankBC+
  geom_line(data=budyko_sim(fit=fit))+
  geom_point(data=testdata)+
  coord_cartesian(xlim=c(0,5))
}
