SPS.method <- function(Toll){
  n <- nrow(Toll)
  
  weight.den <- sum(sapply(1:n, function(j) {
    sum(sapply(1:j, function(h) {
      sum(sapply(j:n, function(k)sum(Toll[h,k]))) } )) })) - sum(diag(Toll))
  
  SPS.aux <- function(h){
    sum(sapply(h:n, function(k)sum(Toll[h,k]))) }
  
  SPS <- numeric(n) 
  for(i in 1:n) {
    SPS[i] <-  sum(sapply(1:i, function(h) {
      sum(sapply(i:n, function(k)sum(Toll[h,k]))) })) - Toll[i,i] }
  
  SPS <- SPS*(sum(sapply(1:n, SPS.aux)) - sum(diag(Toll)))/weight.den + diag(Toll)
  
  sps <- matrix(SPS, ncol = n)
  colnames(sps) <- 1:n
  rownames(sps) <- " "
  print("SPS method")
  return(sps)
}