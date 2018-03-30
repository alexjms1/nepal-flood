set more off
/// location 2
/// DEPRESSION -  t1 covariate
bootstrap indir_int=(_b[BDImean16_T2:1.interventionRecode]*_b[DP_cleaned_T2:BDImean16_T2]) ,reps(200): ///
		  gsem (BDImean16_T2 <- BDImean16_T1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- BDImean16_T1 BDImean16_T2 i.interventionRecode ,  nocapslatent ) if T1loccode == 2 & timePoint == 2 & (interventionRecode==0 | interventionRecode==1) 
estat bootstrap
gsem (BDImean16_T2 <- BDImean16_T1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- BDImean16_T1 BDImean16_T2 i.interventionRecode,  nocapslatent ) if T1loccode == 2 & timePoint == 2 & (interventionRecode==0 | interventionRecode==1) 


/// DEPRESSION -  no t1 covariate
bootstrap indir_int=(_b[BDImean16_T2:1.interventionRecode]*_b[DP_cleaned_T2:BDImean16_T2]) ,reps(200): ///
		  gsem (BDImean16_T2 <-  i.interventionRecode, nocapslatent) (DP_cleaned_T2 <-  BDImean16_T2 i.interventionRecode ,  nocapslatent ) if T1loccode == 2 & timePoint == 2 & (interventionRecode==0 | interventionRecode==1) 
estat bootstrap
gsem (BDImean16_T2 <-  i.interventionRecode, nocapslatent) (DP_cleaned_T2 <-  BDImean16_T2 i.interventionRecode,  nocapslatent ) if T1loccode == 2 & timePoint == 2 & (interventionRecode==0 | interventionRecode==1) 

/// PTSD -  no t1 covariate
bootstrap indir_int=(_b[PTSDmean13_T2:1.interventionRecode]*_b[DP_cleaned_T2:PTSDmean13_T2]) ,reps(200): ///
		  gsem (PTSDmean13_T2 <-  i.interventionRecode, nocapslatent) (DP_cleaned_T2 <-  PTSDmean13_T2 i.interventionRecode ,  nocapslatent ) if T1loccode == 2 & timePoint == 2 & (interventionRecode==0 | interventionRecode==1) 
estat bootstrap
gsem (PTSDmean13_T2 <-  i.interventionRecode, nocapslatent) (DP_cleaned_T2 <-  PTSDmean13_T2 i.interventionRecode,  nocapslatent ) if T1loccode == 2 & timePoint == 2 & (interventionRecode==0 | interventionRecode==1) 

/// PTSD avoid - no t1 covariate
bootstrap indir_int=(_b[PTSD_avoid_T2:1.interventionRecode]*_b[DP_cleaned_T2:PTSD_avoid_T2]) ,reps(200): ///
		  gsem (PTSD_avoid_T2 <-  i.interventionRecode, nocapslatent) (DP_cleaned_T2 <-  PTSD_avoid_T2 i.interventionRecode ,  nocapslatent ) if T1loccode == 2 & timePoint == 2 & (interventionRecode==0 | interventionRecode==1) 
estat bootstrap
gsem (PTSD_avoid_T2 <-  i.interventionRecode, nocapslatent) (DP_cleaned_T2 <-  PTSD_avoid_T2 i.interventionRecode,  nocapslatent ) if T1loccode == 2 & timePoint == 2 & (interventionRecode==0 | interventionRecode==1) 


///// all communities
/// DEPRESSION -  t1 covariate
bootstrap indir_int=(_b[BDImean16_T2:1.interventionRecode]*_b[DP_cleaned_T2:BDImean16_T2]) ,reps(200): ///
		  gsem (BDImean16_T2 <- BDImean16_T1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- BDImean16_T1 BDImean16_T2 i.interventionRecode ,  nocapslatent ) if timePoint == 2 & (interventionRecode==0 | interventionRecode==1) 
estat bootstrap
gsem (BDImean16_T2 <- BDImean16_T1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- BDImean16_T1 BDImean16_T2 i.interventionRecode,  nocapslatent ) if timePoint == 2 & (interventionRecode==0 | interventionRecode==1) 


/// DEPRESSION -  no t1 covariate
bootstrap indir_int=(_b[BDImean16_T2:1.interventionRecode]*_b[DP_cleaned_T2:BDImean16_T2]) ,reps(200): ///
		  gsem (BDImean16_T2 <-  i.interventionRecode, nocapslatent) (DP_cleaned_T2 <-  BDImean16_T2 i.interventionRecode ,  nocapslatent ) if timePoint == 2 & (interventionRecode==0 | interventionRecode==1) 
estat bootstrap
gsem (BDImean16_T2 <-  i.interventionRecode, nocapslatent) (DP_cleaned_T2 <-  BDImean16_T2 i.interventionRecode,  nocapslatent ) if timePoint == 2 & (interventionRecode==0 | interventionRecode==1) 

/// PTSD -  no t1 covariate
bootstrap indir_int=(_b[PTSDmean13_T2:1.interventionRecode]*_b[DP_cleaned_T2:PTSDmean13_T2]) ,reps(200): ///
		  gsem (PTSDmean13_T2 <-  i.interventionRecode, nocapslatent) (DP_cleaned_T2 <-  PTSDmean13_T2 i.interventionRecode ,  nocapslatent ) if timePoint == 2 & (interventionRecode==0 | interventionRecode==1) 
estat bootstrap
gsem (PTSDmean13_T2 <-  i.interventionRecode, nocapslatent) (DP_cleaned_T2 <-  PTSDmean13_T2 i.interventionRecode,  nocapslatent ) if timePoint == 2 & (interventionRecode==0 | interventionRecode==1) 

/// PTSD avoid - no t1 covariate
bootstrap indir_int=(_b[PTSD_avoid_T2:1.interventionRecode]*_b[DP_cleaned_T2:PTSD_avoid_T2]) ,reps(200): ///
		  gsem (PTSD_avoid_T2 <-  i.interventionRecode, nocapslatent) (DP_cleaned_T2 <-  PTSD_avoid_T2 i.interventionRecode ,  nocapslatent ) if timePoint == 2 & (interventionRecode==0 | interventionRecode==1) 
estat bootstrap
gsem (PTSD_avoid_T2 <-  i.interventionRecode, nocapslatent) (DP_cleaned_T2 <-  PTSD_avoid_T2 i.interventionRecode,  nocapslatent ) if timePoint == 2 & (interventionRecode==0 | interventionRecode==1) 
