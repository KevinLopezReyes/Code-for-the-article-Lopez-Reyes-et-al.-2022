
### Script for the graphics ###
### Load the packages ###
library(ggplot2)
library(plyr)
library(patchwork)

### Load the data ###
S2 <- read.csv("YOUR PATH/Evaluations/MAUCr.csv")
S5 <- read.csv("YOUR PATH/Evaluations/OR.csv")

### Figure 1 ###
MAUCr <- ggplot(S2, aes(x = AT, y = MAUCr, fill = Unit)) +
	scale_fill_manual(values=c("#008F96", "#050094")) +
	geom_boxplot(alpha = 0.2, fatten = 1.5, lwd = 0.3, outlier.size = 0.9, outlier.alpha = 1) + 
	labs(x = "", y = "") + ggtitle("A) Mean AUC ratio") + theme_classic() +
	theme(legend.position = c(0.09, 0.22), legend.background = element_blank(), legend.title = element_blank()) + 
	theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background= element_blank()) 


OR <- ggplot(S5, aes(x = AT, y = OR, fill = Unit)) +
	scale_fill_manual(values=c("#008F96", "#050094")) +
	geom_boxplot(alpha = 0.2, fatten = 1.5, lwd = 0.3, outlier.size = 0.9, outlier.alpha = 1) + 
	labs(x = "", y = "") + ggtitle("B) Omission rate") + theme_classic() + 
	theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(), panel.background= element_blank()) + 
	theme(legend.position="none")

MAUCr + OR

setwd("YOUR PATH/figures")
ggsave("Fig1.tiff", width=10, height=4, dpi = 600)
ggsave("Fig1.pdf", width=10, height=4, dpi = 600)

## Figure 2 ##
S2$Configuration <- factor(S2$Configuration,
    levels = c("WD", "CB", "HD"),ordered = TRUE)
mu <- aggregate(MAUCr~Unit * AT + Configuration, S2, median)
BAM <- ggplot(S2, aes(x=MAUCr, fill = Unit)) +
	scale_fill_manual(values=c("#008F96", "#050094")) +
  geom_density(alpha = 0.15) + geom_vline(data = mu, aes(xintercept=MAUCr, color = Unit), linetype="dashed", size=1) +
  scale_colour_manual(values=c("#008F96", "#050094")) +
  facet_grid(Configuration~AT) +
 labs(x = "Mean AUC ratio", y = "Density") + theme_bw() + theme(panel.grid.major = element_blank(), 
 panel.grid.minor = element_blank(), panel.background= element_blank(), legend.position = c(0.03, 0.932))
BAM  

setwd("YOUR PATH/Figures")
ggsave("Fig2.tiff", width=15, height=8, dpi = 600)
ggsave("Fig2.pdf", width=15, height=8, dpi = 600)

### Figure 3 ###
S5$Configuration <- factor(S5$Configuration,
    levels = c("WD", "CB", "HD"),ordered = TRUE)
mu <- aggregate(OR~Unit * AT + Configuration, s5, median)
mu1<- aggregate(OR~Unit * AT, S5, median)
BAM_o <- ggplot(S5, aes(x = OR, fill = Unit)) +
	scale_fill_manual(values=c("#008F96", "#050094")) +
  geom_density(alpha = 0.15) + geom_vline(data = mu, aes(xintercept=OR, color = Unit), linetype="dashed", size=1) +
  scale_colour_manual(values=c("#008F96", "#050094")) +
  facet_grid(Configuration~AT) +
 labs(x = "Omission rate", y = "Density") + theme_bw() + theme(panel.grid.major = element_blank(), 
 panel.grid.minor = element_blank(), panel.background= element_blank(), legend.position = c(0.03, 0.932))
BAM_o

setwd("YOUR PATH/Figures")
ggsave("Fig3.tiff", width=15, height=8, dpi = 600)
ggsave("Fig3.pdf", width=15, height=8, dpi = 600)
## END OF THE CODE ###