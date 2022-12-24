
library(raster)
library(ntbox)
library(plyr)

## Calculates Omission Rates ##
## Read the occurrences ##
# reading data
setwd("D:/6_Maestria/8_Draft_KLR/Data_accesability/Records/Inv")
inv <- list.files(pattern = ".csv")

for (i in 1:length(inv)){
setwd("D:/6_Maestria/8_Draft_KLR/Data_accesability/Records/Inv")
inv <- list.files(pattern = ".csv")
occ <- read.csv(inv[i])
sp = occ[2,1]

U0_90 <- list.files("D:/6_Maestria/2_Models/GLM_GAM/bin/90/U0",
                     pattern = paste0(sp, "_bin_U0_10.tif"),
                     full.names = TRUE)
model_U0_90 = raster(U0_90)

U1_90 <- list.files("D:/6_Maestria/2_Models/GLM_GAM/bin/90/U1",
                     pattern = paste0(sp, "_bin_U1_10.tif"),
                     full.names = TRUE)
model_U1_90 = raster(U1_90)


U0_95 <- list.files("D:/6_Maestria/2_Models/GLM_GAM/bin/95/U0",
                     pattern = paste0(sp, "_bin_U0_5.tif"),
                     full.names = TRUE)
model_U0_95 = raster(U0_95)

U1_95 <- list.files("D:/6_Maestria/2_Models/GLM_GAM/bin/95/U1",
                     pattern = paste0(sp, "_bin_U1_5.tif"),
                     full.names = TRUE)
model_U1_95 = raster(U1_95)

## U0 Elip 90
n <- count(occ, "Especie")
n <- n$freq

U0_90_env <- raster::extract(model_U0_90, occ[,c("Long","Lat")])
U0_90_env <- data.frame(occ, U0_90_env)
U0_90_env[is.na(U0_90_env)] <- 0
U0_90_list <- split(U0_90_env, U0_90_env$U0_90_env)
U0_90_list_uno <- U0_90_list$`1`
U0_90_count_uno <- count(U0_90_list_uno , "U0_90_env")
U0_90_total <- U0_90_count_uno$freq
U0_90_omit <- n - U0_90_total
OR_U0_90 <- U0_90_omit/n

U1_90_env <- raster::extract(model_U1_90, occ[,c("Long","Lat")])
U1_90_env <- data.frame(occ, U1_90_env)
U1_90_env[is.na(U1_90_env)] <- 0
U1_90_list <- split(U1_90_env, U1_90_env$U1_90_env)
U1_90_list_uno <- U1_90_list$`1`
U1_90_count_uno <- count(U1_90_list_uno , "U1_90_env")
U1_90_total <- U1_90_count_uno$freq
U1_90_omit <- n - U1_90_total
OR_U1_90 <- U1_90_omit/n

U0_95_env <- raster::extract(model_U0_95, occ[,c("Long","Lat")])
U0_95_env <- data.frame(occ, U0_95_env)
U0_95_env[is.na(U0_95_env)] <- 0
U0_95_list <- split(U0_95_env, U0_95_env$U0_95_env)
U0_95_list_uno <- U0_95_list$`1`
U0_95_count_uno <- count(U0_95_list_uno , "U0_95_env")
U0_95_total <- U0_95_count_uno$freq
U0_95_omit <- n - U0_95_total
OR_U0_95 <- U0_95_omit/n

U1_95_env <- raster::extract(model_U1_95, occ[,c("Long","Lat")])
U1_95_env <- data.frame(occ, U1_95_env)
U1_95_env[is.na(U1_95_env)] <- 0
U1_95_list <- split(U1_95_env, U1_95_env$U1_95_env)
U1_95_list_uno <- U1_95_list$`1`
U1_95_count_uno <- count(U1_95_list_uno , "U1_95_env")
U1_95_total <- U1_95_count_uno$freq
U1_95_omit <- n - U1_95_total
OR_U1_95 <- U1_95_omit/n

Final <- data.frame("Especie" = sp, "U0_90" = OR_U0_90, 
					"U1_90" = OR_U1_90, "U0_95" = OR_U0_95, "U1_95" = OR_U1_95)
					
setwd("D:/6_Maestria/2_Models/GLM_GAM/eval/OR")

write.csv(Final, paste0(sp, "_OR.csv"), row.names = F)

}

##