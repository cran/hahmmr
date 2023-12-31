# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

cppdbbinom <- function(x, size, alpha, beta, log_prob = FALSE) {
    .Call('_hahmmr_cppdbbinom', PACKAGE = 'hahmmr', x, size, alpha, beta, log_prob)
}

cpp_dgpois <- function(x, alpha, beta, log_prob = FALSE) {
    .Call('_hahmmr_cpp_dgpois', PACKAGE = 'hahmmr', x, alpha, beta, log_prob)
}

#' logSumExp function
#'
#' @param x NumericVector
#' @return double logSumExp of x
#' @export
logSumExp <- function(x) {
    .Call('_hahmmr_logSumExp', PACKAGE = 'hahmmr', x)
}

likelihood_compute <- function(logphi, logprob, logPi, n, m) {
    .Call('_hahmmr_likelihood_compute', PACKAGE = 'hahmmr', logphi, logprob, logPi, n, m)
}

forward_backward_compute <- function(logphi, logprob, logPi, n, m) {
    .Call('_hahmmr_forward_backward_compute', PACKAGE = 'hahmmr', logphi, logprob, logPi, n, m)
}

viterbi_compute <- function(log_delta, logprob, logPi, n, m, nu, z) {
    .Call('_hahmmr_viterbi_compute', PACKAGE = 'hahmmr', log_delta, logprob, logPi, n, m, nu, z)
}

roman2int_internal <- function(letters, nchar) {
    .Call('_hahmmr_roman2int_internal', PACKAGE = 'hahmmr', letters, nchar)
}

#' Fit MLE of log-normal Poisson model
#'
#' @param Y_obs Vector of observed counts
#' @param lambda_ref Vector of reference rates
#' @param d integer Total depth
#' @return NumericVector MLE estimates of mu and sigma
#' @export
fit_lnpois_cpp <- function(Y_obs, lambda_ref, d) {
    .Call('_hahmmr_fit_lnpois_cpp', PACKAGE = 'hahmmr', Y_obs, lambda_ref, d)
}

poilog1 <- function(x, my, sig) {
    .Call('_hahmmr_poilog1', PACKAGE = 'hahmmr', x, my, sig)
}

l_lnpois_cpp <- function(Y_obs, lambda_ref, d, mu, sig, phi = 1.0) {
    .Call('_hahmmr_l_lnpois_cpp', PACKAGE = 'hahmmr', Y_obs, lambda_ref, d, mu, sig, phi)
}

