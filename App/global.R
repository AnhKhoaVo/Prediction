library(caret)
library(dplyr)
library(readxl)
library(shiny)
library(lattice)
library(ggplot2)
library(tidyverse)
library(xgboost)
library(e1071)
library(precrec)
library(party)

sensory_MS_vars04 <- read_excel("./Data/sensory_MS_vars04.xlsx")

#WHOLE MODEL FOR REACTIVE

lm_model <- train(TLAMS52~., data=sensory_MS_vars04, method="xgbTree", na.action=na.omit, 
                  trControl = trainControl("repeatedcv", number = 10, repeats = 3))


