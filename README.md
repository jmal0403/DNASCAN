# DNASCAN

install.packages("devtools")

library("devtools")

install.packages("remotes")

library("remotes")

install.packages("githubinstall")

library("githubinstall")

remotes::install_git("https://github.com/jmal0403/DNASCAN", dependencies=TRUE, force=TRUE)

library(DNAnamer)
Prerequisites

testthat, knitr, rmarkdown, biomartr, BiocManager, seqinr, fastmap, caret, stringr, dplyr, e1071, pROC, randomForest
Installation
library(jmal0403/DNASCAN)
