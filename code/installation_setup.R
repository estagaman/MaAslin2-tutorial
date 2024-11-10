if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

#install Maaslin2
BiocManager::install("Maaslin2")

#create directory for Maaslin2 materials 
rm(list=ls())
getwd()
setwd("~/Desktop")
dir.create("R_Maaslin_tutorial") # Create a new directory
setwd("R_Maaslin_tutorial") # Change the current working directory 
getwd() #check if directory has been successfully changed

#Load MaAsLin2 package into the R environment
library(Maaslin2)
