# MaAsLin2-tutorial
A guide on implementation of MaAslin2 for multivariable association

MaAslin2 was designed to compare abundances of specific taxa across groups of samples while maintaining sensitivity and correcting for multiple testing appropriately. 

You can also use MaAslin2 to: 
  - control for lack of independence between samples
  - normalize abundance values 
  - check for association between variables
  - apply prevalence and abundance filtering


# Installing MaAsLin2

Use Bioconductor to install MaAslin2: 
```{r installation}
if(!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("Maaslin2")
```
If you receive an error, make sure both R and MaAslin2 are updated to the most recent versions. 


# Create A New Directory

I recommend creating a new directory to save output files from MaAslin2: 
```{r directory}
getwd()
setwd("~/Desktop")
dir.create("R_Maaslin_tutorial") # Create a new directory
setwd("R_Maaslin_tutorial") # Change the current working directory 
getwd() #check that change was successful

#Load MaAsLin2 package 
library(Maaslin2)
```

# Input Data

Two tables are necessary: 

  1. metadata: a tab or comma-delimited file containing sample IDs as the first column and all additional information collected regarding samples as additional columns
  
  3. features: a tab or comma-delimited file containing samples IDs as the first column, taxa as following columns, and abundances as values. Abundances may be normalized beforehand, but it is not necessary. Prevalence and abundance filtering can also be applied directly within MaAslin2 if the user chooses.


Tutorial Data from the Inflammatory Bowel Disease Multi'omics Database is provided as: 

  **metadata:** HMP2_metadata.tsv
  
  **features:** HMP2_taxonomy.tsv 


# Code Samples

All sample code can be found in the "code" folder of this repository. 
**import_from_tsv.R:** load in metadata and features files in appropriate format for MaAslin2
**import_sample_data.R:** load in tutorial metadata and features files from internet source
**installation_setup.R:** installation and directory setup for MaAsLin2
**run_MaAslin2.R:** main MaAslin2 command and parameters + example implementations
