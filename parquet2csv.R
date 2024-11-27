args <- commandArgs(trailingOnly = TRUE)

if (length(args) < 2) {
  ###### HZ edited ######
  print("Usage: input.parquet.file    output.csv")
  #######################
  quit(status = 1)
}


library(data.table,lib.loc="~/R/R-4.4/lib/")
input <- args[1]
output <- args[2]

a=as.data.table(arrow::read_parquet(input))

write.table(a,file=output,row.names=F,col.names=T,sep=",",quote=F)
