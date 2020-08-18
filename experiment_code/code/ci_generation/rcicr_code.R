# ----------
# rcicr code
# ----------

# Load reverse correlation package ("rcicr")
library(rcicr)

# Base image name used during stimulus generation
# NOTE: retrieve base image name from 
baseimage <- 'base'

# File containing the contrast parameters (this file was created during stimulus generation)
rdata <- 'rcic_seed_1_time_May_02_2020_10_35.Rdata'

# Load response data
# NOTE: 'response_conan19r.csv' is used for one subject code; use appropriate names for each subject; see below
# responsedata <- read.csv('response_Subject1-1.csv')

# change code as it is warranted
# stimulus <- responsedata$Image
# Use this line when generating noise CI
# response <- responsedata$Noise
# Use this line when generating anti-noise CI
#response <- responsedata$Anti 

# Batch generate classification images by trait
# ci <- generateCI2IFC(stimulus, response, baseimage, rdata)
# ci <- generateCI(stimulus, response, baseimage, rdata, antiCI = F, zmap=FALSE)

#infoVal calculation
# infoVal <- computeInfoVal2IFC(ci, rdata, iter = 5)

i <- 1
j <- 1

#for (i in 1:1)
#{
  #for (j in 1:1)
  #{
    subjectNumber <- paste(i, '-', j, sep = "")
    responseData <- read.csv(paste('response_Subject', subjectNumber, '.csv', sep = ""))
    stimulus <- responseData$Image
    response <- responseData$Noise
    #ci <- generateCI(stimulus, response, baseimage, rdata, filename = paste('Subject', subjectNumber, sep = ""))
    #antici <- generateCI(stimulus, response, baseimage, rdata, filename = paste('Subject', subjectNumber, sep = ""), antiCI = T)
    zmap <- generateCI(stimulus, response, baseimage, rdata, filename = paste('zmap_Subject', subjectNumber, sep = ""), zmap = T, zmapmethod = 'quick', threshold = 1)
    #cumCICorr <- computeCumulativeCICorrelation(stimulus, response, baseimage, rdata)
    #infoVal <- computeInfoVal2IFC(ci, rdata, iter = 10000, force_gen_ref_dist = T)
  #}
#}
