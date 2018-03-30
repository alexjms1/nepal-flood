set more off
/// DEPRESSION - trauma only , t1 covariate
bootstrap indir_trauma0=(_b[BDImean16_T2:TraumaNaturalT1]*_b[DP_cleaned_T2:BDImean16_T2]) ///
		  indir_trauma1=(_b[BDImean16_T2:TraumaNaturalT1]*(_b[DP_cleaned_T2:BDImean16_T2]+_b[DP_cleaned_T2:1.interventionRecode#c.BDImean16_T2])) ///
		  indir_int0=(_b[BDImean16_T2:1.interventionRecode]*_b[DP_cleaned_T2:BDImean16_T2]) ///
		  indir_int1=(_b[BDImean16_T2:1.interventionRecode]*(_b[DP_cleaned_T2:BDImean16_T2]+_b[DP_cleaned_T2:1.interventionRecode#c.BDImean16_T2])) ,reps(200): ///
		  gsem (BDImean16_T2 <- TraumaNaturalT1 BDImean16_T1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1 BDImean16_T1 BDImean16_T2 i.interventionRecode i.interventionRecode#c.BDImean16_T2,  nocapslatent ) if timePoint == 2 & T1loccode == 2 & (interventionRecode==0 | interventionRecode==1) 
estat bootstrap
gsem (BDImean16_T2 <- TraumaNaturalT1 BDImean16_T1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1 BDImean16_T1 BDImean16_T2 i.interventionRecode i.interventionRecode#c.BDImean16_T2,  nocapslatent ) if timePoint == 2 & T1loccode == 2 & ( interventionRecode==0 | interventionRecode==1)
gsem (BDImean16_T2 <- TraumaNaturalT1 BDImean16_T1 , nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1 BDImean16_T1 BDImean16_T2, nocapslatent ) if timePoint == 2 & interventionRecode==0 & T1loccode == 2
gsem (BDImean16_T2 <- TraumaNaturalT1 BDImean16_T1 , nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1 BDImean16_T1 BDImean16_T2, nocapslatent ) if timePoint == 2 & interventionRecode==1 & T1loccode == 2



/// DEPRESSION - trauma only , no t1 covariate
bootstrap indir_trauma0=(_b[BDImean16_T2:TraumaNaturalT1]*_b[DP_cleaned_T2:BDImean16_T2]) ///
		  indir_trauma1=(_b[BDImean16_T2:TraumaNaturalT1]*(_b[DP_cleaned_T2:BDImean16_T2]+_b[DP_cleaned_T2:1.interventionRecode#c.BDImean16_T2])) ///
		  indir_int0=(_b[BDImean16_T2:1.interventionRecode]*_b[DP_cleaned_T2:BDImean16_T2]) ///
		  indir_int1=(_b[BDImean16_T2:1.interventionRecode]*(_b[DP_cleaned_T2:BDImean16_T2]+_b[DP_cleaned_T2:1.interventionRecode#c.BDImean16_T2])) ,reps(200): ///
		  gsem (BDImean16_T2 <- TraumaNaturalT1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1 BDImean16_T2 i.interventionRecode i.interventionRecode#c.BDImean16_T2,  nocapslatent ) if timePoint == 2 & T1loccode == 2 & ( interventionRecode==0 | interventionRecode==1)
estat bootstrap
gsem (BDImean16_T2 <- TraumaNaturalT1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1  BDImean16_T2 i.interventionRecode i.interventionRecode#c.BDImean16_T2,  nocapslatent )  if timePoint == 2 & T1loccode == 2 & ( interventionRecode==0 | interventionRecode==1) 
gsem (BDImean16_T2 <- TraumaNaturalT1  , nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1  BDImean16_T2, nocapslatent ) if timePoint == 2 & interventionRecode==0 & T1loccode == 2
gsem (BDImean16_T2 <- TraumaNaturalT1  , nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1  BDImean16_T2, nocapslatent ) if timePoint == 2 & interventionRecode==1 & T1loccode == 2


/// PTSD - trauma only , no t1 covariate
bootstrap indir_trauma0=(_b[PTSDmean13_T2:TraumaNaturalT1]*_b[DP_cleaned_T2:PTSDmean13_T2]) ///
		  indir_trauma1=(_b[PTSDmean13_T2:TraumaNaturalT1]*(_b[DP_cleaned_T2:PTSDmean13_T2]+_b[DP_cleaned_T2:1.interventionRecode#c.PTSDmean13_T2])) ///
		  indir_int0=(_b[PTSDmean13_T2:1.interventionRecode]*_b[DP_cleaned_T2:PTSDmean13_T2]) ///
		  indir_int1=(_b[PTSDmean13_T2:1.interventionRecode]*(_b[DP_cleaned_T2:PTSDmean13_T2]+_b[DP_cleaned_T2:1.interventionRecode#c.PTSDmean13_T2])) ,reps(200): ///
		  gsem (PTSDmean13_T2 <- TraumaNaturalT1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1 PTSDmean13_T2 i.interventionRecode i.interventionRecode#c.PTSDmean13_T2,  nocapslatent )  if timePoint == 2 & T1loccode == 2 & ( interventionRecode==0 | interventionRecode==1)
estat bootstrap
gsem (PTSDmean13_T2 <- TraumaNaturalT1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1  PTSDmean13_T2 i.interventionRecode i.interventionRecode#c.PTSDmean13_T2,  nocapslatent )  if timePoint == 2 & T1loccode == 2 & ( interventionRecode==0 | interventionRecode==1)
gsem (PTSDmean13_T2 <- TraumaNaturalT1  , nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1  PTSDmean13_T2, nocapslatent ) if timePoint == 2 & interventionRecode==0 & T1loccode == 2
gsem (PTSDmean13_T2 <- TraumaNaturalT1  , nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1  PTSDmean13_T2, nocapslatent ) if timePoint == 2 & interventionRecode==1 & T1loccode == 2


/// PTSD avoid - trauma only, no t1 covariate
bootstrap indir_trauma0=(_b[PTSD_avoid_T2:TraumaNaturalT1]*_b[DP_cleaned_T2:PTSD_avoid_T2]) ///
		  indir_trauma1=(_b[PTSD_avoid_T2:TraumaNaturalT1]*(_b[DP_cleaned_T2:PTSD_avoid_T2]+_b[DP_cleaned_T2:1.interventionRecode#c.PTSD_avoid_T2])) ///
		  indir_int0=(_b[PTSD_avoid_T2:1.interventionRecode]*_b[DP_cleaned_T2:PTSD_avoid_T2]) ///
		  indir_int1=(_b[PTSD_avoid_T2:1.interventionRecode]*(_b[DP_cleaned_T2:PTSD_avoid_T2]+_b[DP_cleaned_T2:1.interventionRecode#c.PTSD_avoid_T2])) ,reps(200): ///
		  gsem (PTSD_avoid_T2 <- TraumaNaturalT1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1 PTSD_avoid_T2 i.interventionRecode i.interventionRecode#c.PTSD_avoid_T2,  nocapslatent )  if timePoint == 2 & T1loccode == 2 & ( interventionRecode==0 | interventionRecode==1)
estat bootstrap
gsem (PTSD_avoid_T2 <- TraumaNaturalT1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1  PTSD_avoid_T2 i.interventionRecode i.interventionRecode#c.PTSD_avoid_T2,  nocapslatent )  if timePoint == 2 & T1loccode == 2 & ( interventionRecode==0 | interventionRecode==1)
gsem (PTSD_avoid_T2 <- TraumaNaturalT1  , nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1 PTSD_avoid_T2, nocapslatent ) if timePoint == 2 & interventionRecode==0 & T1loccode == 2
gsem (PTSD_avoid_T2 <- TraumaNaturalT1  , nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1 PTSD_avoid_T2, nocapslatent ) if timePoint == 2 & interventionRecode==1 & T1loccode == 2





///// all communities
/// DEPRESSION - trauma only, t1 covariate
bootstrap indir_trauma0=(_b[BDImean16_T2:TraumaNaturalT1]*_b[DP_cleaned_T2:BDImean16_T2]) ///
		  indir_trauma1=(_b[BDImean16_T2:TraumaNaturalT1]*(_b[DP_cleaned_T2:BDImean16_T2]+_b[DP_cleaned_T2:1.interventionRecode#c.BDImean16_T2])) ///
		  indir_int0=(_b[BDImean16_T2:1.interventionRecode]*_b[DP_cleaned_T2:BDImean16_T2]) ///
		  indir_int1=(_b[BDImean16_T2:1.interventionRecode]*(_b[DP_cleaned_T2:BDImean16_T2]+_b[DP_cleaned_T2:1.interventionRecode#c.BDImean16_T2])) ,reps(200): ///
		  gsem (BDImean16_T2 <- TraumaNaturalT1 BDImean16_T1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1 BDImean16_T1 BDImean16_T2 i.interventionRecode i.interventionRecode#c.BDImean16_T2,  nocapslatent ) if timePoint == 2 & (interventionRecode==0 | interventionRecode==1) 
estat bootstrap
gsem (BDImean16_T2 <- TraumaNaturalT1 BDImean16_T1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1 BDImean16_T1 BDImean16_T2 i.interventionRecode i.interventionRecode#c.BDImean16_T2,  nocapslatent ) if timePoint == 2 &  ( interventionRecode==0 | interventionRecode==1)
gsem (BDImean16_T2 <- TraumaNaturalT1 BDImean16_T1 , nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1 BDImean16_T1 BDImean16_T2, nocapslatent ) if timePoint == 2 & interventionRecode==0
gsem (BDImean16_T2 <- TraumaNaturalT1 BDImean16_T1 , nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1 BDImean16_T1 BDImean16_T2, nocapslatent ) if timePoint == 2 & interventionRecode==1 


/// DEPRESSION - trauma only, no t1 covariate
bootstrap indir_trauma0=(_b[BDImean16_T2:TraumaNaturalT1]*_b[DP_cleaned_T2:BDImean16_T2]) ///
		  indir_trauma1=(_b[BDImean16_T2:TraumaNaturalT1]*(_b[DP_cleaned_T2:BDImean16_T2]+_b[DP_cleaned_T2:1.interventionRecode#c.BDImean16_T2])) ///
		  indir_int0=(_b[BDImean16_T2:1.interventionRecode]*_b[DP_cleaned_T2:BDImean16_T2]) ///
		  indir_int1=(_b[BDImean16_T2:1.interventionRecode]*(_b[DP_cleaned_T2:BDImean16_T2]+_b[DP_cleaned_T2:1.interventionRecode#c.BDImean16_T2])) ,reps(200): ///
		  gsem (BDImean16_T2 <- TraumaNaturalT1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1 BDImean16_T2 i.interventionRecode i.interventionRecode#c.BDImean16_T2,  nocapslatent ) if timePoint == 2 &  ( interventionRecode==0 | interventionRecode==1)
estat bootstrap
gsem (BDImean16_T2 <- TraumaNaturalT1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1  BDImean16_T2 i.interventionRecode i.interventionRecode#c.BDImean16_T2,  nocapslatent )  if timePoint == 2 &  ( interventionRecode==0 | interventionRecode==1) 
gsem (BDImean16_T2 <- TraumaNaturalT1  , nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1  BDImean16_T2, nocapslatent ) if timePoint == 2 & interventionRecode==0 
gsem (BDImean16_T2 <- TraumaNaturalT1  , nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1  BDImean16_T2, nocapslatent ) if timePoint == 2 & interventionRecode==1 


/// PTSD - trauma only, no t1 covariate
bootstrap indir_trauma0=(_b[PTSDmean13_T2:TraumaNaturalT1]*_b[DP_cleaned_T2:PTSDmean13_T2]) ///
		  indir_trauma1=(_b[PTSDmean13_T2:TraumaNaturalT1]*(_b[DP_cleaned_T2:PTSDmean13_T2]+_b[DP_cleaned_T2:1.interventionRecode#c.PTSDmean13_T2])) ///
		  indir_int0=(_b[PTSDmean13_T2:1.interventionRecode]*_b[DP_cleaned_T2:PTSDmean13_T2]) ///
		  indir_int1=(_b[PTSDmean13_T2:1.interventionRecode]*(_b[DP_cleaned_T2:PTSDmean13_T2]+_b[DP_cleaned_T2:1.interventionRecode#c.PTSDmean13_T2])) ,reps(200): ///
		  gsem (PTSDmean13_T2 <- TraumaNaturalT1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1 PTSDmean13_T2 i.interventionRecode i.interventionRecode#c.PTSDmean13_T2,  nocapslatent )  if timePoint == 2 & ( interventionRecode==0 | interventionRecode==1)
estat bootstrap
gsem (PTSDmean13_T2 <- TraumaNaturalT1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1  PTSDmean13_T2 i.interventionRecode i.interventionRecode#c.PTSDmean13_T2,  nocapslatent )  if timePoint == 2 &  ( interventionRecode==0 | interventionRecode==1)
gsem (PTSDmean13_T2 <- TraumaNaturalT1  , nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1  PTSDmean13_T2, nocapslatent ) if timePoint == 2 & interventionRecode==0 
gsem (PTSDmean13_T2 <- TraumaNaturalT1  , nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1  PTSDmean13_T2, nocapslatent ) if timePoint == 2 & interventionRecode==1 

/// PTSD avoid - trauma only, no t1 covariate
bootstrap indir_trauma0=(_b[PTSD_avoid_T2:TraumaNaturalT1]*_b[DP_cleaned_T2:PTSD_avoid_T2]) ///
		  indir_trauma1=(_b[PTSD_avoid_T2:TraumaNaturalT1]*(_b[DP_cleaned_T2:PTSD_avoid_T2]+_b[DP_cleaned_T2:1.interventionRecode#c.PTSD_avoid_T2])) ///
		  indir_int0=(_b[PTSD_avoid_T2:1.interventionRecode]*_b[DP_cleaned_T2:PTSD_avoid_T2]) ///
		  indir_int1=(_b[PTSD_avoid_T2:1.interventionRecode]*(_b[DP_cleaned_T2:PTSD_avoid_T2]+_b[DP_cleaned_T2:1.interventionRecode#c.PTSD_avoid_T2])) ,reps(200): ///
		  gsem (PTSD_avoid_T2 <- TraumaNaturalT1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1 PTSD_avoid_T2 i.interventionRecode i.interventionRecode#c.PTSD_avoid_T2,  nocapslatent )  if timePoint == 2 &  ( interventionRecode==0 | interventionRecode==1)
estat bootstrap
gsem (PTSD_avoid_T2 <- TraumaNaturalT1 i.interventionRecode, nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1  PTSD_avoid_T2 i.interventionRecode i.interventionRecode#c.PTSD_avoid_T2,  nocapslatent )  if timePoint == 2 &  ( interventionRecode==0 | interventionRecode==1)
gsem (PTSD_avoid_T2 <- TraumaNaturalT1  , nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1 PTSD_avoid_T2, nocapslatent ) if timePoint == 2 & interventionRecode==0 
gsem (PTSD_avoid_T2 <- TraumaNaturalT1  , nocapslatent) (DP_cleaned_T2 <- TraumaNaturalT1 PTSD_avoid_T2, nocapslatent ) if timePoint == 2 & interventionRecode==1 
