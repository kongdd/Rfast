# This file was generated by Rcpp::compileAttributes
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

upper_tri <- function(x, value = FALSE) {
  	if(value){
		return (.Call('Rfast_upper_triangle',x))
	}
	dm <- dim(x)
	.Call('Rfast_upper_triangle_b',dm[1],dm[2])
}