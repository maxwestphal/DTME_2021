###
#   CTG example: data derivation
###
#   Author:
#   Max Westphal (max.westphal@mevis.fraunhofer.de)
###
#   Description:
#   This script preprocesses the data used for the CTG example.
#   Original data/credit: https://archive.ics.uci.edu/ml/datasets/cardiotocography
###
#   Details:
#   The file "data/session2/ctg_raw.csv" was derived by saving the original file
#     https://archive.ics.uci.edu/ml/machine-learning-databases/00193/CTG.xls as csv from MS Excel.
###
#   Info for course participants:
#   You don't need to run nor modify this file.
###

## load original data:
data <- readr::read_csv2("data/session2/ctg_raw.csv")

## remove 4 incomplete observations, everything else is complete
data <- data[- which(rowSums(is.na(data))>0), ]

data <- data %>%
  mutate(CLASS = factor(CLASS),
         NSP = factor(NSP)) %>%
  mutate(Date = (as.POSIXct(Date, format="%d.%m.%Y"))) %>%
  select(-c(FileName, SegFile, b, e)) %>%
  select(-c(A, B, C, D, E, AD, DE, LD, FS, SUSP)) %>%
  arrange(Date) %>%
  as.data.frame()

## EDA on endpoints
table(data$CLASS) # -> Class code (1 to 10) for classes A to SUSP
table(data$NSP)   # -> Normal=1; Suspect=2; Pathologic=3
table(data$CLASS, data$NSP)
colSums(is.na(data))


## Goal: prediction of NSP != 1, i.e. suspect or pathologic (without CLASS as predictor)
ctg_data <- data %>%
  mutate(status = as.factor(c("normal", "suspect")[1 + (NSP != 1) ])) %>%
  select(-c(CLASS, NSP))
ctg_data %>% data.table::setcolorder(c("status", names(ctg_data)[-ncol(ctg_data)]))

## Serialize:
saveRDS(ctg_data, "data/session2/ctg_data.rds")

## clean environment:
rm(list = ls())
