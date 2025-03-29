ExES_method <- function(Toll){
  n <- nrow(Toll)
  ExESaux <- function(k){
  (sum(sapply (1:k , function (h)sum(Toll[h,k]))))/k
  }
  
ExES <- numeric(n)
for(i in 1:n) {
  ExES[i] <- sum(sapply(i:n , ExESaux)) }
  exes <- matrix(ExES, ncol = n)
  colnames(exes) <- 1:n
  rownames(exes) <- " "
  print("ExES method")
  return(exes)
}
