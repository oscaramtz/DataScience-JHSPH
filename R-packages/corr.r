corr <- function(directory, threshold = 0){
  ## Getting IDs complete cases number of rows
  ccases <- complete(directory)
  mtthres <- ccases[ccases$nobs > threshold,"id"]
  ## Reading data
  files <- list.files(directory, full.names = TRUE)
  pt <- lapply(files, read.csv)
  mpt <- do.call(rbind, pt)
  ## Complete cases
  mpt_cc <- mpt[complete.cases(mpt),]
  correlation <- vector()
      for (i in mtthres){
          mptcc_fcor <- cor(mpt_cc[mpt_cc$ID == i,2], mpt_cc[mpt_cc$ID == i,3])
          correlation <- c(correlation, mptcc_fcor)
        }
  correlation
}
