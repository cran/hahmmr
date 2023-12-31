% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hahmmr.R
\name{run_joint_hmm_s15}
\alias{run_joint_hmm_s15}
\title{Run 15-state joint HMM on a pseudobulk profile}
\usage{
run_joint_hmm_s15(
  pAD,
  DP,
  p_s,
  Y_obs = 0,
  lambda_ref = 0,
  d_total = 0,
  theta_min = 0.08,
  theta_neu = 0,
  bal_cnv = TRUE,
  phi_del = 2^(-0.25),
  phi_amp = 2^(0.25),
  phi_bamp = phi_amp,
  phi_bdel = phi_del,
  mu = 0,
  sig = 1,
  r = 0.015,
  t = 1e-05,
  gamma = 18,
  prior = NULL,
  exp_only = FALSE,
  allele_only = FALSE,
  classify_allele = FALSE,
  debug = FALSE,
  ...
)
}
\arguments{
\item{pAD}{integer vector Paternal allele counts}

\item{DP}{integer vector Total alelle counts}

\item{p_s}{numeric vector Phase switch probabilities}

\item{Y_obs}{numeric vector Observed gene counts}

\item{lambda_ref}{numeric vector Reference expression rates}

\item{d_total}{integer Total library size for expression counts}

\item{theta_min}{numeric Minimum haplotype imbalance threshold}

\item{theta_neu}{numeric Haplotype imbalance threshold for neutral state}

\item{bal_cnv}{logical Whether to include balanced CNV states}

\item{phi_del}{numeric Expected fold change for deletion}

\item{phi_amp}{numeric Expected fold change for amplification}

\item{phi_bamp}{numeric Expected fold change for balanced amplification}

\item{phi_bdel}{numeric Expected fold change for balanced deletion}

\item{mu}{numeric Global expression bias}

\item{sig}{numeric Global expression variance}

\item{r}{numeric Variant mapping bias}

\item{t}{numeric Transition probability between copy number states}

\item{gamma}{numeric Overdispersion in the allele-specific expression}

\item{prior}{numeric vector Prior probabilities for each state}

\item{exp_only}{logical Whether to only use expression data}

\item{allele_only}{logical Whether to only use allele data}

\item{classify_allele}{logical Whether to classify allele states}

\item{debug}{logical Whether to print debug messages}

\item{...}{Additional parameters}
}
\value{
character vector Decoded states
}
\description{
Run 15-state joint HMM on a pseudobulk profile
}
\examples{
with(bulk_example, {
    run_joint_hmm_s15(pAD = pAD, DP = DP, p_s = p_s, Y_obs = Y_obs, lambda_ref = lambda_ref, 
    d_total = na.omit(unique(d_obs)), mu = mu, sig = sig, t = 1e-5, gamma = 30, theta_min = 0.08)
})
}
