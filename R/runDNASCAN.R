runDNASCAN <- function(freq.df, rf_model) {
  res.df <- NULL
  # SCAN
  res.df <- as.data.frame(predict(rf_model, newdata = freq.df, type="prob")[,1])
  colnames(res.df) <- "prob"
  res.df$x <- 1:nrow(freq.df)
  return(res.df)
}
