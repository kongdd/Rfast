# This file was generated by Rcpp::compileAttributes
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

Trigamma <- function(x) {
  if(is.matrix(x)){
    return (.Call('Rfast_tr_mat',x))
  }
  .Call('Rfast_tr_vec',x)
}