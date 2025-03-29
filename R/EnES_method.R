EnES_method <- function(Toll){
  n <- nrow(Toll)
  EnESaux <- function(h){
    (sum(sapply(h:n, function(k)sum(Toll[h,k]))))/(n-h+1)
  }
  
  EnES <- numeric(n)
  for(i in 1:n) {
    EnES[i] <- sum(sapply(1:i , EnESaux)) }
  enes <- matrix(EnES, ncol = n)
  colnames(enes) <- 1:n
  rownames(enes) <- " "
  print("EnES method")
  return(enes)
}
