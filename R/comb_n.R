# This file was generated by Rcpp::compileAttributes
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

comb_n <- function(n,k) {
  if(n<0 && k<0)
  	stop("N and K must be positive numbers.")
  x <- .Call('Rfast_k_comb_n',n,k)
  dim(x)<-c(length(x)/k,k)
  t(x)
}