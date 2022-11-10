
### Script for the Elipsoids construction ###
### We need to make one run per species ###
### Load the packages ###
library(ntbox)
library(raster)
library(rgl)

### load the environmental layers ###
pred_p <- list.files("YOUR PATH/layers",
                     pattern = ".asc",
                     full.names = TRUE)
pred <- raster::stack(pred_p)

### load the presence records of the focal species ###
U0_spp_1 <- read.csv("YOUR PATH/U0_spp_1.csv")
### Load the presence records of their closest relative ###
Node_1 <- read.csv("YOUR PATH/spp_1_Node_1.csv")

### Extract the environmental layers to the presence recordss
U0_env <- raster::extract(pred, U0[,c("Long","Lat")])
Node_1_env <- raster::extract(pred, Node_1[,c("Long","Lat")])

### Match the presence records with the environmental information ###
U0_occ_env <- data.frame(U0, U0_env)
U0_occ_env <- na.omit(U0_occ_env)
Node_1_occ_env <- data.frame(Node_1, Node_1_env)
Node_1_occ_env <- na.omit(Node_1_occ_env)

### Index the environmental data ###
environ_data_U0 <- U0_occ_env[,-(1:3)]
environ_data_Node_1 <- Node_1_occ_env[,-(1:3)]

### Calculates the centroid and covariance matrix ###
e_data_U0_90 <- cov_center(environ_data_U0, mve = TRUE,
                                 level = 0.90,
                                 vars = c("Comp1",
                                          "Comp2",
                                          "Comp3"))

e_data_U0_95 <- cov_center(environ_data_U0, mve = TRUE,
                                 level = 0.95,
                                 vars = c("Comp1",
                                          "Comp2",
                                          "Comp3"))

e_data_Node_1_90 <- cov_center(environ_data_Node_1, mve = TRUE,
                                 level = 0.90,
                                 vars = c("Comp1",
                                          "Comp2",
                                          "Comp3"))

e_data_Node_1_95 <- cov_center(environ_data_Node_1, mve = TRUE,
                                 level = 0.95, 
                                 vars = c("Comp1",
                                          "Comp2",
                                          "Comp3"))
										  
### Weight the centroids and coavriance to avoid bias in the number of records in U0 and the Node 1 ###
U1_nich_cov_90 <- (e_data_U0_90$covariance + e_data_Node_1_90$covariance)/2
U1_nich_cov_95 <- (e_data_U0_95$covariance + e_data_Node_1_95$covariance)/2
U1_nich_cent_90 <- (e_data_U0_90$centroid + e_data_Node_1_90$centroid)/2
U1_nich_cent_95 <- (e_data_U0_95$centroid + e_data_Node_1_95$centroid)/2

### Generate the elipsoids and save the results ###
setwd("YOUR PATH/spp_1/results")
## U0 90 ##
m_U0_90 <- ntbox::ellipsoidfit(pred,
                             centroid = e_data_U0_90$centroid,
                             covar = e_data_U0_90$covariance,
                             level = 0.90,size = 3)
writeRaster(m_U0_90$suitRaster, filename = "m_U0_90.tif", overwrite = T)
## U0 95 ##
m_U0_95 <- ntbox::ellipsoidfit(pred,
                             centroid = e_data_U0_95$centroid,
                             covar = e_data_U0_95$covariance,
                             level = 0.95,size = 3)
writeRaster(m_U0_95$suitRaster,filename = "m_U0_95.tif", overwrite = T)
## U1 90 ##
m_U1_90 <- ntbox::ellipsoidfit(pred,
                             centroid = U1_nich_cent_90,
                             covar = U1_nich_cov_90,
                             level = 0.90,size = 3)
writeRaster(m_U1_90$suitRaster,filename = "m_U1_90.tif", overwrite = T)
## U1 95 ##
m_U1_95 <- ntbox::ellipsoidfit(pred,
                             centroid = U1_nich_cent_95,
                             covar = U1_nich_cov_95,
                             level = 0.95,size = 3)
writeRaster(m_U1_95$suitRaster,filename = "m_U1_95.tif", overwrite = T)
### END OF THE CODE ###