//Author: Manos Papadakis

// This file was generated by compileAttributes
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <RcppArmadillo.h>
#include <Rcpp.h>
#include "mn.h"

using namespace Rcpp;
using namespace std;

//[[Rcpp::export]]
NumericMatrix transpose_sq(NumericMatrix x){
  int i,ncl=x.ncol(),u;
  double tmp;
  for(i=1;i<ncl;++i)
    for(u=0;u<i;++u)
    	SWAP(x(u,i),x(i,u),tmp)
  return x;
}

RcppExport SEXP Rfast_transpose_sq(SEXP xSEXP) {
BEGIN_RCPP
    RObject __result;
    RNGScope __rngScope;
    traits::input_parameter< NumericMatrix >::type x(xSEXP);
    __result = wrap(transpose_sq(x));
    return __result;
END_RCPP
}
