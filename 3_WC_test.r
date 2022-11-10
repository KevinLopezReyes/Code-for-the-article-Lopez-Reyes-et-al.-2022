
### Script fot the Wilcoxon Signed-Rank Test ###
### Load the records ###
### MAUC Ratio ###
### Global ###
MAUCr_maxent_90 <- read.csv("YOUR PATH/Evaluations/maucr_maxent_90.csv")
MAUCr_maxent_95 <- read.csv("YOUR PATH/Evaluations/maucr_maxent_95.csv")
MAUCr_mve_90 <- read.csv("YOUR PATH/Evaluations/maucr_mve_90.csv")
MAUCr_mve_95 <- read.csv("YOUR PATH/Evaluations/maucr_mve_95.csv")
### BAM Configuration ###
### Maxent ###
MAUCr_maxent_90_CB <- read.csv("YOUR PATH/Evaluations/maucr_maxent_90_CB.csv")
MAUCr_maxent_90_HD <- read.csv("YOUR PATH/Evaluations/maucr_maxent_90_HD.csv")
MAUCr_maxent_90_WD <- read.csv("YOUR PATH/Evaluations/maucr_maxent_90_WD.csv")
MAUCr_maxent_95_CB <- read.csv("YOUR PATH/Evaluations/maucr_maxent_95_CB.csv")
MAUCr_maxent_95_HD <- read.csv("YOUR PATH/Evaluations/maucr_maxent_95_HD.csv")
MAUCr_maxent_95_WD <- read.csv("YOUR PATH/Evaluations/maucr_maxent_95_WD.csv")
### MVE ###
MAUCr_mve_90_CB <- read.csv("YOUR PATH/Evaluations/maucr_mve_90_CB.csv")
MAUCr_mve_90_HD <- read.csv("YOUR PATH/Evaluations/maucr_mve_90_HD.csv")
MAUCr_mve_90_WD <- read.csv("YOUR PATH/Evaluations/maucr_mve_90_WD.csv")
MAUCr_mve_95_CB <- read.csv("YOUR PATH/Evaluations/maucr_mve_95_CB.csv")
MAUCr_mve_95_HD <- read.csv("YOUR PATH/Evaluations/maucr_mve_95_HD.csv")
MAUCr_mve_95_WD <- read.csv("YOUR PATH/Evaluations/maucr_mve_95_WD.csv")

### Omission Rates ###
### Global ###
OR_maxent_90 <- read.csv("YOUR PATH/Evaluations/OR_maxent_90.csv")
OR_maxent_95 <- read.csv("YOUR PATH/Evaluations/OR_maxent_95.csv")
OR_mve_90 <- read.csv("YOUR PATH/Evaluations/OR_mve_90.csv")
OR_mve_95 <- read.csv("YOUR PATH/Evaluations/OR_mve_95.csv")
### BAM Configuration ###
### Maxent ###
OR_maxent_90_CB <- read.csv("YOUR PATH/Evaluations/OR_maxent_90_CB.csv")
OR_maxent_90_HD <- read.csv("YOUR PATH/Evaluations/OR_maxent_90_HD.csv")
OR_maxent_90_WD <- read.csv("YOUR PATH/Evaluations/OR_maxent_90_WD.csv")
OR_maxent_95_CB <- read.csv("YOUR PATH/Evaluations/OR_maxent_95_CB.csv")
OR_maxent_95_HD <- read.csv("YOUR PATH/Evaluations/OR_maxent_95_HD.csv")
OR_maxent_95_WD <- read.csv("YOUR PATH/Evaluations/OR_maxent_95_WD.csv")
### MVE ###
OR_mve_90_CB <- read.csv("YOUR PATH/Evaluations/OR_mve_90_CB.csv")
OR_mve_90_HD <- read.csv("YOUR PATH/Evaluations/OR_mve_90_HD.csv")
OR_mve_90_WD <- read.csv("YOUR PATH/Evaluations/OR_mve_90_WD.csv")
OR_mve_95_CB <- read.csv("YOUR PATH/Evaluations/OR_mve_95_CB.csv")
OR_mve_95_HD <- read.csv("YOUR PATH/Evaluations/OR_mve_95_HD.csv")
OR_mve_95_WD <- read.csv("YOUR PATH/Evaluations/OR_mve_95_WD.csv")

### Wilcoxon Test ###
### MAUC Ratio ###
mauc_test_maxent_90 <- wilcox.test(MAUCr ~ Unit, data = MAUCr_maxent_90, paired = TRUE)
mauc_test_maxent_90 # 0.18
mauc_test_maxent_95 <- wilcox.test(MAUCr ~ Unit, data = MAUCr_maxent_95, paired = TRUE)
mauc_test_maxent_95 # 0.02*
mauc_test_mve_90 <- wilcox.test(MAUCr ~ Unit, data = MAUCr_mve_90, paired = TRUE)
mauc_test_mve_90 # 0.02*
mauc_test_mve_95 <- wilcox.test(MAUCr ~ Unit, data = MAUCr_mve_95, paired = TRUE)
mauc_test_mve_95 # 0.0006327*
### BAM Configuration ###
### Maxent ###
mauc_test_maxent_90_CB <- wilcox.test(MAUCr ~ Unit, data = MAUCr_maxent_90_CB, paired = TRUE)
mauc_test_maxent_90_CB # 0.4648
mauc_test_maxent_90_HD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_maxent_90_HD, paired = TRUE)
mauc_test_maxent_90_HD # 0.9453
mauc_test_maxent_90_WD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_maxent_90_WD, paired = TRUE)
mauc_test_maxent_90_WD # 0.2188
mauc_test_maxent_95_CB <- wilcox.test(MAUCr ~ Unit, data = MAUCr_maxent_95_CB, paired = TRUE)
mauc_test_maxent_95_CB # 0.3652
mauc_test_maxent_95_HD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_maxent_95_HD, paired = TRUE)
mauc_test_maxent_95_HD # 0.4609
mauc_test_maxent_95_WD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_maxent_95_WD, paired = TRUE)
mauc_test_maxent_95_WD # 0.03125*
### MVE ###
mauc_test_mve_90_CB <- wilcox.test(MAUCr ~ Unit, data = MAUCr_mve_90_CB, paired = TRUE)
mauc_test_mve_90_CB # 0.02493*
mauc_test_mve_90_HD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_mve_90_HD, paired = TRUE)
mauc_test_mve_90_HD # 0.5469
mauc_test_mve_90_WD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_mve_90_WD, paired = TRUE)
mauc_test_mve_90_WD # 0.04688*
mauc_test_mve_95_CB <- wilcox.test(MAUCr ~ Unit, data = MAUCr_mve_95_CB, paired = TRUE)
mauc_test_mve_95_CB # 0.01083*
mauc_test_mve_95_HD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_mve_95_HD, paired = TRUE)
mauc_test_mve_95_HD # 0.7422
mauc_test_mve_95_WD <- wilcox.test(MAUCr ~ Unit, data = MAUCr_mve_95_WD, paired = TRUE)
mauc_test_mve_95_WD # 0.01563*

### Omission Rates ###
or_test_maxent_90 <- wilcox.test(OR ~ Unit, data = OR_maxent_90, paired = TRUE)
or_test_maxent_90 # 0.33
or_test_maxent_95 <- wilcox.test(OR ~ Unit, data = OR_maxent_95, paired = TRUE)
or_test_maxent_95 # 0.01*
or_test_mve_90 <- wilcox.test(OR ~ Unit, data = OR_mve_90, paired = TRUE)
or_test_mve_90 # 0.0002412
or_test_mve_95 <- wilcox.test(OR ~ Unit, data = OR_mve_95, paired = TRUE)
or_test_mve_95 #  0.01

### BAM Configuration ###
### Maxent ###
or_test_maxent_90_CB <- wilcox.test(OR ~ Unit, data = OR_maxent_90_CB, paired = TRUE)
or_test_maxent_90_CB # 0.89
or_test_maxent_90_HD <- wilcox.test(OR ~ Unit, data = OR_maxent_90_HD, paired = TRUE)
or_test_maxent_90_HD # 0.23
or_test_maxent_90_WD <- wilcox.test(OR ~ Unit, data = OR_maxent_90_WD, paired = TRUE)
or_test_maxent_90_WD # 0.43
or_test_maxent_95_CB <- wilcox.test(OR ~ Unit, data = OR_maxent_95_CB, paired = TRUE)
or_test_maxent_95_CB # 0.55
or_test_maxent_95_HD <- wilcox.test(OR ~ Unit, data = OR_maxent_95_HD, paired = TRUE)
or_test_maxent_95_HD # 0.14
or_test_maxent_95_WD <- wilcox.test(OR ~ Unit, data = OR_maxent_95_WD, paired = TRUE)
or_test_maxent_95_WD #  0.03*
### MVE ###
or_test_mve_90_CB <- wilcox.test(OR ~ Unit, data = OR_mve_90_CB, paired = TRUE)
or_test_mve_90_CB # 0.09
or_test_mve_90_HD <- wilcox.test(OR ~ Unit, data = OR_mve_90_HD, paired = TRUE)
or_test_mve_90_HD # 0.03*
or_test_mve_90_WD <- wilcox.test(OR ~ Unit, data = OR_mve_90_WD, paired = TRUE)
or_test_mve_90_WD # 0.01*
or_test_mve_95_CB <- wilcox.test(OR ~ Unit, data = OR_mve_95_CB, paired = TRUE)
or_test_mve_95_CB # 0.83
or_test_mve_95_HD <- wilcox.test(OR ~ Unit, data = OR_mve_95_HD, paired = TRUE)
or_test_mve_95_HD # 0.10
or_test_mve_95_WD <- wilcox.test(OR ~ Unit, data = OR_mve_95_WD, paired = TRUE)
or_test_mve_95_WD # 0.02*