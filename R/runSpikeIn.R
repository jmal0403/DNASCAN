runSpikeIn <- function(no.spike.in, c.elegans.seq.df, e.coli.seq.df, seg.len.c, seg.len.e){
  # Spike in
  print(paste0("Spiking-in: ", seg.len.e, " to ", seg.len.c))
  spike.in.loc <<- NULL
  lower <- nrow(c.elegans.seq.df)*.05
  upper <- nrow(c.elegans.seq.df)*.95
  range <- upper - lower/no.spike.in
  r1 <- round(sample(lower:(range/5), 1), digits = 0)
  r2 <- round(sample((lower*4):(range/4), 1), digits = 0)
  r3 <- round(sample((lower*8):(range/3), 1), digits = 0)
  r4 <- round(sample((lower*12):(range/2), 1), digits = 0)
  r5 <- round(sample((lower*14):(range), 1), digits = 0)
  for (j in 1:no.spike.in) {
    #n <- sample(lower:upper, 1, replace=F)
    m <- sample(1:nrow(e.coli.seq.df), 1, replace=F)
    if (j==1) {
      # replace random ref with mut
      c.elegans.seq.df[r1-2, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r1-1, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r1, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r1+1, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r1+2, ]<- e.coli.seq.df[m,]
      print(paste0("Spike-in location: ", r1))
      spike.in.loc<<-r1
    }
    if (j==2) {
      # replace random ref with mut
      c.elegans.seq.df[r2-2, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r2-1, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r2, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r2+1, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r2+2, ]<- e.coli.seq.df[m,]
    }
    if (j==3) {
      # replace random ref with mut
      c.elegans.seq.df[r3-2, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r3-1, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r3, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r3+1, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r3+2, ]<- e.coli.seq.df[m,]
    }
    if (j==4) {
      # replace random ref with mut
      c.elegans.seq.df[r4-2, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r4-1, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r4, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r4+1, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r4+2, ]<- e.coli.seq.df[m,]
    }
    if (j==5) {
      # replace random ref with mut
      c.elegans.seq.df[r5-2, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r5-1, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r5, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r5+1, ]<- e.coli.seq.df[m,]
      c.elegans.seq.df[r5+2, ]<- e.coli.seq.df[m,]
    }
  }
  return(c.elegans.seq.df)
}
