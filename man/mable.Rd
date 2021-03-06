% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mable.R
\name{mable}
\alias{mable}
\title{Create a new mable}
\usage{
mable(..., key = NULL, model = NULL, models = NULL)
}
\arguments{
\item{...}{<\code{\link[rlang:dyn-dots]{dynamic-dots}}>
A set of name-value pairs. These arguments are
processed with \code{\link[rlang:quos]{rlang::quos()}} and support unquote via \code{\link{!!}} and
unquote-splice via \code{\link{!!!}}. Use \verb{:=} to create columns that start with a dot.

Arguments are evaluated sequentially, however the \link{.data} pronoun is not
available to prevent masking usage in a higher level function, like
\code{\link[dplyr:mutate]{dplyr::mutate()}}.}

\item{key}{Structural variable(s) that identify each model.}

\item{model}{Identifiers for the columns containing model(s).}

\item{models}{Deprecated in favour of the model argument.}
}
\description{
A mable (model table) data class (\code{mdl_df}) is a tibble-like data structure
for applying multiple models to a dataset. Each row of the mable refers to a
different time series from the data (identified by the key columns). A mable
must contain at least one column of time series models (\code{mdl_ts}), where the
list column itself (\code{lst_mdl}) describes how these models are related.
}
