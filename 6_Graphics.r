
### Script for the graphics ###
### Load the packages ###
library(ggplot2)
library(plyr)
library(patchwork)

### Load the data ###
S2 <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/MAUCr.csv")
S5 <- read.csv("D:/6_Maestria/8_Draft_KLR/Data_accesability/Evaluations/OR.csv")

### Figure 1 ###
MAUCr <- ggplot(S2, aes(x = AT, y = MAUCr, fill = Unit)) +
	scale_fill_manual(values=c("#008F96", "#050094")) +
	geom_boxplot(alpha = 0.4, fatten = 1.5, lwd = 0.3, outlier.size = 0.9, outlier.alpha = 1) + 
	labs(x = "", y = "Mean AUC ratio") + theme_bw() +
	theme(legend.position = c(0.09, 0.22), legend.background = element_blank(), legend.title = element_blank()) + 
	theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background= element_blank()) 


OR <- ggplot(S5, aes(x = AT, y = OR, fill = Unit)) +
	scale_fill_manual(values=c("#008F96", "#050094")) +
	geom_boxplot(alpha = 0.4, fatten = 1.5, lwd = 0.3, outlier.size = 0.9, outlier.alpha = 1) + 
	labs(x = "", y = "Omission rate") + theme_bw() + 
	theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background= element_blank()) + 
	theme(legend.position="none")

MAUCr + OR

setwd("D:/6_Maestria/8_Draft_KLR/figures")
ggsave("Fig1.tiff", width = 10, height=4, dpi = 1000)

## Figure 2 ##
S2$Configuration <- factor(S2$Configuration,
    levels = c("WD", "CB", "HD"),ordered = TRUE)
	
S5$Configuration <- factor(S5$Configuration,
    levels = c("WD", "CB", "HD"),ordered = TRUE)
	
### Figure 1 ###
MAUCr_c <- ggplot(S2, aes(x = AT, y = MAUCr, fill = Unit)) +
	scale_fill_manual(values=c("#008F96", "#050094")) +
	geom_boxplot(alpha = 0.4, fatten = 1.5, lwd = 0.3, outlier.size = 0.9, outlier.alpha = 1) + 
	labs(x = "", y = "Mean AUC ratio") + theme_bw() + facet_grid(~Configuration) +
	theme(legend.position = c(0.04, 0.22), legend.background = element_blank(), legend.title = element_blank()) + 
	theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background= element_blank()) + 
	theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

OR_c <- ggplot(S5, aes(x = AT, y = OR, fill = Unit)) +
	scale_fill_manual(values=c("#008F96", "#050094")) +
	geom_boxplot(alpha = 0.4, fatten = 1.5, lwd = 0.3, outlier.size = 0.9, outlier.alpha = 1) + 
	labs(x = "", y = "Omission rate") + theme_bw() + facet_grid(~Configuration) + 
	theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background= element_blank()) + 
	theme(legend.position="none") + 
	theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1))

MAUCr_c / OR_
setwd("D:/6_Maestria/8_Draft_KLR/figures")
ggsave("Fig2.tiff", width = 9, height = 6, dpi = 1000)

	