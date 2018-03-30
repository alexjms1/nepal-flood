gen TraumaNaturalT1 = T1Trauma1EQ + T1Trauma10Disfamfriendinjury + T1Trauma11Disfamfriendkilled + T1Trauma2Storm + T1Trauma3Flood + T1Trauma4Landslide + T1Trauma5Disease + T1Trauma6Fire + T1Trauma7Dishousedamage + T1Trauma8Dismove + T1Trauma9Disinjury
gen interventionRecode = 0 if interventiongroup == 2
replace interventionRecode = 1 if interventiongroup == 1
reshape long PTSDsumT PTSDmeanT PTSDmean13_T  PTSD_avoid_T BDIsumT BDImeanT BDImean16_T DPsum21_T DPsum24_T selfeffsumT selfeffmeanT SelfEff1timeT SelfEff2affordT SelfEff3infoT FuncMmeanT FuncMmean6_T FuncFmeanT FuncFmean6_T Copesum_T Copemean_T Copemean9_T SocCohsum7_T SocCohmean7_T Fatalismsum_T Fatalismmean_T Fat1dontworryT Fat2injuredT DisAt1NaturalT DisAt2GodswillT DisAt3OthersupernaT DisAt4KarmaT DisAt5NeppeopT DisAt6GovtsT Relig1PrivateactivT Relig2PublicactivT DISMHsumT DISMHmeanT DisMH1anxiousT DisMH2depressedT DisMH3avoidT PMHPsumT PMHPmeanT PMHPmean13_T HGDis1WillinghelpT HGDis2HelpaftermathT HSMH2aComfortseekhelpfutureT HSDis2ComfortseekinghelpT HGMH2WillinghelpneighborT HGMH3KnowhowhelpT HGDis2WillinghelpT HSMH2bGodsT HSMH2bPriestT HSMH2bNeighborsT HSMH2bFamilyT HSMH2bFriendsT HSMH2bHospT HSMH2bCBMHT HSMH3FaultsadnessT HSMH4CausesadnessGodT HSMH4CausesadnessThinkingT HSMH4CausesadnessCurseT HSMH4CausesadnessTraumaStressT HSMH4CausesadnessBrainT HSMH4CausesadnessDeservedT  HSMH1aSeekhelplast6monthsT HSMH1bGodsT HSMH1bPriestT HSMH1bNeighborsT HSMH1bFamilyT HSMH1bFriendsT HSMH1bHospT HSMH1bCBMHT HSDis1Seekhelplast6monthsT  HGMH1Helpedsomeonelast6monthsT HGDis1Helpedlast6monthsT, i(PartID) j(timePoint 1 2 3)
generate timePointZerod = timePoint - 1
label define groupLabel 1 "Intervention" 2 "Control"
label define times 0 "1" 1 "2" 2 "3"
label define genders 1 "Female" 2 "Male" 3 "O"

label values interventiongroup groupLabel 
label values timePointZerod times 
label values T1gender genders
