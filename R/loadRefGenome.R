
loadRefGenome <- function(organism.name) {
  library(Biostrings)
  library(BiocManager)
  library(biomaRt)
  library(biomartr)
  genome.refseq <- biomartr::getGenome(db = "refseq", organism = organism.name, path = file.path("_ncbi_downloads","genomes"))
  Genome <-  read_genome(file = genome.refseq)
  return(Genome)
}
