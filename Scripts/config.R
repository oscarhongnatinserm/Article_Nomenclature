# Install packages/libraries
install.packages("rlist")
install.packages("data.table")
install.packages("dplyr")
install.packages("XML")
install.packages("methods")
install.packages("xlsx")
install.packages("jsonlite")
install.packages("writexl")
install.packages("stringr")


# We launch the libraries
library(rlist)
library(data.table)
library(dplyr)
library(XML)
library(methods)
library(xlsx)
library(jsonlite)
library(writexl)
library(stringr)



#######################################

### Download Dataset from Orphadata

#######################################

# Specify URL where file is stored
url = c("https://www.orphadata.com/data/xml/en_product1.xml", 
                 "https://www.orphadata.com/data/xml/cs_product1.xml",
                 "https://www.orphadata.com/data/xml/de_product1.xml",
                 "https://www.orphadata.com/data/xml/es_product1.xml",
                 "https://www.orphadata.com/data/xml/fr_product1.xml",
                 "https://www.orphadata.com/data/xml/it_product1.xml",
                 "https://www.orphadata.com/data/xml/nl_product1.xml",
                 "https://www.orphadata.com/data/xml/pl_product1.xml",
                 "https://www.orphadata.com/data/xml/pt_product1.xml",
                 "https://www.orphadata.com/data/xml/en_product3_146.xml",
                 "https://www.orphadata.com/data/xml/en_product3_147.xml",
                 "https://www.orphadata.com/data/xml/en_product3_148.xml",
                 "https://www.orphadata.com/data/xml/en_product3_150.xml",
                 "https://www.orphadata.com/data/xml/en_product3_152.xml",
                 "https://www.orphadata.com/data/xml/en_product3_156.xml",
                 "https://www.orphadata.com/data/xml/en_product3_181.xml",
                 "https://www.orphadata.com/data/xml/en_product3_182.xml",
                 "https://www.orphadata.com/data/xml/en_product3_183.xml",
                 "https://www.orphadata.com/data/xml/en_product3_184.xml",
                 "https://www.orphadata.com/data/xml/en_product3_185.xml",
                 "https://www.orphadata.com/data/xml/en_product3_186.xml",
                 "https://www.orphadata.com/data/xml/en_product3_187.xml",
                 "https://www.orphadata.com/data/xml/en_product3_188.xml",
                 "https://www.orphadata.com/data/xml/en_product3_189.xml",
                 "https://www.orphadata.com/data/xml/en_product3_193.xml",
                 "https://www.orphadata.com/data/xml/en_product3_194.xml",
                 "https://www.orphadata.com/data/xml/en_product3_195.xml",
                 "https://www.orphadata.com/data/xml/en_product3_196.xml",
                 "https://www.orphadata.com/data/xml/en_product3_197.xml",
                 "https://www.orphadata.com/data/xml/en_product3_198.xml",
                 "https://www.orphadata.com/data/xml/en_product3_199.xml",
                 "https://www.orphadata.com/data/xml/en_product3_200.xml",
                 "https://www.orphadata.com/data/xml/en_product3_201.xml",
                 "https://www.orphadata.com/data/xml/en_product3_202.xml",
                 "https://www.orphadata.com/data/xml/en_product3_203.xml",
                 "https://www.orphadata.com/data/xml/en_product3_204.xml",
                 "https://www.orphadata.com/data/xml/en_product3_205.xml",
                 "https://www.orphadata.com/data/xml/en_product3_209.xml",
                 "https://www.orphadata.com/data/xml/en_product3_212.xml",
                 "https://www.orphadata.com/data/xml/en_product3_216.xml",
                 "https://www.orphadata.com/data/xml/en_product3_231.xml",
                 "https://www.orphadata.com/data/xml/en_product3_233.xml",
                 "https://www.orphadata.com/data/xml/en_product3_235.xml",
                 "https://www.orphadata.com/data/xml/en_product7.xml")


# Specify destination where file should be saved
destfile = str_split(url, "https://www.orphadata.com/data/xml/", simplify = T)
destfile = destfile[, 2]


folder = "C:/Users/ohongnat/Documents/Article_nomenclature_test/Dataset"
setwd(folder)


# Apply download.file function in R
for (i in 1:length(url))
{
  download.file(url[i], destfile[i])
}