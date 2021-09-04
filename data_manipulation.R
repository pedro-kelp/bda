head(Orange)
head(Orange, 3)
tail(Orange)
tail(Orange, 8)
str(Orange)
summary(Orange)
dim(Orange)

getwd()
rm(list=ls())

# 외부파일 읽기

nhis <- read.csv("data/NHIS_OPEN_GJ_EUC-KR.csv", fileEncoding = "EUC-KR", stringsAsFactors = T)
nhis <- read.csv("data/NHIS_OPEN_GJ_UTF-8.csv", fileEncoding = "UTF-8", stringsAsFactors = T)

str(nhis)

nhis <- read.table("data/NHIS_OPEN_GJ_EUC-KR.csv",
                   header = TRUE,
                   sep = ",", 
                   fileEncoding = "EUC-KR")


nhis <- read.table("data/NHIS_OPEN_GJ_EUC-KR.txt",
                   header = TRUE,
                   sep = ",", 
                   fileEncoding = "EUC-KR")

install.packages('openxlsx')
library(openxlsx)
nhis_sheet1 <- read.xlsx('data/NHIS_OPEN_GJ_EUC-KR.xlsx')
head(nhis_sheet1)
nhis_sheet1 <- read.xlsx('data/NHIS_OPEN_GJ_EUC-KR.xlsx', sheet = 2)

# 빅데이터 파일 불러오기(fread)
install.packages('data.table')
library(data.table)

nhis_bigdata = fread("data/NHIS_OPEN_GJ_BIGDATA_UTF-8.csv", encoding = "UTF-8")
str(nhis_bigdata)
