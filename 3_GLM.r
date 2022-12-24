
## Libraries ##
library(parallel)
library(raster)
library(rgdal)
library(ellipsenm)
library(sdm)
library(dismo)
library(BAMMtools)
library(ntbox)
library(raster)
library(rgdal)
library(terra)
library(kuenm)

datum <- CRS("+proj=longlat +ellps=WGS84 +datum=WGS84")

setwd("D:/6_Maestria/2_Models/Layers/M_inv")
M <-list.files(pattern=".shp")

## Read the occurrences ##
setwd("D:/6_Maestria/8_Draft_KLR/Data_accesability/Records/U0")
nat <- list.files(pattern = ".csv")
## Read the occurrences ##
for (i in 1:length(nat)){
setwd("D:/6_Maestria/8_Draft_KLR/Data_accesability/Records/U0")
nat <- list.files(pattern = ".csv")
setwd("D:/6_Maestria/8_Draft_KLR/Data_accesability/Records/U0")
occ <- read.csv(nat[i])
sp = occ[2,1]

## predictors ##
setwd(paste0("D:/6_Maestria/2_Models/Kuenm/1_Kuenm_95/", sp, "/U0/M_var/Set1"))
comp <- list.files(pattern=".asc")
crop_m <- raster::stack(comp)

### Inv
setwd(paste0("D:/6_Maestria/2_Models/Kuenm/1_Kuenm_95/", sp, "/U0/G_var/Set1/Inv"))
inv <- list.files(pattern=".asc")
inv_s <- raster::stack(comp)


### Load the M ###
M = vect(paste0("D:/6_Maestria/2_Models/Layers/1_All_Ms/U0_", sp, ".csv.shp"))

## define background points ##
bg <- prepare_swd(occ, species = "Especie", longitude = "Long",
                    latitude = "Lat", raster.layers = crop_m,
                    sample.size = 10000)
bg = bg$background
bg$response <- rep(0, times = nrow(bg))

### Define the presence ###
rec_var = raster::extract(crop_m, occ[,c("Long","Lat")])
rec_var_c <- data.frame(occ, rec_var)
rec_var_c = na.omit(rec_var_c)
rec_var_c$response = rep(1, times = nrow(rec_var_c))

### Identify the centroid in the components ###
suitableCentroid <- apply(rec_var_c[,c("Comp1", "Comp2", "Comp3")], 
                          MARGIN = 2, FUN = mean)
						  
bg$distance <- apply(bg[,c("Comp1", "Comp2", "Comp3")], MARGIN = 1, 
                                  FUN = function(x) dist(rbind(suitableCentroid, x)))
								  
bg$sampleWeight <- (bg$distance - min(bg$distance))/(max(bg$distance)- min(bg$distance))

sampleForAbsence <- sample(x = rownames(bg), 
                           size = nrow(rec_var_c) * 100, 
                           prob = bg$sampleWeight,
						   replace = TRUE)
						   
bg <- bg[match(sampleForAbsence, rownames(bg)),]

bg = bg[,c(1:7)]
colnames(bg) = colnames(rec_var_c)

### Joint presence and pseudo-absence ###
datForMod <- rbind(rec_var_c, bg[,colnames(rec_var_c)])

rec = datForMod[,c(2,3,7)]

## define formula ##
coordinates(rec) <- c("Long","Lat")

d <- sdmData(formula = response~., train = rec, predictors = crop_m)

## modelling data ##
glm <- sdm(response~., data = d, methods = c("glm"), replication="boot", test.p = 40, n = 10) 
## subset only best models by natural breaks ##
models <- as.data.frame(getEvaluation(glm, stat=c("AUC", "OR"), opt = 2))

AUC <- subset(models, AUC > 0.5)
if(nrow(AUC)==0){
AUC <- subset(models, AUC == max(AUC))
}

OR <- subset(AUC, COR <= 0.1)
if(nrow(OR) == 0){
OR <- subset(AUC, COR == min(COR))
}

if(nrow(OR) > 1){
OR <- subset(AUC, COR == min(COR))
}

if(nrow(OR) > 1){
OR <- subset(OR, AUC == max(AUC))
}

if (OR$COR < 0){
OR$COR = 0
}

f_model <- glm[[OR$modelID]]

## project to different to current and past scenarios ##
setwd("D:/6_Maestria/2_Models/GLM_GAM/pred")
nat <- predict(f_model, crop_m, overwrite = TRUE)
inv <- predict(f_model, inv_s,overwrite = TRUE)

setwd("D:/6_Maestria/2_Models/GLM_GAM/suit/90")
writeRaster(inv, filename = paste0(sp,"_suit_U0_10.tif"), format="GTiff")
setwd("D:/6_Maestria/2_Models/GLM_GAM/bin/90")
bin_inv <- bin_model(inv, occ[,c(2,3)], percent = 10)
writeRaster(bin_inv, filename = paste0(sp, "_bin_U0_10.tif"), format="GTiff")

## save summary of evaluations ##
setwd("D:/6_Maestria/2_Models/GLM_GAM/eval/Nat")
sum_full <- as.data.frame(OR)
sum_full$Especie = sp
sum_full = sum_full[,c(4,2,3)]
write.csv(sum_full, paste0(sp, "_U0_10.csv"), row.names = F)
}
##


## Read the occurrences ##
setwd("D:/6_Maestria/8_Draft_KLR/Data_accesability/Records/U1")
nat <- list.files(pattern = ".csv")
## Read the occurrences ##
for (i in 1:length(nat)){
setwd("D:/6_Maestria/8_Draft_KLR/Data_accesability/Records/U1")
nat <- list.files(pattern = ".csv")
setwd("D:/6_Maestria/8_Draft_KLR/Data_accesability/Records/U1")
occ <- read.csv(nat[i])
sp = occ[2,1]

## predictors ##
setwd(paste0("D:/6_Maestria/2_Models/Kuenm/1_Kuenm_95/", sp, "/U1/M_var/Set1"))
comp <- list.files(pattern=".asc")
crop_m <- raster::stack(comp)

### Inv
setwd(paste0("D:/6_Maestria/2_Models/Kuenm/1_Kuenm_95/", sp, "/U1/G_var/Set1/Inv"))
inv <- list.files(pattern=".asc")
inv_s <- raster::stack(comp)

### Load the M ###
M = vect(paste0("D:/6_Maestria/2_Models/Layers/1_All_Ms/U1_", sp, ".csv.shp"))

## define background points ##
bg <- prepare_swd(occ, species = "Especie", longitude = "Long",
                    latitude = "Lat", raster.layers = crop_m,
                    sample.size = 10000)
bg = bg$background
bg$response <- rep(0, times = nrow(bg))

### Define the presence ###
rec_var = raster::extract(crop_m, occ[,c("Long","Lat")])
rec_var_c <- data.frame(occ, rec_var)
rec_var_c = na.omit(rec_var_c)
rec_var_c$response = rep(1, times = nrow(rec_var_c))

### Identify the centroid in the components ###
suitableCentroid <- apply(rec_var_c[,c("Comp1", "Comp2", "Comp3")], 
                          MARGIN = 2, FUN = mean)
						  
bg$distance <- apply(bg[,c("Comp1", "Comp2", "Comp3")], MARGIN = 1, 
                                  FUN = function(x) dist(rbind(suitableCentroid, x)))
								  
bg$sampleWeight <- (bg$distance - min(bg$distance))/(max(bg$distance)- min(bg$distance))

sampleForAbsence <- sample(x = rownames(bg), 
                           size = nrow(rec_var_c) * 100, 
                           prob = bg$sampleWeight,
						   replace = TRUE)
						   
bg <- bg[match(sampleForAbsence, rownames(bg)),]

bg = bg[,c(1:7)]
colnames(bg) = colnames(rec_var_c)

### Joint the presence and pseudo-absences ###
datForMod <- rbind(rec_var_c, bg[,colnames(rec_var_c)])

rec = datForMod[,c(2,3,7)]

## Define formula ##
coordinates(rec) <- c("Long","Lat")

d <- sdmData(formula = response~., train = rec, predictors = crop_m)

## modelling data ##
glm <- sdm(response~., data = d, methods = c("glm"), replication="boot", test.p = 40, n = 10) 

models <- as.data.frame(getEvaluation(glm, stat=c("AUC", "OR"), opt = 2))

AUC <- subset(models, AUC > 0.5)
if(nrow(AUC)==0){
AUC <- subset(models, AUC == max(AUC))
}

OR <- subset(AUC, COR <= 0.1)
if(nrow(OR) == 0){
OR <- subset(AUC, COR == min(COR))
}

if(nrow(OR) > 1){
OR <- subset(AUC, COR == min(COR))
}

if(nrow(OR) > 1){
OR <- subset(OR, AUC == max(AUC))
}

if (OR$COR < 0){
OR$COR = 0
}

f_model <- glm[[OR$modelID]]

## project to different to current and past scenarios ##
setwd("D:/6_Maestria/2_Models/GLM_GAM/pred")
nat <- predict(f_model, crop_m, overwrite = TRUE)
inv <- predict(f_model, inv_s,overwrite = TRUE)

setwd("D:/6_Maestria/2_Models/GLM_GAM/suit/90")
writeRaster(inv, filename = paste0(sp,"_suit_U1_10.tif"), format="GTiff")
setwd("D:/6_Maestria/2_Models/GLM_GAM/bin/90")
bin_inv <- bin_model(inv, occ[,c(2,3)], percent = 10)
writeRaster(bin_inv, filename = paste0(sp, "_bin_U1_10.tif"), format="GTiff")

## save summary of evaluations ##
setwd("D:/6_Maestria/2_Models/GLM_GAM/eval/Nat")
sum_full <- as.data.frame(OR)
sum_full$Especie = sp
sum_full = sum_full[,c(4,2,3)]
write.csv(sum_full, paste0(sp, "_U1_10.csv"), row.names = F)
}
##


############# 95 ###############
## Read the occurrences ##
setwd("D:/6_Maestria/8_Draft_KLR/Data_accesability/Records/U0")
nat <- list.files(pattern = ".csv")
## Read the occurrences ##
for (i in 1:length(nat)){
setwd("D:/6_Maestria/8_Draft_KLR/Data_accesability/Records/U0")
nat <- list.files(pattern = ".csv")
setwd("D:/6_Maestria/8_Draft_KLR/Data_accesability/Records/U0")
occ <- read.csv(nat[i])
sp = occ[2,1]

## predictors ##
setwd(paste0("D:/6_Maestria/2_Models/Kuenm/1_Kuenm_95/", sp, "/U0/M_var/Set1"))
comp <- list.files(pattern=".asc")
crop_m <- raster::stack(comp)

### Inv
setwd(paste0("D:/6_Maestria/2_Models/Kuenm/1_Kuenm_95/", sp, "/U0/G_var/Set1/Inv"))
inv <- list.files(pattern=".asc")
inv_s <- raster::stack(comp)

### Load the M ###
M = vect(paste0("D:/6_Maestria/2_Models/Layers/1_All_Ms/U0_", sp, ".csv.shp"))

## define background points ##
bg <- prepare_swd(occ, species = "Especie", longitude = "Long",
                    latitude = "Lat", raster.layers = crop_m,
                    sample.size = 10000)
bg = bg$background
bg$response <- rep(0, times = nrow(bg))

### Define the presence ###
rec_var = raster::extract(crop_m, occ[,c("Long","Lat")])
rec_var_c <- data.frame(occ, rec_var)
rec_var_c = na.omit(rec_var_c)
rec_var_c$response = rep(1, times = nrow(rec_var_c))

### Identify the centroid in the components ###
suitableCentroid <- apply(rec_var_c[,c("Comp1", "Comp2", "Comp3")], 
                          MARGIN = 2, FUN = mean)
						  
bg$distance <- apply(bg[,c("Comp1", "Comp2", "Comp3")], MARGIN = 1, 
                                  FUN = function(x) dist(rbind(suitableCentroid, x)))
								  
bg$sampleWeight <- (bg$distance - min(bg$distance))/(max(bg$distance)- min(bg$distance))

sampleForAbsence <- sample(x = rownames(bg), 
                           size = nrow(rec_var_c) * 100, 
                           prob = bg$sampleWeight,
						   replace = TRUE)
						   
bg <- bg[match(sampleForAbsence, rownames(bg)),]

bg = bg[,c(1:7)]
colnames(bg) = colnames(rec_var_c)

### Joint the presence and pseudo-absences ###
datForMod <- rbind(rec_var_c, bg[,colnames(rec_var_c)])

rec = datForMod[,c(2,3,7)]

## define formula ##
coordinates(rec) <- c("Long","Lat")

d <- sdmData(formula = response~., train = rec, predictors = crop_m)

## modelling data ##
glm <- sdm(response~., data = d, methods = c("glm"), replication="boot", test.p = 40, n = 10) 

## subset only best models by natural breaks ##
models <- as.data.frame(getEvaluation(glm, stat=c("AUC", "OR"), opt = 2))

AUC <- subset(models, AUC > 0.5)
if(nrow(AUC)==0){
AUC <- subset(models, AUC == max(AUC))
}

OR <- subset(AUC, COR <= 0.05)
if(nrow(OR) == 0){
OR <- subset(AUC, COR == min(COR))
}

if(nrow(OR) > 1){
OR <- subset(AUC, COR == min(COR))
}

if(nrow(OR) > 1){
OR <- subset(OR, AUC == max(AUC))
}

if (OR$COR < 0){
OR$COR = 0
}

f_model <- glm[[OR$modelID]]

## project to different to current and past scenarios ##
setwd("D:/6_Maestria/2_Models/GLM_GAM/pred")
nat <- predict(f_model, crop_m, overwrite = TRUE)
inv <- predict(f_model, inv_s,overwrite = TRUE)

setwd("D:/6_Maestria/2_Models/GLM_GAM/suit/95")
writeRaster(inv, filename = paste0(sp,"_suit_U0_5.tif"), format="GTiff")
setwd("D:/6_Maestria/2_Models/GLM_GAM/bin/95")
bin_inv <- bin_model(inv, occ[,c(2,3)], percent = 5)
writeRaster(bin_inv, filename = paste0(sp, "_bin_U0_5.tif"), format="GTiff")

## save summary of evaluations ##
setwd("D:/6_Maestria/2_Models/GLM_GAM/eval/Nat")
sum_full <- as.data.frame(OR)
sum_full$Especie = sp
sum_full = sum_full[,c(4,2,3)]
write.csv(sum_full, paste0(sp, "_U0_5.csv"), row.names = F)
}
#
## Read the occurrences ##
setwd("D:/6_Maestria/8_Draft_KLR/Data_accesability/Records/U1")
nat <- list.files(pattern = ".csv")
## Read the occurrences ##
for (i in 1:length(nat)){
setwd("D:/6_Maestria/8_Draft_KLR/Data_accesability/Records/U1")
nat <- list.files(pattern = ".csv")
setwd("D:/6_Maestria/8_Draft_KLR/Data_accesability/Records/U1")
occ <- read.csv(nat[i])
sp = occ[2,1]

## predictors ##
setwd(paste0("D:/6_Maestria/2_Models/Kuenm/1_Kuenm_95/", sp, "/U1/M_var/Set1"))
comp <- list.files(pattern=".asc")
crop_m <- raster::stack(comp)

### Inv
setwd(paste0("D:/6_Maestria/2_Models/Kuenm/1_Kuenm_95/", sp, "/U1/G_var/Set1/Inv"))
inv <- list.files(pattern=".asc")
inv_s <- raster::stack(comp)


### Load the M ###
M = vect(paste0("D:/6_Maestria/2_Models/Layers/1_All_Ms/U1_", sp, ".csv.shp"))

## define background points ##
bg <- prepare_swd(occ, species = "Especie", longitude = "Long",
                    latitude = "Lat", raster.layers = crop_m,
                    sample.size = 10000)
bg = bg$background
bg$response <- rep(0, times = nrow(bg))

### Define the presence ###
rec_var = raster::extract(crop_m, occ[,c("Long","Lat")])
rec_var_c <- data.frame(occ, rec_var)
rec_var_c = na.omit(rec_var_c)
rec_var_c$response = rep(1, times = nrow(rec_var_c))

### Identify the centroid in the components ###
suitableCentroid <- apply(rec_var_c[,c("Comp1", "Comp2", "Comp3")], 
                          MARGIN = 2, FUN = mean)
						  
bg$distance <- apply(bg[,c("Comp1", "Comp2", "Comp3")], MARGIN = 1, 
                                  FUN = function(x) dist(rbind(suitableCentroid, x)))
								  
bg$sampleWeight <- (bg$distance - min(bg$distance))/(max(bg$distance)- min(bg$distance))

sampleForAbsence <- sample(x = rownames(bg), 
                           size = nrow(rec_var_c) * 100, 
                           prob = bg$sampleWeight,
						   replace = TRUE)
						   
bg <- bg[match(sampleForAbsence, rownames(bg)),]

bg = bg[,c(1:7)]
colnames(bg) = colnames(rec_var_c)

### Joint the presences and pseudo-absences ###
datForMod <- rbind(rec_var_c, bg[,colnames(rec_var_c)])

rec = datForMod[,c(2,3,7)]

## define formula ##
coordinates(rec) <- c("Long","Lat")

d <- sdmData(formula = response~., train = rec, predictors = crop_m)

## modelling data ##
glm <- sdm(response~., data = d, methods = c("glm"), replication="boot", test.p = 40, n = 10) 

models <- as.data.frame(getEvaluation(glm, stat=c("AUC", "OR"), opt = 2))

AUC <- subset(models, AUC > 0.5)
if(nrow(AUC)==0){
AUC <- subset(models, AUC == max(AUC))
}

OR <- subset(AUC, COR <= 0.05)
if(nrow(OR) == 0){
OR <- subset(AUC, COR == min(COR))
}

if(nrow(OR) > 1){
OR <- subset(AUC, COR == min(COR))
}

if(nrow(OR) > 1){
OR <- subset(OR, AUC == max(AUC))
}

if (OR$COR < 0){
OR$COR = 0
}

f_model <- glm[[OR$modelID]]

## project to different to current and past scenarios ##
setwd("D:/6_Maestria/2_Models/GLM_GAM/pred")
nat <- predict(f_model, crop_m, overwrite = TRUE)
inv <- predict(f_model, inv_s,overwrite = TRUE)

setwd("D:/6_Maestria/2_Models/GLM_GAM/suit/95")
writeRaster(inv, filename = paste0(sp,"_suit_U1_5.tif"), format="GTiff")
setwd("D:/6_Maestria/2_Models/GLM_GAM/bin/95")
bin_inv <- bin_model(inv, occ[,c(2,3)], percent = 5)
writeRaster(bin_inv, filename = paste0(sp, "_bin_U1_5.tif"), format="GTiff")

## save summary of evaluations ##
setwd("D:/6_Maestria/2_Models/GLM_GAM/eval/Nat")
sum_full <- as.data.frame(OR)
sum_full$Especie = sp
sum_full = sum_full[,c(4,2,3)]
write.csv(sum_full, paste0(sp, "_U1_5.csv"), row.names = F)
}
##