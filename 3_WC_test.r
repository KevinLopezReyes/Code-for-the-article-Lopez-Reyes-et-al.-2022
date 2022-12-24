
### Script fot the Wilcoxon Signed-Rank Test ###
### Load the records ###
### MAUC Ratio ###
### Global ###
MAUCr_maxent_90 <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_maxent_90.csv")
MAUCr_maxent_95 <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_maxent_95.csv")
MAUCr_mve_90 <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_mve_90.csv")
MAUCr_mve_95 <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_mve_95.csv")
MAUCr_glm_90 <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_glm_90.csv")
MAUCr_glm_95 <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_glm_95.csv")
### BAM Configuration ###
### Maxent ###
MAUCr_maxent_90_CB <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_maxent_90_CB.csv")
MAUCr_maxent_90_HD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_maxent_90_HD.csv")
MAUCr_maxent_90_WD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_maxent_90_WD.csv")
MAUCr_maxent_95_CB <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_maxent_95_CB.csv")
MAUCr_maxent_95_HD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_maxent_95_HD.csv")
MAUCr_maxent_95_WD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_maxent_95_WD.csv")
### MVE ###
MAUCr_mve_90_CB <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_mve_90_CB.csv")
MAUCr_mve_90_HD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_mve_90_HD.csv")
MAUCr_mve_90_WD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_mve_90_WD.csv")
MAUCr_mve_95_CB <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_mve_95_CB.csv")
MAUCr_mve_95_HD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_mve_95_HD.csv")
MAUCr_mve_95_WD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_mve_95_WD.csv")
### GLM ###
MAUCr_glm_90_CB <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_glm_90_CB.csv")
MAUCr_glm_90_HD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_glm_90_HD.csv")
MAUCr_glm_90_WD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_glm_90_WD.csv")
MAUCr_glm_95_CB <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_glm_95_CB.csv")
MAUCr_glm_95_HD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_glm_95_HD.csv")
MAUCr_glm_95_WD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/maucr_glm_95_WD.csv")

### Omission Rates ###
### Global ###
OR_maxent_90 <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_maxent_90.csv")
OR_maxent_95 <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_maxent_95.csv")
OR_mve_90 <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_mve_90.csv")
OR_mve_95 <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_mve_95.csv")
OR_glm_90 <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_glm_90.csv")
OR_glm_95 <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_glm_95.csv")
### BAM Configuration ###
### Maxent ###
OR_maxent_90_CB <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_maxent_90_CB.csv")
OR_maxent_90_HD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_maxent_90_HD.csv")
OR_maxent_90_WD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_maxent_90_WD.csv")
OR_maxent_95_CB <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_maxent_95_CB.csv")
OR_maxent_95_HD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_maxent_95_HD.csv")
OR_maxent_95_WD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_maxent_95_WD.csv")
### MVE ###
OR_mve_90_CB <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_mve_90_CB.csv")
OR_mve_90_HD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_mve_90_HD.csv")
OR_mve_90_WD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_mve_90_WD.csv")
OR_mve_95_CB <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_mve_95_CB.csv")
OR_mve_95_HD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_mve_95_HD.csv")
OR_mve_95_WD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_mve_95_WD.csv")
### GLM ###
OR_glm_90_CB <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_glm_90_CB.csv")
OR_glm_90_HD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_glm_90_HD.csv")
OR_glm_90_WD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_glm_90_WD.csv")
OR_glm_95_CB <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_glm_95_CB.csv")
OR_glm_95_HD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_glm_95_HD.csv")
OR_glm_95_WD <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR_glm_95_WD.csv")

### Wilcoxon Test ###
### MAUC Ratio ###
mauc_test_maxent_90 <- wilcox.test(MAUCr ~ Unit, data = MAUCr_maxent_90, paired = FALSE)
mauc_test_maxent_95 <- wilcox.test(MAUCr ~ Unit, data = MAUCr_maxent_95, paired = FALSE)
mauc_test_mve_90 <- wilcox.test(MAUCr ~ Unit, data = MAUCr_mve_90, paired = FALSE)
mauc_test_mve_95 <- wilcox.test(MAUCr ~ Unit, data = MAUCr_mve_95, paired = FALSE)
mauc_test_glm_90 <- wilcox.test(MAUCr ~ Unit, data = MAUCr_glm_90, paired = FALSE)
mauc_test_glm_95 <- wilcox.test(MAUCr ~ Unit, data = MAUCr_glm_95, paired = FALSE)

### BAM Configuration ###
### Maxent ###
mauc_test_maxent_90_CB <- wilcox.test(MAUCr ~ Unit, data = MAUCr_maxent_90_CB, paired = FALSE)
mauc_test_maxent_90_HD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_maxent_90_HD, paired = FALSE)
mauc_test_maxent_90_WD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_maxent_90_WD, paired = FALSE)
mauc_test_maxent_95_CB <- wilcox.test(MAUCr ~ Unit, data = MAUCr_maxent_95_CB, paired = FALSE)
mauc_test_maxent_95_HD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_maxent_95_HD, paired = FALSE)
mauc_test_maxent_95_WD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_maxent_95_WD, paired = FALSE)
### MVE ###
mauc_test_mve_90_CB <- wilcox.test(MAUCr ~ Unit, data = MAUCr_mve_90_CB, paired = FALSE)
mauc_test_mve_90_HD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_mve_90_HD, paired = FALSE)
mauc_test_mve_90_WD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_mve_90_WD, paired = FALSE)
mauc_test_mve_95_CB <- wilcox.test(MAUCr ~ Unit, data = MAUCr_mve_95_CB, paired = FALSE)
mauc_test_mve_95_HD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_mve_95_HD, paired = FALSE)
mauc_test_mve_95_WD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_mve_95_WD, paired = FALSE)
### GLM ###
mauc_test_glm_90_CB <- wilcox.test(MAUCr ~ Unit, data = MAUCr_glm_90_CB, paired = FALSE)
mauc_test_glm_90_HD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_glm_90_HD, paired = FALSE)
mauc_test_glm_90_WD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_glm_90_WD, paired = FALSE)
mauc_test_glm_95_CB <- wilcox.test(MAUCr ~ Unit, data = MAUCr_glm_95_CB, paired = FALSE)
mauc_test_glm_95_HD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_glm_95_HD, paired = FALSE)
mauc_test_glm_95_WD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_glm_95_WD, paired = FALSE)
### Omission Rates ###
OR_test_maxent_90 <- wilcox.test(OR ~ Unit, data = OR_maxent_90, paired = FALSE)
OR_test_maxent_95 <- wilcox.test(OR ~ Unit, data = OR_maxent_95, paired = FALSE)
OR_test_mve_90 <- wilcox.test(OR ~ Unit, data = OR_mve_90, paired = FALSE)
OR_test_mve_95 <- wilcox.test(OR ~ Unit, data = OR_mve_95, paired = FALSE)
OR_test_glm_90 <- wilcox.test(OR ~ Unit, data = OR_glm_90, paired = FALSE)
OR_test_glm_95 <- wilcox.test(OR ~ Unit, data = OR_glm_95, paired = FALSE)

### BAM Configuration ###
### Maxent ###
OR_test_maxent_90_CB <- wilcox.test(OR ~ Unit, data = OR_maxent_90_CB, paired = FALSE)
OR_test_maxent_90_HD <- wilcox.test(OR ~ Unit, data = OR_maxent_90_HD, paired = FALSE)
OR_test_maxent_90_WD <- wilcox.test(OR ~ Unit, data = OR_maxent_90_WD, paired = FALSE)
OR_test_maxent_95_CB <- wilcox.test(OR ~ Unit, data = OR_maxent_95_CB, paired = FALSE)
OR_test_maxent_95_HD <- wilcox.test(OR ~ Unit, data = OR_maxent_95_HD, paired = FALSE)
OR_test_maxent_95_WD <- wilcox.test(OR ~ Unit, data = OR_maxent_95_WD, paired = FALSE)
### MVE ###
OR_test_mve_90_CB <- wilcox.test(OR ~ Unit, data = OR_mve_90_CB, paired = FALSE)
OR_test_mve_90_HD <- wilcox.test(OR ~ Unit, data = OR_mve_90_HD, paired = FALSE)
OR_test_mve_90_WD <- wilcox.test(OR ~ Unit, data = OR_mve_90_WD, paired = FALSE)
OR_test_mve_95_CB <- wilcox.test(OR ~ Unit, data = OR_mve_95_CB, paired = FALSE)
OR_test_mve_95_HD <- wilcox.test(OR ~ Unit, data = OR_mve_95_HD, paired = FALSE)
OR_test_mve_95_WD <- wilcox.test(OR ~ Unit, data = OR_mve_95_WD, paired = FALSE)
### GLM ###
OR_test_glm_90_CB <- wilcox.test(OR ~ Unit, data = OR_glm_90_CB, paired = FALSE)
OR_test_glm_90_HD <- wilcox.test(OR ~ Unit, data = OR_glm_90_HD, paired = FALSE)
OR_test_glm_90_WD <- wilcox.test(OR ~ Unit, data = OR_glm_90_WD, paired = FALSE)
OR_test_glm_95_CB <- wilcox.test(OR ~ Unit, data = OR_glm_95_CB, paired = FALSE)
OR_test_glm_95_HD <- wilcox.test(OR ~ Unit, data = OR_glm_95_HD, paired = FALSE)
OR_test_glm_95_WD <- wilcox.test(OR ~ Unit, data = OR_glm_95_WD, paired = FALSE)

### Construct a table combining different data frames ###
#### MAUCr Global ###
### Maxent ###
Me_U0_maxent_90 = median(MAUCr_maxent_90[MAUCr_maxent_90$Unit == "U0", ]$MAUCr)
Me_U1_maxent_90 = median(MAUCr_maxent_90[MAUCr_maxent_90$Unit == "U1", ]$MAUCr)
mauc_test_maxent_90 = mauc_test_maxent_90$p.value
mauc_maxent_90_df = data.frame(Model = "mauc_maxent_90_global", Me_U0 = Me_U0_maxent_90, Me_U1 = Me_U1_maxent_90, p = mauc_test_maxent_90)

Me_U0_maxent_95 = median(MAUCr_maxent_95[MAUCr_maxent_95$Unit == "U0", ]$MAUCr)
Me_U1_maxent_95 = median(MAUCr_maxent_95[MAUCr_maxent_95$Unit == "U1", ]$MAUCr)
mauc_test_maxent_95 = mauc_test_maxent_95$p.value
mauc_maxent_95_df = data.frame(Model = "mauc_maxent_95_global", Me_U0 = Me_U0_maxent_95, Me_U1 = Me_U1_maxent_95, p = mauc_test_maxent_95)

### MVE ###
Me_U0_mve_90 = median(MAUCr_mve_90[MAUCr_mve_90$Unit == "U0", ]$MAUCr)
Me_U1_mve_90 = median(MAUCr_mve_90[MAUCr_mve_90$Unit == "U1", ]$MAUCr)
mauc_test_mve_90 = mauc_test_mve_90$p.value
mauc_mve_90_df = data.frame(Model = "mauc_mve_90_global", Me_U0 = Me_U0_mve_90, Me_U1 = Me_U1_mve_90, p = mauc_test_mve_90)

Me_U0_mve_95 = median(MAUCr_mve_95[MAUCr_mve_95$Unit == "U0", ]$MAUCr)
Me_U1_mve_95 = median(MAUCr_mve_95[MAUCr_mve_95$Unit == "U1", ]$MAUCr)
mauc_test_mve_95 = mauc_test_mve_95$p.value
mauc_mve_95_df = data.frame(Model = "mauc_mve_95_global", Me_U0 = Me_U0_mve_95, Me_U1 = Me_U1_mve_95, p = mauc_test_mve_95)

### GLM ###
Me_U0_glm_90 = median(MAUCr_glm_90[MAUCr_glm_90$Unit == "U0", ]$MAUCr)
Me_U1_glm_90 = median(MAUCr_glm_90[MAUCr_glm_90$Unit == "U1", ]$MAUCr)
mauc_test_glm_90 = mauc_test_glm_90$p.value
mauc_glm_90_df = data.frame(Model = "mauc_glm_90_global", Me_U0 = Me_U0_glm_90, Me_U1 = Me_U1_glm_90, p = mauc_test_glm_90)

Me_U0_glm_95 = median(MAUCr_glm_95[MAUCr_glm_95$Unit == "U0", ]$MAUCr)
Me_U1_glm_95 = median(MAUCr_glm_95[MAUCr_glm_95$Unit == "U1", ]$MAUCr)
mauc_test_glm_95 = mauc_test_glm_95$p.value
mauc_glm_95_df = data.frame(Model = "mauc_glm_95_global", Me_U0 = Me_U0_glm_95, Me_U1 = Me_U1_glm_95, p = mauc_test_glm_95)

### BAM configuration ###
#### WD ###
### maxent ###
Me_U0_maxent_90_WD = median(MAUCr_maxent_90_WD[MAUCr_maxent_90_WD$Unit == "U0", ]$MAUCr)
Me_U1_maxent_90_WD = median(MAUCr_maxent_90_WD[MAUCr_maxent_90_WD$Unit == "U1", ]$MAUCr)
mauc_test_maxent_90_WD = mauc_test_maxent_90_WD$p.value
mauc_maxent_90_WD_df = data.frame(Model = "mauc_maxent_90_WD", Me_U0 = Me_U0_maxent_90_WD, Me_U1 = Me_U1_maxent_90_WD, p = mauc_test_maxent_90_WD)

Me_U0_maxent_95_WD = median(MAUCr_maxent_95_WD[MAUCr_maxent_95_WD$Unit == "U0", ]$MAUCr)
Me_U1_maxent_95_WD = median(MAUCr_maxent_95_WD[MAUCr_maxent_95_WD$Unit == "U1", ]$MAUCr)
mauc_test_maxent_95_WD = mauc_test_maxent_95_WD$p.value
mauc_maxent_95_WD_df = data.frame(Model = "mauc_maxent_95_WD", Me_U0 = Me_U0_maxent_95_WD, Me_U1 = Me_U1_maxent_95_WD, p = mauc_test_maxent_95_WD)

### mve ###
Me_U0_mve_90_WD = median(MAUCr_mve_90_WD[MAUCr_mve_90_WD$Unit == "U0", ]$MAUCr)
Me_U1_mve_90_WD = median(MAUCr_mve_90_WD[MAUCr_mve_90_WD$Unit == "U1", ]$MAUCr)
mauc_test_mve_90_WD = mauc_test_mve_90_WD$p.value
mauc_mve_90_WD_df = data.frame(Model = "mauc_mve_90_WD", Me_U0 = Me_U0_mve_90_WD, Me_U1 = Me_U1_mve_90_WD, p = mauc_test_mve_90_WD)

Me_U0_mve_95_WD = median(MAUCr_mve_95_WD[MAUCr_mve_95_WD$Unit == "U0", ]$MAUCr)
Me_U1_mve_95_WD = median(MAUCr_mve_95_WD[MAUCr_mve_95_WD$Unit == "U1", ]$MAUCr)
mauc_test_mve_95_WD = mauc_test_mve_95_WD$p.value
mauc_mve_95_WD_df = data.frame(Model = "mauc_mve_95_WD", Me_U0 = Me_U0_mve_95_WD, Me_U1 = Me_U1_mve_95_WD, p = mauc_test_mve_95_WD)

### glm ###
Me_U0_glm_90_WD = median(MAUCr_glm_90_WD[MAUCr_glm_90_WD$Unit == "U0", ]$MAUCr)
Me_U1_glm_90_WD = median(MAUCr_glm_90_WD[MAUCr_glm_90_WD$Unit == "U1", ]$MAUCr)
mauc_test_glm_90_WD = mauc_test_glm_90_WD$p.value
mauc_glm_90_WD_df = data.frame(Model = "mauc_glm_90_WD", Me_U0 = Me_U0_glm_90_WD, Me_U1 = Me_U1_glm_90_WD, p = mauc_test_glm_90_WD)

Me_U0_glm_95_WD = median(MAUCr_glm_95_WD[MAUCr_glm_95_WD$Unit == "U0", ]$MAUCr)
Me_U1_glm_95_WD = median(MAUCr_glm_95_WD[MAUCr_glm_95_WD$Unit == "U1", ]$MAUCr)
mauc_test_glm_95_WD = mauc_test_glm_95_WD$p.value
mauc_glm_95_WD_df = data.frame(Model = "mauc_glm_95_WD", Me_U0 = Me_U0_glm_95_WD, Me_U1 = Me_U1_glm_95_WD, p = mauc_test_glm_95_WD)
### CB ###
### maxent ###
Me_U0_maxent_90_CB = median(MAUCr_maxent_90_CB[MAUCr_maxent_90_CB$Unit == "U0", ]$MAUCr)
Me_U1_maxent_90_CB = median(MAUCr_maxent_90_CB[MAUCr_maxent_90_CB$Unit == "U1", ]$MAUCr)
mauc_test_maxent_90_CB = mauc_test_maxent_90_CB$p.value
mauc_maxent_90_CB_df = data.frame(Model = "mauc_maxent_90_CB", Me_U0 = Me_U0_maxent_90_CB, Me_U1 = Me_U1_maxent_90_CB, p = mauc_test_maxent_90_CB)

Me_U0_maxent_95_CB = median(MAUCr_maxent_95_CB[MAUCr_maxent_95_CB$Unit == "U0", ]$MAUCr)
Me_U1_maxent_95_CB = median(MAUCr_maxent_95_CB[MAUCr_maxent_95_CB$Unit == "U1", ]$MAUCr)
mauc_test_maxent_95_CB = mauc_test_maxent_95_CB$p.value
mauc_maxent_95_CB_df = data.frame(Model = "mauc_maxent_95_CB", Me_U0 = Me_U0_maxent_95_CB, Me_U1 = Me_U1_maxent_95_CB, p = mauc_test_maxent_95_CB)

### mve ###
Me_U0_mve_90_CB = median(MAUCr_mve_90_CB[MAUCr_mve_90_CB$Unit == "U0", ]$MAUCr)
Me_U1_mve_90_CB = median(MAUCr_mve_90_CB[MAUCr_mve_90_CB$Unit == "U1", ]$MAUCr)
mauc_test_mve_90_CB = mauc_test_mve_90_CB$p.value
mauc_mve_90_CB_df = data.frame(Model = "mauc_mve_90_CB", Me_U0 = Me_U0_mve_90_CB, Me_U1 = Me_U1_mve_90_CB, p = mauc_test_mve_90_CB)

Me_U0_mve_95_CB = median(MAUCr_mve_95_CB[MAUCr_mve_95_CB$Unit == "U0", ]$MAUCr)
Me_U1_mve_95_CB = median(MAUCr_mve_95_CB[MAUCr_mve_95_CB$Unit == "U1", ]$MAUCr)
mauc_test_mve_95_CB = mauc_test_mve_95_CB$p.value
mauc_mve_95_CB_df = data.frame(Model = "mauc_mve_95_CB", Me_U0 = Me_U0_mve_95_CB, Me_U1 = Me_U1_mve_95_CB, p = mauc_test_mve_95_CB)

### glm ###
Me_U0_glm_90_CB = median(MAUCr_glm_90_CB[MAUCr_glm_90_CB$Unit == "U0", ]$MAUCr)
Me_U1_glm_90_CB = median(MAUCr_glm_90_CB[MAUCr_glm_90_CB$Unit == "U1", ]$MAUCr)
mauc_test_glm_90_CB = mauc_test_glm_90_CB$p.value
mauc_glm_90_CB_df = data.frame(Model = "mauc_glm_90_CB", Me_U0 = Me_U0_glm_90_CB, Me_U1 = Me_U1_glm_90_CB, p = mauc_test_glm_90_CB)

Me_U0_glm_95_CB = median(MAUCr_glm_95_CB[MAUCr_glm_95_CB$Unit == "U0", ]$MAUCr)
Me_U1_glm_95_CB = median(MAUCr_glm_95_CB[MAUCr_glm_95_CB$Unit == "U1", ]$MAUCr)
mauc_test_glm_95_CB = mauc_test_glm_95_CB$p.value
mauc_glm_95_CB_df = data.frame(Model = "mauc_glm_95_CB", Me_U0 = Me_U0_glm_95_CB, Me_U1 = Me_U1_glm_95_CB, p = mauc_test_glm_95_CB)

#### HD ###
### maxent ###
Me_U0_maxent_90_HD = median(MAUCr_maxent_90_HD[MAUCr_maxent_90_HD$Unit == "U0", ]$MAUCr)
Me_U1_maxent_90_HD = median(MAUCr_maxent_90_HD[MAUCr_maxent_90_HD$Unit == "U1", ]$MAUCr)
mauc_test_maxent_90_HD = mauc_test_maxent_90_HD$p.value
mauc_maxent_90_HD_df = data.frame(Model = "mauc_maxent_90_HD", Me_U0 = Me_U0_maxent_90_HD, Me_U1 = Me_U1_maxent_90_HD, p = mauc_test_maxent_90_HD)

Me_U0_maxent_95_HD = median(MAUCr_maxent_95_HD[MAUCr_maxent_95_HD$Unit == "U0", ]$MAUCr)
Me_U1_maxent_95_HD = median(MAUCr_maxent_95_HD[MAUCr_maxent_95_HD$Unit == "U1", ]$MAUCr)
mauc_test_maxent_95_HD = mauc_test_maxent_95_HD$p.value
mauc_maxent_95_HD_df = data.frame(Model = "mauc_maxent_95_HD", Me_U0 = Me_U0_maxent_95_HD, Me_U1 = Me_U1_maxent_95_HD, p = mauc_test_maxent_95_HD)

### mve ###
Me_U0_mve_90_HD = median(MAUCr_mve_90_HD[MAUCr_mve_90_HD$Unit == "U0", ]$MAUCr)
Me_U1_mve_90_HD = median(MAUCr_mve_90_HD[MAUCr_mve_90_HD$Unit == "U1", ]$MAUCr)
mauc_test_mve_90_HD = mauc_test_mve_90_HD$p.value
mauc_mve_90_HD_df = data.frame(Model = "mauc_mve_90_HD", Me_U0 = Me_U0_mve_90_HD, Me_U1 = Me_U1_mve_90_HD, p = mauc_test_mve_90_HD)

Me_U0_mve_95_HD = median(MAUCr_mve_95_HD[MAUCr_mve_95_HD$Unit == "U0", ]$MAUCr)
Me_U1_mve_95_HD = median(MAUCr_mve_95_HD[MAUCr_mve_95_HD$Unit == "U1", ]$MAUCr)
mauc_test_mve_95_HD = mauc_test_mve_95_HD$p.value
mauc_mve_95_HD_df = data.frame(Model = "mauc_mve_95_HD", Me_U0 = Me_U0_mve_95_HD, Me_U1 = Me_U1_mve_95_HD, p = mauc_test_mve_95_HD)

### glm ###
Me_U0_glm_90_HD = median(MAUCr_glm_90_HD[MAUCr_glm_90_HD$Unit == "U0", ]$MAUCr)
Me_U1_glm_90_HD = median(MAUCr_glm_90_HD[MAUCr_glm_90_HD$Unit == "U1", ]$MAUCr)
mauc_test_glm_90_HD = mauc_test_glm_90_HD$p.value
mauc_glm_90_HD_df = data.frame(Model = "mauc_glm_90_HD", Me_U0 = Me_U0_glm_90_HD, Me_U1 = Me_U1_glm_90_HD, p = mauc_test_glm_90_HD)

Me_U0_glm_95_HD = median(MAUCr_glm_95_HD[MAUCr_glm_95_HD$Unit == "U0", ]$MAUCr)
Me_U1_glm_95_HD = median(MAUCr_glm_95_HD[MAUCr_glm_95_HD$Unit == "U1", ]$MAUCr)
mauc_test_glm_95_HD = mauc_test_glm_95_HD$p.value
mauc_glm_95_HD_df = data.frame(Model = "mauc_glm_95_HD", Me_U0 = Me_U0_glm_95_HD, Me_U1 = Me_U1_glm_95_HD, p = mauc_test_glm_95_HD)

#### OR Global ###
### Maxent ###
Me_U0_maxent_90 = median(OR_maxent_90[OR_maxent_90$Unit == "U0", ]$OR)
Me_U1_maxent_90 = median(OR_maxent_90[OR_maxent_90$Unit == "U1", ]$OR)
OR_test_maxent_90 = OR_test_maxent_90$p.value
OR_maxent_90_df = data.frame(Model = "OR_maxent_90_global", Me_U0 = Me_U0_maxent_90, Me_U1 = Me_U1_maxent_90, p = OR_test_maxent_90)

Me_U0_maxent_95 = median(OR_maxent_95[OR_maxent_95$Unit == "U0", ]$OR)
Me_U1_maxent_95 = median(OR_maxent_95[OR_maxent_95$Unit == "U1", ]$OR)
OR_test_maxent_95 = OR_test_maxent_95$p.value
OR_maxent_95_df = data.frame(Model = "OR_maxent_95_global", Me_U0 = Me_U0_maxent_95, Me_U1 = Me_U1_maxent_95, p = OR_test_maxent_95)

### MVE ###
Me_U0_mve_90 = median(OR_mve_90[OR_mve_90$Unit == "U0", ]$OR)
Me_U1_mve_90 = median(OR_mve_90[OR_mve_90$Unit == "U1", ]$OR)
OR_test_mve_90 = OR_test_mve_90$p.value
OR_mve_90_df = data.frame(Model = "OR_mve_90_global", Me_U0 = Me_U0_mve_90, Me_U1 = Me_U1_mve_90, p = OR_test_mve_90)

Me_U0_mve_95 = median(OR_mve_95[OR_mve_95$Unit == "U0", ]$OR)
Me_U1_mve_95 = median(OR_mve_95[OR_mve_95$Unit == "U1", ]$OR)
OR_test_mve_95 = OR_test_mve_95$p.value
OR_mve_95_df = data.frame(Model = "OR_mve_95_global", Me_U0 = Me_U0_mve_95, Me_U1 = Me_U1_mve_95, p = OR_test_mve_95)

### GLM ###
Me_U0_glm_90 = median(OR_glm_90[OR_glm_90$Unit == "U0", ]$OR)
Me_U1_glm_90 = median(OR_glm_90[OR_glm_90$Unit == "U1", ]$OR)
OR_test_glm_90 = OR_test_glm_90$p.value
OR_glm_90_df = data.frame(Model = "OR_glm_90_global", Me_U0 = Me_U0_glm_90, Me_U1 = Me_U1_glm_90, p = OR_test_glm_90)

Me_U0_glm_95 = median(OR_glm_95[OR_glm_95$Unit == "U0", ]$OR)
Me_U1_glm_95 = median(OR_glm_95[OR_glm_95$Unit == "U1", ]$OR)
OR_test_glm_95 = OR_test_glm_95$p.value
OR_glm_95_df = data.frame(Model = "OR_glm_95_global", Me_U0 = Me_U0_glm_95, Me_U1 = Me_U1_glm_95, p = OR_test_glm_95)

### BAM configuration ###
#### WD ###
### maxent ###
Me_U0_maxent_90_WD = median(OR_maxent_90_WD[OR_maxent_90_WD$Unit == "U0", ]$OR)
Me_U1_maxent_90_WD = median(OR_maxent_90_WD[OR_maxent_90_WD$Unit == "U1", ]$OR)
OR_test_maxent_90_WD = OR_test_maxent_90_WD$p.value
OR_maxent_90_WD_df = data.frame(Model = "OR_maxent_90_WD", Me_U0 = Me_U0_maxent_90_WD, Me_U1 = Me_U1_maxent_90_WD, p = OR_test_maxent_90_WD)

Me_U0_maxent_95_WD = median(OR_maxent_95_WD[OR_maxent_95_WD$Unit == "U0", ]$OR)
Me_U1_maxent_95_WD = median(OR_maxent_95_WD[OR_maxent_95_WD$Unit == "U1", ]$OR)
OR_test_maxent_95_WD = OR_test_maxent_95_WD$p.value
OR_maxent_95_WD_df = data.frame(Model = "OR_maxent_95_WD", Me_U0 = Me_U0_maxent_95_WD, Me_U1 = Me_U1_maxent_95_WD, p = OR_test_maxent_95_WD)

### mve ###
Me_U0_mve_90_WD = median(OR_mve_90_WD[OR_mve_90_WD$Unit == "U0", ]$OR)
Me_U1_mve_90_WD = median(OR_mve_90_WD[OR_mve_90_WD$Unit == "U1", ]$OR)
OR_test_mve_90_WD = OR_test_mve_90_WD$p.value
OR_mve_90_WD_df = data.frame(Model = "OR_mve_90_WD", Me_U0 = Me_U0_mve_90_WD, Me_U1 = Me_U1_mve_90_WD, p = OR_test_mve_90_WD)

Me_U0_mve_95_WD = median(OR_mve_95_WD[OR_mve_95_WD$Unit == "U0", ]$OR)
Me_U1_mve_95_WD = median(OR_mve_95_WD[OR_mve_95_WD$Unit == "U1", ]$OR)
OR_test_mve_95_WD = OR_test_mve_95_WD$p.value
OR_mve_95_WD_df = data.frame(Model = "OR_mve_95_WD", Me_U0 = Me_U0_mve_95_WD, Me_U1 = Me_U1_mve_95_WD, p = OR_test_mve_95_WD)

### glm ###
Me_U0_glm_90_WD = median(OR_glm_90_WD[OR_glm_90_WD$Unit == "U0", ]$OR)
Me_U1_glm_90_WD = median(OR_glm_90_WD[OR_glm_90_WD$Unit == "U1", ]$OR)
OR_test_glm_90_WD = OR_test_glm_90_WD$p.value
OR_glm_90_WD_df = data.frame(Model = "OR_glm_90_WD", Me_U0 = Me_U0_glm_90_WD, Me_U1 = Me_U1_glm_90_WD, p = OR_test_glm_90_WD)

Me_U0_glm_95_WD = median(OR_glm_95_WD[OR_glm_95_WD$Unit == "U0", ]$OR)
Me_U1_glm_95_WD = median(OR_glm_95_WD[OR_glm_95_WD$Unit == "U1", ]$OR)
OR_test_glm_95_WD = OR_test_glm_95_WD$p.value
OR_glm_95_WD_df = data.frame(Model = "OR_glm_95_WD", Me_U0 = Me_U0_glm_95_WD, Me_U1 = Me_U1_glm_95_WD, p = OR_test_glm_95_WD)
### CB ###
### maxent ###
Me_U0_maxent_90_CB = median(OR_maxent_90_CB[OR_maxent_90_CB$Unit == "U0", ]$OR)
Me_U1_maxent_90_CB = median(OR_maxent_90_CB[OR_maxent_90_CB$Unit == "U1", ]$OR)
OR_test_maxent_90_CB = OR_test_maxent_90_CB$p.value
OR_maxent_90_CB_df = data.frame(Model = "OR_maxent_90_CB", Me_U0 = Me_U0_maxent_90_CB, Me_U1 = Me_U1_maxent_90_CB, p = OR_test_maxent_90_CB)

Me_U0_maxent_95_CB = median(OR_maxent_95_CB[OR_maxent_95_CB$Unit == "U0", ]$OR)
Me_U1_maxent_95_CB = median(OR_maxent_95_CB[OR_maxent_95_CB$Unit == "U1", ]$OR)
OR_test_maxent_95_CB = OR_test_maxent_95_CB$p.value
OR_maxent_95_CB_df = data.frame(Model = "OR_maxent_95_CB", Me_U0 = Me_U0_maxent_95_CB, Me_U1 = Me_U1_maxent_95_CB, p = OR_test_maxent_95_CB)

### mve ###
Me_U0_mve_90_CB = median(OR_mve_90_CB[OR_mve_90_CB$Unit == "U0", ]$OR)
Me_U1_mve_90_CB = median(OR_mve_90_CB[OR_mve_90_CB$Unit == "U1", ]$OR)
OR_test_mve_90_CB = OR_test_mve_90_CB$p.value
OR_mve_90_CB_df = data.frame(Model = "OR_mve_90_CB", Me_U0 = Me_U0_mve_90_CB, Me_U1 = Me_U1_mve_90_CB, p = OR_test_mve_90_CB)

Me_U0_mve_95_CB = median(OR_mve_95_CB[OR_mve_95_CB$Unit == "U0", ]$OR)
Me_U1_mve_95_CB = median(OR_mve_95_CB[OR_mve_95_CB$Unit == "U1", ]$OR)
OR_test_mve_95_CB = OR_test_mve_95_CB$p.value
OR_mve_95_CB_df = data.frame(Model = "OR_mve_95_CB", Me_U0 = Me_U0_mve_95_CB, Me_U1 = Me_U1_mve_95_CB, p = OR_test_mve_95_CB)

### glm ###
Me_U0_glm_90_CB = median(OR_glm_90_CB[OR_glm_90_CB$Unit == "U0", ]$OR)
Me_U1_glm_90_CB = median(OR_glm_90_CB[OR_glm_90_CB$Unit == "U1", ]$OR)
OR_test_glm_90_CB = OR_test_glm_90_CB$p.value
OR_glm_90_CB_df = data.frame(Model = "OR_glm_90_CB", Me_U0 = Me_U0_glm_90_CB, Me_U1 = Me_U1_glm_90_CB, p = OR_test_glm_90_CB)

Me_U0_glm_95_CB = median(OR_glm_95_CB[OR_glm_95_CB$Unit == "U0", ]$OR)
Me_U1_glm_95_CB = median(OR_glm_95_CB[OR_glm_95_CB$Unit == "U1", ]$OR)
OR_test_glm_95_CB = OR_test_glm_95_CB$p.value
OR_glm_95_CB_df = data.frame(Model = "OR_glm_95_CB", Me_U0 = Me_U0_glm_95_CB, Me_U1 = Me_U1_glm_95_CB, p = OR_test_glm_95_CB)

#### HD ###
### maxent ###
Me_U0_maxent_90_HD = median(OR_maxent_90_HD[OR_maxent_90_HD$Unit == "U0", ]$OR)
Me_U1_maxent_90_HD = median(OR_maxent_90_HD[OR_maxent_90_HD$Unit == "U1", ]$OR)
OR_test_maxent_90_HD = OR_test_maxent_90_HD$p.value
OR_maxent_90_HD_df = data.frame(Model = "OR_maxent_90_HD", Me_U0 = Me_U0_maxent_90_HD, Me_U1 = Me_U1_maxent_90_HD, p = OR_test_maxent_90_HD)

Me_U0_maxent_95_HD = median(OR_maxent_95_HD[OR_maxent_95_HD$Unit == "U0", ]$OR)
Me_U1_maxent_95_HD = median(OR_maxent_95_HD[OR_maxent_95_HD$Unit == "U1", ]$OR)
OR_test_maxent_95_HD = OR_test_maxent_95_HD$p.value
OR_maxent_95_HD_df = data.frame(Model = "OR_maxent_95_HD", Me_U0 = Me_U0_maxent_95_HD, Me_U1 = Me_U1_maxent_95_HD, p = OR_test_maxent_95_HD)

### mve ###
Me_U0_mve_90_HD = median(OR_mve_90_HD[OR_mve_90_HD$Unit == "U0", ]$OR)
Me_U1_mve_90_HD = median(OR_mve_90_HD[OR_mve_90_HD$Unit == "U1", ]$OR)
OR_test_mve_90_HD = OR_test_mve_90_HD$p.value
OR_mve_90_HD_df = data.frame(Model = "OR_mve_90_HD", Me_U0 = Me_U0_mve_90_HD, Me_U1 = Me_U1_mve_90_HD, p = OR_test_mve_90_HD)

Me_U0_mve_95_HD = median(OR_mve_95_HD[OR_mve_95_HD$Unit == "U0", ]$OR)
Me_U1_mve_95_HD = median(OR_mve_95_HD[OR_mve_95_HD$Unit == "U1", ]$OR)
OR_test_mve_95_HD = OR_test_mve_95_HD$p.value
OR_mve_95_HD_df = data.frame(Model = "OR_mve_95_HD", Me_U0 = Me_U0_mve_95_HD, Me_U1 = Me_U1_mve_95_HD, p = OR_test_mve_95_HD)

### glm ###
Me_U0_glm_90_HD = median(OR_glm_90_HD[OR_glm_90_HD$Unit == "U0", ]$OR)
Me_U1_glm_90_HD = median(OR_glm_90_HD[OR_glm_90_HD$Unit == "U1", ]$OR)
OR_test_glm_90_HD = OR_test_glm_90_HD$p.value
OR_glm_90_HD_df = data.frame(Model = "OR_glm_90_HD", Me_U0 = Me_U0_glm_90_HD, Me_U1 = Me_U1_glm_90_HD, p = OR_test_glm_90_HD)

Me_U0_glm_95_HD = median(OR_glm_95_HD[OR_glm_95_HD$Unit == "U0", ]$OR)
Me_U1_glm_95_HD = median(OR_glm_95_HD[OR_glm_95_HD$Unit == "U1", ]$OR)
OR_test_glm_95_HD = OR_test_glm_95_HD$p.value
OR_glm_95_HD_df = data.frame(Model = "OR_glm_95_HD", Me_U0 = Me_U0_glm_95_HD, Me_U1 = Me_U1_glm_95_HD, p = OR_test_glm_95_HD)

df_final = rbind(mauc_maxent_90_df, mauc_maxent_95_df, mauc_mve_90_df, mauc_mve_95_df, mauc_glm_90_df, mauc_glm_95_df, mauc_maxent_90_WD_df, mauc_maxent_95_WD_df,
				 mauc_mve_90_WD_df, mauc_mve_95_WD_df, mauc_glm_90_WD_df, mauc_glm_95_WD_df, mauc_maxent_90_CB_df, mauc_maxent_95_CB_df, mauc_mve_90_CB_df, 
				 mauc_mve_95_CB_df, mauc_glm_90_CB_df, mauc_glm_95_CB_df, mauc_maxent_90_HD_df, mauc_maxent_95_HD_df, mauc_mve_90_HD_df, mauc_mve_95_HD_df, 
				 mauc_glm_90_HD_df, mauc_glm_95_HD_df, OR_maxent_90_df, OR_maxent_95_df, OR_mve_90_df, OR_mve_95_df, OR_glm_90_df, OR_glm_95_df, OR_maxent_90_WD_df, 
				 OR_maxent_95_WD_df, OR_mve_90_WD_df, OR_mve_95_WD_df, OR_glm_90_WD_df, OR_glm_95_WD_df, OR_maxent_90_CB_df, OR_maxent_95_CB_df, OR_mve_90_CB_df, 
				 OR_mve_95_CB_df, OR_glm_90_CB_df, OR_glm_95_CB_df, OR_maxent_90_HD_df, OR_maxent_95_HD_df, OR_mve_90_HD_df, OR_mve_95_HD_df, OR_glm_90_HD_df, 
				 OR_glm_95_HD_df)

setwd("D:/6_Maestria/8_Draft_KLR/Tables")

write.csv(df_final, paste0("Table1.csv"), row.names = FALSE)