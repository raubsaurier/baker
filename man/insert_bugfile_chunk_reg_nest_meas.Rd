% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/write-model.R
\name{insert_bugfile_chunk_reg_nest_meas}
\alias{insert_bugfile_chunk_reg_nest_meas}
\title{Insert measurement likelihood (nested model+regression) code chunks into .bug model file}
\usage{
insert_bugfile_chunk_reg_nest_meas(
  Mobs,
  prior,
  cause_list,
  FPR_formula,
  use_measurements = "BrS",
  ppd = NULL,
  use_jags = FALSE
)
}
\arguments{
\item{Mobs}{Measurement data in the form of \code{data_nplcm}}

\item{prior}{Prior specification from \code{model_options}}

\item{cause_list}{A list of latent status names (crucial for building templates;
see \code{\link[=make_template]{make_template()}})}

\item{FPR_formula}{A list of FPR regression formula; check \code{model_options$likelihood$FPR_formula}}

\item{use_measurements}{"BrS", or "SS"}

\item{ppd}{Default is NULL; set to TRUE for posterior predictive checking}

\item{use_jags}{Default is FALSE; set to TRUE if want to use JAGS for model fitting.}
}
\value{
A long character string to be inserted into .bug model file as measurement
likelihood
}
\description{
Insert measurement likelihood (nested model+regression) code chunks into .bug model file
}
\seealso{
Called by \link{write_model_Reg_NoNest} for constructing a \code{.bug} file.
This is usually called along with specification of latent status regression
(\link{insert_bugfile_chunk_reg_etiology}).
}
