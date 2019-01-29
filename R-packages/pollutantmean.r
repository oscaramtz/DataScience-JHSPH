pollutantmean <- function(directory, pollutant, id = 1:332){
  ## Reading Data
  files <- list.files(directory, full.names = TRUE)
  pt <- lapply(files[id], read.csv)
  mpt <- do.call(rbind, pt)
  mean(mpt[,pollutant == names(mpt)], na.rm = TRUE)
}

pollutantmean(dir, "sulfate", id = 1:10)
pollutantmean(dir, "nitrate", 70:72)
pollutantmean(dir, "nitrate", 23)
