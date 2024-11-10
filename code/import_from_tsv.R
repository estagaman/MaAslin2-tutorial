#INPUT:
  #features: tsv with sample IDs as first column and taxa as following column names, with abundance counts as values
  #metadata: tsv with samples IDs as first column and other variables measured as column names

library(data.table)

#LOAD FEATURE DATA 
features <- fread("Downloads/HMP2_taxonomy.tsv")

#MAKE SURE SAMPLE NAMES ARE ROWNAMES
rownames(features) <- features$ID #change "ID" to column with your sample names
features$ID <- NULL
View(features)

#LOAD METADATA 
metadata <- fread("Downloads/HMP2_metadata.tsv")

#MAKE SURE SAMPLE NAMES ARE ROWNAMES
rownames(metadata) <- metadata$ID #change "ID" to column with your samples names
metadata$ID <- NULL
View(metadata)
