
### Script for the kuenm model creations ###
### We need to run for each species, supraspicific unit and threshold ###
### (four runs per species: U0 and U1 by 90 and 95 thresholds) ###
### Load the package ###
library(kuenm)

### Set the working directory ###
setwd("YOUR PATH//U0_spp_1")
### Name of the process ###
file_name <- "U0_spp_1_process"

### Candidate models ###
occ_joint <- "U0_spp_1_Joint.csv"
occ_tra <- "U0_spp_1_Train.csv"
M_var_dir <- "M_var"
batch_cal <- "Candidate_models"
out_dir <- "Candidate_Models"
reg_mult <- seq(1,4,1)
f_clas <- "no.t.h"
args <- "maximumbackground=10000"
maxent_path <- "/YOUR PATH/"
wait <- FALSE
run <- TRUE
kuenm_cal(occ.joint = occ_joint, occ.tra = occ_tra, M.var.dir = M_var_dir, batch = batch_cal,
          out.dir = out_dir, reg.mult = reg_mult, f.clas = f_clas, args = args,
          maxent.path = maxent_path, wait = wait, run = run)

### 90 Threshold ###
### Evaluation and selection of the best models ###
occ_test <- "U0_spp_1_Test.csv"
out_eval <- "Calibration_results"
threshold <- 10
rand_percent <- 50
iterations <- 100
kept <- TRUE
selection <- "OR_AICc"
paral_proc <- FALSE
cal_eval <- kuenm_ceval(path = out_dir, occ.joint = occ_joint, occ.tra = occ_tra, occ.test = occ_test, batch = batch_cal,
                        out.eval = out_eval, threshold = threshold, rand.percent = rand_percent, iterations = iterations,
                        kept = kept, selection = selection, parallel.proc = paral_proc)
						
### Final Model creation ###
batch_fin <- "final_models"
mod_dir <- "Final_Models"
rep_n <- 10
rep_type <- "Bootstrap"
jackknife <- FALSE
out_format <- "cloglog"
project <- TRUE
G_var_dir <- "G_var"
ext_type <- "no_ext"
write_mess <- FALSE
write_clamp <- FALSE
wait1 <- FALSE
run1 <- TRUE
args <- "maximumbackground=10000"
kuenm_mod(occ.joint = occ_joint, M.var.dir = M_var_dir, out.eval = out_eval, batch = batch_fin, rep.n = rep_n,
          rep.type = rep_type, jackknife = jackknife, out.dir = mod_dir, out.format = out_format, project = project,
          G.var.dir = G_var_dir, ext.type = ext_type, write.mess = write_mess, write.clamp = write_clamp, 
          maxent.path = maxent_path, args = args, wait = wait1, run = run1)

### 95 Threshold ###
### Evaluation and selection of the best models ###
occ_test <- "U0_spp_1_Test.csv"
out_eval <- "Calibration_results"
threshold <- 5
rand_percent <- 50
iterations <- 100
kept <- TRUE
selection <- "OR_AICc"
paral_proc <- FALSE
cal_eval <- kuenm_ceval(path = out_dir, occ.joint = occ_joint, occ.tra = occ_tra, occ.test = occ_test, batch = batch_cal,
                        out.eval = out_eval, threshold = threshold, rand.percent = rand_percent, iterations = iterations,
                        kept = kept, selection = selection, parallel.proc = paral_proc)
						
### Final Model creation ###
batch_fin <- "final_models"
mod_dir <- "Final_Models"
rep_n <- 10
rep_type <- "Bootstrap"
jackknife <- FALSE
out_format <- "cloglog"
project <- TRUE
G_var_dir <- "G_var"
ext_type <- "no_ext"
write_mess <- FALSE
write_clamp <- FALSE
wait1 <- FALSE
run1 <- TRUE
args <- "maximumbackground=10000"
kuenm_mod(occ.joint = occ_joint, M.var.dir = M_var_dir, out.eval = out_eval, batch = batch_fin, rep.n = rep_n,
          rep.type = rep_type, jackknife = jackknife, out.dir = mod_dir, out.format = out_format, project = project,
          G.var.dir = G_var_dir, ext.type = ext_type, write.mess = write_mess, write.clamp = write_clamp, 
          maxent.path = maxent_path, args = args, wait = wait1, run = run1)
### END OF THE CODE ###


