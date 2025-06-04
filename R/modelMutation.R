modelMutation <- function (loc, df, df.2){
  temp.1 <- df[loc-2, ]
  temp.2 <- df[loc-1, ]
  temp.3 <- df[loc, ]
  temp.4 <- df[loc+1, ]
  temp.5 <- df[loc+1, ]
  freq.l1.o5 <- seqinr::count(s2c(temp.1[[1]]), 5, alphabet=alpha, freq=TRUE)
  freq.l1.o4 <- seqinr::count(s2c(temp.1[[1]]), 4, alphabet=alpha, freq=TRUE)
  freq.l1.o3 <- seqinr::count(s2c(temp.1[[1]]), 3, alphabet=alpha, freq=TRUE)
  freq.l1.o2 <- seqinr::count(s2c(temp.1[[1]]), 2, alphabet=alpha, freq=TRUE)
  freq.l2.o5 <- seqinr::count(s2c(temp.2[[1]]), 5, alphabet=alpha, freq=TRUE)
  freq.l2.o4 <- seqinr::count(s2c(temp.2[[1]]), 4, alphabet=alpha, freq=TRUE)
  freq.l2.o3 <- seqinr::count(s2c(temp.2[[1]]), 3, alphabet=alpha, freq=TRUE)
  freq.l2.o2 <- seqinr::count(s2c(temp.2[[1]]), 2, alphabet=alpha, freq=TRUE)
  freq.l3.o5 <- seqinr::count(s2c(temp.3[[1]]), 5, alphabet=alpha, freq=TRUE)
  freq.l3.o4 <- seqinr::count(s2c(temp.3[[1]]), 4, alphabet=alpha, freq=TRUE)
  freq.l3.o3 <- seqinr::count(s2c(temp.3[[1]]), 3, alphabet=alpha, freq=TRUE)
  freq.l3.o2 <- seqinr::count(s2c(temp.3[[1]]), 2, alphabet=alpha, freq=TRUE)
  freq.l4.o5 <- seqinr::count(s2c(temp.4[[1]]), 5, alphabet=alpha, freq=TRUE)
  freq.l4.o4 <- seqinr::count(s2c(temp.4[[1]]), 4, alphabet=alpha, freq=TRUE)
  freq.l4.o3 <- seqinr::count(s2c(temp.4[[1]]), 3, alphabet=alpha, freq=TRUE)
  freq.l4.o2 <- seqinr::count(s2c(temp.4[[1]]), 2, alphabet=alpha, freq=TRUE)
  freq.l5.o5 <- seqinr::count(s2c(temp.5[[1]]), 5, alphabet=alpha, freq=TRUE)
  freq.l5.o4 <- seqinr::count(s2c(temp.5[[1]]), 4, alphabet=alpha, freq=TRUE)
  freq.l5.o3 <- seqinr::count(s2c(temp.5[[1]]), 3, alphabet=alpha, freq=TRUE)
  freq.l5.o2 <- seqinr::count(s2c(temp.5[[1]]), 2, alphabet=alpha, freq=TRUE)
  mut.freq.df.1 <- as.data.frame(t(c(freq.l1.o2, freq.l1.o3, freq.l1.o4, freq.l1.o5)))
  mut.freq.df.2 <- as.data.frame(t(c(freq.l2.o2, freq.l2.o3, freq.l2.o4, freq.l2.o5)))
  mut.freq.df.3 <- as.data.frame(t(c(freq.l3.o2, freq.l3.o3, freq.l3.o4, freq.l3.o5)))
  mut.freq.df.4 <- as.data.frame(t(c(freq.l4.o2, freq.l4.o3, freq.l4.o4, freq.l4.o5)))
  mut.freq.df.5 <- as.data.frame(t(c(freq.l5.o2, freq.l5.o3, freq.l5.o4, freq.l5.o5)))
  loc.1 <- loc-2
  loc.2 <- loc-1
  loc.4 <- loc+1
  loc.5 <- loc+2
  df.2[loc.1, ] <- mut.freq.df.1
  df.2[loc.2, ] <- mut.freq.df.2
  df.2[loc, ] <- mut.freq.df.3
  df.2[loc.4, ] <- mut.freq.df.4
  df.2[loc.5, ] <- mut.freq.df.5
  return(df.2)
}
