complete <- function(directory, id = 1:332){
  ## Reading data
  files <- list.files(directory, full.names = TRUE)
  pt <- lapply(files[id], read.csv)
  mpt <- do.call(rbind, pt)
  output <- data.frame()
  for (i in id){
    idmpt <- mpt[mpt$ID == i,]
    compt <- complete.cases(idmpt)
    rows <- sum(compt)
    output <- rbind(output, c(i, rows))
  }
  colnames(output)  <- c("id","nobs")
  output
}
