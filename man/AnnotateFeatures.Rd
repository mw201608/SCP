% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SCP-feature_annotation.R
\name{AnnotateFeatures}
\alias{AnnotateFeatures}
\title{AnnotateFeatures}
\usage{
AnnotateFeatures(
  srt,
  species = "Homo_sapiens",
  IDtype = c("symbol", "ensembl_id", "entrez_id"),
  db = NULL,
  db_update = FALSE,
  db_version = "latest",
  convert_species = FALSE,
  Ensembl_version = 103,
  mirror = NULL,
  gtf = NULL,
  merge_gtf_by = "gene_name",
  columns = c("seqname", "feature", "start", "end", "strand", "gene_id", "gene_name",
    "gene_type"),
  assays = "RNA",
  overwrite = FALSE
)
}
\arguments{
\item{convert_species}{}
}
\description{
AnnotateFeatures
}
\examples{
data("pancreas_sub")
pancreas_sub <- AnnotateFeatures(pancreas_sub,
  species = "Mus_musculus", IDtype = "symbol",
  db = c("Chromosome", "GeneType", "Enzyme", "TF", "SP", "CellTalk")
)
head(pancreas_sub[["RNA"]]@meta.features)

## Annotate features using a GTF file
# pancreas_sub <- AnnotateFeatures(pancreas_sub, gtf = "/data/reference/CellRanger/refdata-gex-mm10-2020-A/genes/genes.gtf")
# head(pancreas_sub[["RNA"]]@meta.features)
}
