% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simulate_zero_inflated_beta_data.R
\name{simulate_zero_inflated_beta_random_effect_data}
\alias{simulate_zero_inflated_beta_random_effect_data}
\title{Simulate data according to zero-inflated beta random effects model}
\usage{
simulate_zero_inflated_beta_random_effect_data(subject.n = 50, time.n = 5,
  v = 2, alpha = as.matrix(c(0, 0.5, -1)), beta = as.matrix(c(-0.5, -0.5,
  0.5)), X = NA, Z = NA, s1 = 0.2, s2 = 0.2, sim.seed = 100)
}
\arguments{
\item{subject.n}{number of subjects}

\item{time.n}{number of time points for each subject}

\item{v}{the dispersion parameter in beta component}

\item{alpha}{the coefficients in logistic component}

\item{beta}{the coefficients in beta component}

\item{X}{the covariates in logistic component}

\item{Z}{the covariates in beta component}

\item{s1}{the stardard deviation of random effect in logistic component}

\item{s2}{the stardard deviation of random effect in beta component}

\item{sim.seed}{the random seed}
}
\value{
Y the bacterial abundance generated from the model

X the covariates in logistic component

Z the covariates in beta component

alpha the coefficients in logistic component

beta the coefficients in beta component

s1 the stardard deviation of random effect in logistic component

s2 the stardard deviation of random effect in beta component

subject.ind the IDs for each subject

time.ind time points
}
\description{
Simulate data according to zero-inflated beta random effects model
}
\examples{
\dontrun{
simulate_zero_inflated_beta_random_effect_data(
   subject.n=100,time.n=5,
   X = as.matrix(c(rep(0,50*5),rep(1,50*5))),
   alpha = as.matrix(c(-0.5,1)),
   beta = as.matrix(c(-0.5,0.5)),
   s1 = 1,s2 = 0.8,
   v = 5,
   sim.seed=100)
}
}

