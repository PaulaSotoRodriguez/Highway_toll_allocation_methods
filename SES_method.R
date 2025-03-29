SES.method <- function(Toll){
  # stopifnot(class(Toll)=="matrix")
  n <- nrow(Toll)
  SESaux <- function(h){
    sum(sapply(i:n, function(k)sum(Toll[h,k]/(k-h+1))))
  }
  SES <- numeric(n) 
  for(i in 1:n) {
    SES[i] <- sum(sapply(1:i, SESaux)) }
  ses <- matrix(SES, ncol = n)
  colnames(ses) <- 1:n
  rownames(ses) <- " "
  print("SES method")
  return(ses)
}