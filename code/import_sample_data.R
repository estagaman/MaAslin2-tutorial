#import taxonomy from official MaAslin2 tutorial
input_data = system.file(
    "extdata", "HMP2_taxonomy.tsv", package="Maaslin2") # The abundance table file

#import metadata from official MaAslin2 tutorial
input_metadata = system.file(
    "extdata", "HMP2_metadata.tsv", package="Maaslin2") # The metadata table file

#convert to data frames
df_input_data = read.table(file = input_data, header = TRUE, sep = "\t",
                            row.names = 1,
                            stringsAsFactors = FALSE)
df_input_metadata = read.table(file = input_metadata, header = TRUE, sep = "\t",
                                row.names = 1,
                                stringsAsFactors = FALSE)
