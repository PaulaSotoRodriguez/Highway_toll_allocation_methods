SCS.method <- function(Toll){
  n <- nrow(Toll)
  
  SCS.aux <- function(h){
    sum(sapply((i+1):n, function(k)sum(Toll[h,k])))}
  
  SCS <- numeric(n) 
  for(i in 2:(n-1)) {
    SCS[i] <- (1/n)*(i*sum(sapply((i+1):n, function(k)sum(Toll[i,k]))) + 
                       sum(sapply(1:(i-1), SCS.aux))  +
                       (n-i+1)*sum(sapply(1:(i-1), function(h)sum(Toll[h,i])))) }
  
  SCS <- SCS + diag(Toll)
  SCS[1] <- SCS[1] + (sum(Toll[1,]) - Toll[1,1])/n
  SCS[n] <- SCS[n] + (sum(Toll[,n]) - Toll[n,n])/n
  
  scs <- matrix(SCS, ncol = n)
  colnames(scs) <- 1:n
  rownames(scs) <- " "
  print("SCS method")
  return(scs)
}