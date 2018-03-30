* Encoding: UTF-8.

/*DATASET ACTIVATE DataSet5.
*/
/*
MATCH FILES /FILE=*
  /FILE='DataSet6'
  /IN source01
  /BY PartID.
/*
//EXECUTE.
*/
SPLIT FILE - use only cases with good T1 and T2 data
/*
USE ALL.
*COMPUTE filter_$=(T1T2data = 1).
*VARIABLE LABELS filter_$ 'T1T2data = 1 (FILTER)'.
*VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
*FORMATS filter_$ (f1.0).
*FILTER BY filter_$.
*EXECUTE.
*/
FILTER OFF.
*USE ALL.
*EXECUTE.
*/

*PTSD


DESCRIPTIVES VARIABLES=T1PTSD1.Memories T1PTSD2.Dreams T1PTSD3.Flashbacks 
    T1PTSD4.Upsetfromreminders T1PTSD5.Physreactionstoreminders T1PTSD6.Avoidthinkingtalking 
    T1PTSD7.Avoidactivitiessit T1PTSD8.Diffremembertrauma T1PTSD9.Diffenjoyingactiv 
    T1PTSD10.Distantfromothers T1PTSD11.Emotnumb T1PTSD12.Darkfuture T1PTSD13.Sleep T1PTSD14.Anger 
    T1PTSD15.Concent T1PTSD16.Suspicionhypervig T1PTSD17.Easilystartled T2PTSD1.Memories T2PTSD2.Dreams 
    T2PTSD3.Flashbacks T2PTSD4.Upsetfromreminders T2PTSD5.Physreactionstoreminders 
    T2PTSD6.Avoidthinkingtalking T2PTSD7.Avoidactivitiessit T2PTSD8.Diffremembertrauma 
    T2PTSD9.Diffenjoyingactiv T2PTSD10.Distantfromothers T2PTSD11.Emotnumb T2PTSD12.Darkfuture 
    T2PTSD13.Sleep T2PTSD14.Anger T2PTSD15.Concent T2PTSD16.Suspicionhypervig T2PTSD17.Easilystartled
T3PTSD1.Memories T3PTSD2.Dreams 
    T3PTSD3.Flashbacks T3PTSD4.Upsetfromreminders T3PTSD5.Physreactionstoreminders 
    T3PTSD6.Avoidthinkingtalking T3PTSD7.Avoidactivitiessit T3PTSD8.Diffremembertrauma 
    T3PTSD9.Diffenjoyingactiv T3PTSD10.Distantfromothers T3PTSD11.Emotnumb T3PTSD12.Darkfuture 
    T3PTSD13.Sleep T3PTSD14.Anger T3PTSD15.Concent T3PTSD16.Suspicionhypervig T3PTSD17.Easilystartled
  /STATISTICS=MEAN STDDEV MIN MAX.

COMPUTE PTSDsumT2=T2PTSD1.Memories + T2PTSD2.Dreams + T2PTSD3.Flashbacks + 
    T2PTSD4.Upsetfromreminders + T2PTSD5.Physreactionstoreminders + T2PTSD6.Avoidthinkingtalking + 
    T2PTSD7.Avoidactivitiessit + T2PTSD8.Diffremembertrauma + T2PTSD9.Diffenjoyingactiv + 
    T2PTSD10.Distantfromothers + T2PTSD11.Emotnumb + T2PTSD12.Darkfuture + T2PTSD13.Sleep + 
    T2PTSD14.Anger + T2PTSD15.Concent + T2PTSD16.Suspicionhypervig + T2PTSD17.Easilystartled.
EXECUTE.

COMPUTE PTSDsumT1=T1PTSD1.Memories + T1PTSD2.Dreams + T1PTSD3.Flashbacks + 
    T1PTSD4.Upsetfromreminders + T1PTSD5.Physreactionstoreminders + T1PTSD6.Avoidthinkingtalking + 
    T1PTSD7.Avoidactivitiessit + T1PTSD8.Diffremembertrauma + T1PTSD9.Diffenjoyingactiv + 
    T1PTSD10.Distantfromothers + T1PTSD11.Emotnumb + T1PTSD12.Darkfuture + T1PTSD13.Sleep + 
    T1PTSD14.Anger + T1PTSD15.Concent + T1PTSD16.Suspicionhypervig + T1PTSD17.Easilystartled.
EXECUTE.

COMPUTE PTSDsumT3=T3PTSD1.Memories + T3PTSD2.Dreams + T3PTSD3.Flashbacks + 
    T3PTSD4.Upsetfromreminders + T3PTSD5.Physreactionstoreminders + T3PTSD6.Avoidthinkingtalking + 
    T3PTSD7.Avoidactivitiessit + T3PTSD8.Diffremembertrauma + T3PTSD9.Diffenjoyingactiv + 
    T3PTSD10.Distantfromothers + T3PTSD11.Emotnumb + T3PTSD12.Darkfuture + T3PTSD13.Sleep + 
    T3PTSD14.Anger + T3PTSD15.Concent + T3PTSD16.Suspicionhypervig + T3PTSD17.Easilystartled.
EXECUTE.

COMPUTE PTSDmeanT2=mean(T2PTSD1.Memories , T2PTSD2.Dreams , T2PTSD3.Flashbacks , 
    T2PTSD4.Upsetfromreminders , T2PTSD5.Physreactionstoreminders , T2PTSD6.Avoidthinkingtalking , 
    T2PTSD7.Avoidactivitiessit , T2PTSD8.Diffremembertrauma , T2PTSD9.Diffenjoyingactiv , 
    T2PTSD10.Distantfromothers , T2PTSD11.Emotnumb , T2PTSD12.Darkfuture , T2PTSD13.Sleep , 
    T2PTSD14.Anger , T2PTSD15.Concent , T2PTSD16.Suspicionhypervig , T2PTSD17.Easilystartled).
EXECUTE.

COMPUTE PTSDmeanT1=mean(T1PTSD1.Memories , T1PTSD2.Dreams , T1PTSD3.Flashbacks , 
    T1PTSD4.Upsetfromreminders , T1PTSD5.Physreactionstoreminders , T1PTSD6.Avoidthinkingtalking , 
    T1PTSD7.Avoidactivitiessit , T1PTSD8.Diffremembertrauma , T1PTSD9.Diffenjoyingactiv , 
    T1PTSD10.Distantfromothers , T1PTSD11.Emotnumb , T1PTSD12.Darkfuture , T1PTSD13.Sleep , 
    T1PTSD14.Anger , T1PTSD15.Concent , T1PTSD16.Suspicionhypervig , T1PTSD17.Easilystartled).
EXECUTE.

COMPUTE PTSDmeanT3=mean(T3PTSD1.Memories , T3PTSD2.Dreams , T3PTSD3.Flashbacks , 
    T3PTSD4.Upsetfromreminders , T3PTSD5.Physreactionstoreminders , T3PTSD6.Avoidthinkingtalking , 
    T3PTSD7.Avoidactivitiessit , T3PTSD8.Diffremembertrauma , T3PTSD9.Diffenjoyingactiv , 
    T3PTSD10.Distantfromothers , T3PTSD11.Emotnumb , T3PTSD12.Darkfuture , T3PTSD13.Sleep , 
    T3PTSD14.Anger , T3PTSD15.Concent , T3PTSD16.Suspicionhypervig , T3PTSD17.Easilystartled).
EXECUTE.

COMPUTE PTSDmean13_T2=mean.13(T2PTSD1.Memories , T2PTSD2.Dreams , T2PTSD3.Flashbacks , 
    T2PTSD4.Upsetfromreminders , T2PTSD5.Physreactionstoreminders , T2PTSD6.Avoidthinkingtalking , 
    T2PTSD7.Avoidactivitiessit , T2PTSD8.Diffremembertrauma , T2PTSD9.Diffenjoyingactiv , 
    T2PTSD10.Distantfromothers , T2PTSD11.Emotnumb , T2PTSD12.Darkfuture , T2PTSD13.Sleep , 
    T2PTSD14.Anger , T2PTSD15.Concent , T2PTSD16.Suspicionhypervig , T2PTSD17.Easilystartled).
EXECUTE.

COMPUTE PTSDmean13_T1=mean.13(T1PTSD1.Memories , T1PTSD2.Dreams , T1PTSD3.Flashbacks , 
    T1PTSD4.Upsetfromreminders , T1PTSD5.Physreactionstoreminders , T1PTSD6.Avoidthinkingtalking , 
    T1PTSD7.Avoidactivitiessit , T1PTSD8.Diffremembertrauma , T1PTSD9.Diffenjoyingactiv , 
    T1PTSD10.Distantfromothers , T1PTSD11.Emotnumb , T1PTSD12.Darkfuture , T1PTSD13.Sleep , 
    T1PTSD14.Anger , T1PTSD15.Concent , T1PTSD16.Suspicionhypervig , T1PTSD17.Easilystartled).
EXECUTE.

COMPUTE PTSDmean13_T3=mean.13(T3PTSD1.Memories , T3PTSD2.Dreams , T3PTSD3.Flashbacks , 
    T3PTSD4.Upsetfromreminders , T3PTSD5.Physreactionstoreminders , T3PTSD6.Avoidthinkingtalking , 
    T3PTSD7.Avoidactivitiessit , T3PTSD8.Diffremembertrauma , T3PTSD9.Diffenjoyingactiv , 
    T3PTSD10.Distantfromothers , T3PTSD11.Emotnumb , T3PTSD12.Darkfuture , T3PTSD13.Sleep , 
    T3PTSD14.Anger , T3PTSD15.Concent , T3PTSD16.Suspicionhypervig , T3PTSD17.Easilystartled).
EXECUTE.



/*
GLM T1PTSDmean T2PTSDmean BY Intervention
  /WSFACTOR=Time 2 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Time*Intervention)
  /EMMEANS=TABLES(Intervention) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Time) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Time
  /DESIGN=Intervention.
*/

/*
GLM T1PTSDmean T2PTSDmean BY Intervention2
  /WSFACTOR=Time 2 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Time*Intervention2)
  /EMMEANS=TABLES(Intervention2) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Time) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Time
  /DESIGN=Intervention2.
*/

*DEPRESSION

DESCRIPTIVES VARIABLES=T1BDI1.Sad T1BDI2.Disappoint T1BDI3.Failure T1BDI4.Unsatis T1BDI5.Guilt 
    T1BDI6.Punished T1BDI7.Guilt T1BDI8.Selfblame T1BDI10.Cry T1BDI11.Irritated T1BDI12.Lostinterest 
    T1BDI3.Diffdecisions T1BDI14.Worthless T1BDI15.Work T1BDI16.Sleep T1BDI17.Tired T1BDI18.Appetite 
    T1BDI19.Weightloss T1BDI20.Healthworry T1BDI21.Thinkofpartner T1BDI9.Hurtself T2BDI1.Sad 
    T2BDI2.Disappoint T2BDI3.Failure T2BDI4.Unsatis T2BDI5.Guilt T2BDI6.Punished T2BDI7.Guilt 
    T2BDI8.Selfblame T2BDI10.Cry T2BDI11.Irritated T2BDI12.Lostinterest T2BDI3.Diffdecisions 
    T2BDI14.Worthless T2BDI15.Work T2BDI16.Sleep T2BDI17.Tired T2BDI18.Appetite T2BDI19.Weightloss 
    T2BDI20.Healthworry T2BDI21.Thinkofpartner T2BDI9.Hurtself
T3BDI1.Sad 
    T3BDI2.Disappoint T3BDI3.Failure T3BDI4.Unsatis T3BDI5.Guilt T3BDI6.Punished T3BDI7.Guilt 
    T3BDI8.Selfblame T3BDI10.Cry T3BDI11.Irritated T3BDI12.Lostinterest T3BDI3.Diffdecisions 
    T3BDI14.Worthless T3BDI15.Work T3BDI16.Sleep T3BDI17.Tired T3BDI18.Appetite T3BDI19.Weightloss 
    T3BDI20.Healthworry T3BDI21.Thinkofpartner T3BDI9.Hurtself
  /STATISTICS=MEAN STDDEV MIN MAX.

RECODE T1BDI6.Punished T2BDI6.Punished (5=4).
EXECUTE.

RECODE T3BDI6.Punished (5=4).
EXECUTE.

COMPUTE BDIsumT1=T1BDI1.Sad + T1BDI2.Disappoint + T1BDI3.Failure + T1BDI4.Unsatis + T1BDI5.Guilt + 
    T1BDI6.Punished + T1BDI7.Guilt + T1BDI8.Selfblame + T1BDI10.Cry + T1BDI11.Irritated + 
    T1BDI12.Lostinterest + T1BDI13.Diffdecisions + T1BDI14.Worthless + T1BDI15.Work + T1BDI16.Sleep + 
    T1BDI17.Tired + T1BDI18.Appetite + T1BDI19.Weightloss + T1BDI20.Healthworry + 
    T1BDI21.Thinkofpartner + T1BDI9.Hurtself.
EXECUTE.

COMPUTE BDIsumT2=T2BDI1.Sad + T2BDI2.Disappoint + T2BDI3.Failure + T2BDI4.Unsatis + T2BDI5.Guilt + 
    T2BDI6.Punished + T2BDI7.Guilt + T2BDI8.Selfblame + T2BDI10.Cry + T2BDI11.Irritated + 
    T2BDI12.Lostinterest + T2BDI13.Diffdecisions + T2BDI14.Worthless + T2BDI15.Work + T2BDI16.Sleep + 
    T2BDI17.Tired + T2BDI18.Appetite + T2BDI19.Weightloss + T2BDI20.Healthworry + 
    T2BDI21.Thinkofpartner + T2BDI9.Hurtself.
EXECUTE.

COMPUTE BDIsumT3=T3BDI1.Sad + T3BDI2.Disappoint + T3BDI3.Failure + T3BDI4.Unsatis + T3BDI5.Guilt + 
    T3BDI6.Punished + T3BDI7.Guilt + T3BDI8.Selfblame + T3BDI10.Cry + T3BDI11.Irritated + 
    T3BDI12.Lostinterest +  T3BDI13.Diffdecisions + T3BDI14.Worthless + T3BDI15.Work +T3BDI16.Sleep + 
    T3BDI17.Tired + T3BDI18.Appetite + T3BDI19.Weightloss + T3BDI20.Healthworry + 
    T3BDI21.Thinkofpartner + T3BDI9.Hurtself .
EXECUTE.

COMPUTE BDImeanT1=mean(T1BDI1.Sad , T1BDI2.Disappoint , T1BDI3.Failure , T1BDI4.Unsatis , T1BDI5.Guilt , 
    T1BDI6.Punished , T1BDI7.Guilt , T1BDI8.Selfblame , T1BDI10.Cry , T1BDI11.Irritated , 
    T1BDI12.Lostinterest , T1BDI13.Diffdecisions , T1BDI14.Worthless , T1BDI15.Work , T1BDI16.Sleep , 
    T1BDI17.Tired , T1BDI18.Appetite , T1BDI19.Weightloss , T1BDI20.Healthworry , 
    T1BDI21.Thinkofpartner , T1BDI9.Hurtself).
EXECUTE.

COMPUTE BDImeanT2=mean(T2BDI1.Sad , T2BDI2.Disappoint , T2BDI3.Failure , T2BDI4.Unsatis , T2BDI5.Guilt , 
    T2BDI6.Punished , T2BDI7.Guilt , T2BDI8.Selfblame , T2BDI10.Cry , T2BDI11.Irritated , 
    T2BDI12.Lostinterest , T2BDI13.Diffdecisions , T2BDI14.Worthless , T2BDI15.Work , T2BDI16.Sleep , 
    T2BDI17.Tired , T2BDI18.Appetite , T2BDI19.Weightloss , T2BDI20.Healthworry , 
    T2BDI21.Thinkofpartner , T2BDI9.Hurtself).
EXECUTE.

COMPUTE BDImeanT3 =mean(T3BDI1.Sad , T3BDI2.Disappoint , T3BDI3.Failure , T3BDI4.Unsatis , T3BDI5.Guilt , 
    T3BDI6.Punished , T3BDI7.Guilt , T3BDI8.Selfblame , T3BDI10.Cry , T3BDI11.Irritated , 
    T3BDI12.Lostinterest , T3BDI13.Diffdecisions , T3BDI14.Worthless , T3BDI15.Work , T3BDI16.Sleep , 
    T3BDI17.Tired , T3BDI18.Appetite , T3BDI19.Weightloss , T3BDI20.Healthworry , 
    T3BDI21.Thinkofpartner , T3BDI9.Hurtself).
EXECUTE.

COMPUTE BDImean16_T1=mean.16(T1BDI1.Sad , T1BDI2.Disappoint , T1BDI3.Failure , T1BDI4.Unsatis , T1BDI5.Guilt , 
    T1BDI6.Punished , T1BDI7.Guilt , T1BDI8.Selfblame , T1BDI10.Cry , T1BDI11.Irritated , 
    T1BDI12.Lostinterest , T1BDI13.Diffdecisions , T1BDI14.Worthless , T1BDI15.Work , T1BDI16.Sleep , 
    T1BDI17.Tired , T1BDI18.Appetite , T1BDI19.Weightloss , T1BDI20.Healthworry , 
    T1BDI21.Thinkofpartner , T1BDI9.Hurtself).
EXECUTE.

COMPUTE BDImean16_T2=mean.16(T2BDI1.Sad , T2BDI2.Disappoint , T2BDI3.Failure , T2BDI4.Unsatis , T2BDI5.Guilt , 
    T2BDI6.Punished , T2BDI7.Guilt , T2BDI8.Selfblame , T2BDI10.Cry , T2BDI11.Irritated , 
    T2BDI12.Lostinterest , T2BDI13.Diffdecisions , T2BDI14.Worthless , T2BDI15.Work , T2BDI16.Sleep , 
    T2BDI17.Tired , T2BDI18.Appetite , T2BDI19.Weightloss , T2BDI20.Healthworry , 
    T2BDI21.Thinkofpartner , T2BDI9.Hurtself).
EXECUTE.

COMPUTE BDImean16_T3=mean.16(T3BDI1.Sad , T3BDI2.Disappoint , T3BDI3.Failure , T3BDI4.Unsatis , T3BDI5.Guilt , 
    T3BDI6.Punished , T3BDI7.Guilt , T3BDI8.Selfblame , T3BDI10.Cry , T3BDI11.Irritated , 
    T3BDI12.Lostinterest , T3BDI13.Diffdecisions , T3BDI14.Worthless , T3BDI15.Work , T3BDI16.Sleep , 
    T3BDI17.Tired , T3BDI18.Appetite , T3BDI19.Weightloss , T3BDI20.Healthworry , 
    T3BDI21.Thinkofpartner , T3BDI9.Hurtself).
EXECUTE.

*COPING

COMPUTE Copesum_T1 = T1Cope1.Active + T1Cope2.Posreframe + T1Cope3.Acceptance + T1Cope4.Emotsupport + T1Cope5.Instrumsupport +
 T1Cope6.Selfdistract + T1Cope7.Subuse +   T1Cope8.Behavdisengage + T1Cope9.Selfblame + T1Cope10.Denial + T1Cope11.Puja + T1Cope12.Fight.
Execute.

COMPUTE Copesum_T2 = T2Cope1.Active + T2Cope2.Posreframe + T2Cope3.Acceptance + T2Cope4.Emotsupport + T2Cope5.Instrumsupport +
 T2Cope6.Selfdistract + T2Cope7.Subuse +   T2Cope8.Behavdisengage + T2Cope9.Selfblame + T2Cope10.Denial + T2Cope11.Puja + T2Cope12.Fight.
Execute.

COMPUTE Copesum_T3 = T3Cope1.Active + T3Cope2.Posreframe + T3Cope3.Acceptance + T3Cope4.Emotsupport + T3Cope5.Instrumsupport +
 T3Cope6.Selfdistract + T3Cope7.Subuse +   T3Cope8.Behavdisengage + T3Cope9.Selfblame + T3Cope10.Denial + T3Cope11.Puja + T3Cope12.Fight.
Execute.


COMPUTE Copemean_T1 =  mean(T1Cope1.Active , T1Cope2.Posreframe , T1Cope3.Acceptance , T1Cope4.Emotsupport , T1Cope5.Instrumsupport ,
 T1Cope6.Selfdistract , T1Cope7.Subuse ,   T1Cope8.Behavdisengage , T1Cope9.Selfblame , T1Cope10.Denial , T1Cope11.Puja , T1Cope12.Fight).
Execute.

COMPUTE Copemean_T2 =  mean(T2Cope1.Active , T2Cope2.Posreframe , T2Cope3.Acceptance , T2Cope4.Emotsupport , T2Cope5.Instrumsupport ,
 T2Cope6.Selfdistract , T2Cope7.Subuse ,   T2Cope8.Behavdisengage , T2Cope9.Selfblame , T2Cope10.Denial , T2Cope11.Puja , T2Cope12.Fight).
Execute.

COMPUTE Copemean_T3 = mean(T3Cope1.Active , T3Cope2.Posreframe , T3Cope3.Acceptance , T3Cope4.Emotsupport , T3Cope5.Instrumsupport ,
 T3Cope6.Selfdistract , T3Cope7.Subuse ,   T3Cope8.Behavdisengage , T3Cope9.Selfblame , T3Cope10.Denial , T3Cope11.Puja , T3Cope12.Fight).
Execute.

COMPUTE Copemean9_T1 =  mean.9(T1Cope1.Active , T1Cope2.Posreframe , T1Cope3.Acceptance , T1Cope4.Emotsupport , T1Cope5.Instrumsupport ,
 T1Cope6.Selfdistract , T1Cope7.Subuse ,   T1Cope8.Behavdisengage , T1Cope9.Selfblame , T1Cope10.Denial , T1Cope11.Puja , T1Cope12.Fight).
Execute.

COMPUTE Copemean9_T2 =  mean.9(T2Cope1.Active , T2Cope2.Posreframe , T2Cope3.Acceptance , T2Cope4.Emotsupport , T2Cope5.Instrumsupport ,
 T2Cope6.Selfdistract , T2Cope7.Subuse ,   T2Cope8.Behavdisengage , T2Cope9.Selfblame , T2Cope10.Denial , T2Cope11.Puja , T2Cope12.Fight).
Execute.

COMPUTE Copemean9_T3 = mean.9(T3Cope1.Active , T3Cope2.Posreframe , T3Cope3.Acceptance , T3Cope4.Emotsupport , T3Cope5.Instrumsupport ,
 T3Cope6.Selfdistract , T3Cope7.Subuse ,   T3Cope8.Behavdisengage , T3Cope9.Selfblame , T3Cope10.Denial , T3Cope11.Puja , T3Cope12.Fight).
Execute.

*FATALISM

COMPUTE Fatalismsum_T1 = T1Fat1.dontworry + T1Fat2.injured.
EXECUTE.
COMPUTE Fatalismsum_T2 = T2Fat1.dontworry + T2Fat2.injured.
EXECUTE.
COMPUTE Fatalismsum_T3 = T3Fat1.dontworry + T3Fat2.injured.
EXECUTE.

COMPUTE Fatalismmean_T1 = mean(T1Fat1.dontworry , T1Fat2.injured).
EXECUTE.
COMPUTE Fatalismmean_T2 = mean(T2Fat1.dontworry , T2Fat2.injured).
EXECUTE.
COMPUTE Fatalismmean_T3  = mean(T3Fat1.dontworry , T3Fat2.injured).
EXECUTE.
 
COMPUTE Fat1.dontworryT1 = T1Fat1.dontworry . 
EXECUTE.
COMPUTE Fat2.injuredT1 = T1Fat2.injured .
EXECUTE.
COMPUTE Fat1.dontworryT2 = T2Fat1.dontworry . 
EXECUTE.
COMPUTE Fat2.injuredT2 = T2Fat2.injured .
EXECUTE.
COMPUTE Fat1.dontworryT3 = T3Fat1.dontworry . 
EXECUTE.
COMPUTE Fat2.injuredT3 = T3Fat2.injured .
EXECUTE.

*DISASTER ATTRIBUTION

COMPUTE DisAt1.NaturalT1 = T1DisAt1.Natural.
EXECUTE.
COMPUTE DisAt2.GodswillT1 = T1DisAt2.Godswill.
EXECUTE.
COMPUTE DisAt3.OthersupernaT1 = T1DisAt3.Othersupernat.
EXECUTE.
COMPUTE DisAt4.KarmaT1 = T1DisAt4.Karma .
EXECUTE.
COMPUTE DisAt5.NeppeopT1 = T1DisAt5.Neppeop.
EXECUTE.
COMPUTE DisAt6.GovtsT1 =  T1DisAt6.Govts.
EXECUTE.

COMPUTE DisAt1.NaturalT2 = T2DisAt1.Natural.
EXECUTE.
COMPUTE DisAt2.GodswillT2 = T2DisAt2.Godswill.
EXECUTE.
COMPUTE DisAt3.OthersupernaT2 = T2DisAt3.Othersupernat.
EXECUTE.
COMPUTE DisAt4.KarmaT2 = T2DisAt4.Karma .
EXECUTE.
COMPUTE DisAt5.NeppeopT2 = T2DisAt5.Neppeop.
EXECUTE.
COMPUTE DisAt6.GovtsT2 =  T2DisAt6.Govts.
EXECUTE.

COMPUTE DisAt1.NaturalT3 = T3DisAt1.Natural.
EXECUTE.
COMPUTE DisAt2.GodswillT3 = T3DisAt2.Godswill.
EXECUTE.
COMPUTE DisAt3.OthersupernaT3 = T3DisAt3.Othersupernat.
EXECUTE.
COMPUTE DisAt4.KarmaT3 = T3DisAt4.Karma .
EXECUTE.
COMPUTE DisAt5.NeppeopT3 = T3DisAt5.Neppeop.
EXECUTE.
COMPUTE DisAt6.GovtsT3 =  T3DisAt6.Govts.
EXECUTE.

*RELIG

COMPUTE Relig1.PrivateactivT1 = T1Relig1.Privateactiv .
EXECUTE.

COMPUTE Relig2.PublicactivT1 = T1Relig2.Publicactiv . 
EXECUTE.

COMPUTE Relig1.PrivateactivT2 = T2Relig1.Privateactiv .
EXECUTE.

COMPUTE Relig2.PublicactivT2 = T2Relig2.Publicactiv . 
EXECUTE.
COMPUTE Relig1.PrivateactivT3 = T3Relig1.Privateactiv .
EXECUTE.

COMPUTE Relig2.PublicactivT3 = T3Relig2.Publicactiv . 
EXECUTE.


*HELP GIVING DIS

COMPUTE HGDis1.WillinghelpT1 = T1HGDis1.Willinghelp.
EXECUTE.
COMPUTE HGDis2.HelpaftermathT1 = T1HGDis2.Helpaftermath.
EXECUTE.
*COMPUTE HGDis1.WillinghelpT2 = T2HGDis1.Willinghelp.
*EXECUTE.
*COMPUTE HGDis2.HelpaftermathT2 = T2HGDis2.Helpaftermath.
*EXECUTE.
*COMPUTE HGDis1.WillinghelpT3 = T3HGDis1.Willinghelp.
*EXECUTE.
*COMPUTE HGDis2.HelpaftermathT3 = T3HGDis2.Helpaftermath.
*EXECUTE.

COMPUTE HSMH2a.ComfortseekhelpfutureT1 = T1HSMH1.Comfortseekinghelpfuture .
EXECUTE.
COMPUTE HSMH2a.ComfortseekhelpfutureT2 = T2HSMH2a.Comfortseekinghelpfuture .
EXECUTE.
COMPUTE HSMH2a.ComfortseekhelpfutureT3 = T3HSMH2a.Comfortseekinghelpfuture.
EXECUTE.
COMPUTE HSDis2.ComfortseekinghelpT1 = T1HSDis1.Comfortseekinghelp  .
EXECUTE.
COMPUTE HGMH2.WillinghelpneighborT1 = T1HGMH1.Willinghelpneighbor.
EXECUTE.
COMPUTE HGMH3.KnowhowhelpT1 = T1HGMH2.Knowhowhelp .
EXECUTE.
COMPUTE HGDis2.WillinghelpT1 = T1HGDis1.Willinghelp.
EXECUTE.

COMPUTE HSMH2b.GodsT1 = T1HSMH2b.Gods.
EXECUTE.
COMPUTE HSMH2b.PriestT1 = T1HSMH2b.Priest.
EXECUTE.
COMPUTE HSMH2b.NeighborsT1 = T1HSMH2b.Neighbors.
EXECUTE.
COMPUTE HSMH2b.FamilyT1 = T1HSMH2b.Family.
EXECUTE.
COMPUTE HSMH2b.FriendsT1 = T1HSMH2b.Friends.
EXECUTE.
COMPUTE HSMH2b.HospT1 = T1HSMH2b.Hosp .
EXECUTE.
COMPUTE HSMH2b.CBMHT1 =  T1HSMH2b.CBMH .
EXECUTE.
COMPUTE HSMH3.FaultsadnessT1 = T1HSMH3.Faultsadness .
EXECUTE.
COMPUTE HSMH4.CausesadnessGodT1 = T1HSMH4.CausesadnessGod .
EXECUTE.
COMPUTE HSMH4.CausesadnessThinkingT1 = T1HSMH4.CausesadnessThinking.
EXECUTE.
COMPUTE HSMH4.CausesadnessCurseT1 = T1HSMH4.CausesadnessCurse.
EXECUTE.
COMPUTE HSMH4.CausesadnessTraumaStressT1 = T1HSMH4.CausesadnessTraumaStress.
EXECUTE.
COMPUTE HSMH4.CausesadnessBrainT1 = T1HSMH4.CausesadnessBrain.
EXECUTE.
COMPUTE HSMH4.CausesadnessDeservedT1 = T1HSMH4.CausesadnessDeserved .
EXECUTE.

COMPUTE HSMH2b.GodsT2 = T2HSMH2b.Gods.
EXECUTE.
COMPUTE HSMH2b.PriestT2 = T2HSMH2b.Priest.
EXECUTE.
COMPUTE HSMH2b.NeighborsT2 = T2HSMH2b.Neighbors.
EXECUTE.
COMPUTE HSMH2b.FamilyT2 = T2HSMH2b.Family.
EXECUTE.
COMPUTE HSMH2b.FriendsT2 = T2HSMH2b.Friends.
EXECUTE.
COMPUTE HSMH2b.HospT2 = T2HSMH2b.Hosp .
EXECUTE.
COMPUTE HSMH2b.CBMHT2 =  T2HSMH2b.CBMH .
EXECUTE.
COMPUTE HSMH3.FaultsadnessT2 = T2HSMH3.Faultsadness .
EXECUTE.
COMPUTE HSMH4.CausesadnessGodT2 = T2HSMH4.CausesadnessGod .
EXECUTE.
COMPUTE HSMH4.CausesadnessThinkingT2 = T2HSMH4.CausesadnessThinking.
EXECUTE.
COMPUTE HSMH4.CausesadnessCurseT2 = T2HSMH4.CausesadnessCurse.
EXECUTE.
COMPUTE HSMH4.CausesadnessTraumaStressT2 = T2HSMH4.CausesadnessTraumaStress.
EXECUTE.
COMPUTE HSMH4.CausesadnessBrainT2 = T2HSMH4.CausesadnessBrain.
EXECUTE.
COMPUTE HSMH4.CausesadnessDeservedT2 = T2HSMH4.CausesadnessDeserved .
EXECUTE.

COMPUTE HSMH2b.GodsT3 = T3HSMH2b.Gods.
EXECUTE.
COMPUTE HSMH2b.PriestT3 = T3HSMH2b.Priest.
EXECUTE.
COMPUTE HSMH2b.NeighborsT3 = T3HSMH2b.Neighbors.
EXECUTE.
COMPUTE HSMH2b.FamilyT3 = T3HSMH2b.Family.
EXECUTE.
COMPUTE HSMH2b.FriendsT3 = T3HSMH2b.Friends.
EXECUTE.
COMPUTE HSMH2b.HospT3 = T3HSMH2b.Hosp .
EXECUTE.
COMPUTE HSMH2b.CBMHT3 =  T3HSMH2b.CBMH .
EXECUTE.
COMPUTE HSMH3.FaultsadnessT3 = T3HSMH3.Faultsadness .
EXECUTE.
COMPUTE HSMH4.CausesadnessGodT3 = T3HSMH4.CausesadnessGod .
EXECUTE.
COMPUTE HSMH4.CausesadnessThinkingT3 = T3HSMH4.CausesadnessThinking.
EXECUTE.
COMPUTE HSMH4.CausesadnessCurseT3 = T3HSMH4.CausesadnessCurse.
EXECUTE.
COMPUTE HSMH4.CausesadnessTraumaStressT3 = T3HSMH4.CausesadnessTraumaStress.
EXECUTE.
COMPUTE HSMH4.CausesadnessBrainT3 = T3HSMH4.CausesadnessBrain.
EXECUTE.
COMPUTE HSMH4.CausesadnessDeservedT3 = T3HSMH4.CausesadnessDeserved .
EXECUTE.

*NOT AT T1

COMPUTE HSMH1a.Seekhelplast6monthsT2 =T2HSMH1a.Seekhelplast6months.
EXECUTE.
COMPUTE HSMH1b.GodsT2 =T2HSMH1b.Gods.
EXECUTE.
COMPUTE HSMH1b.PriestT2 =T2HSMH1b.Priest.
EXECUTE.
COMPUTE HSMH1b.NeighborsT2 =T2HSMH1b.Neighbors.
EXECUTE.
COMPUTE HSMH1b.FamilyT2 = T2HSMH1b.Family.
EXECUTE.
COMPUTE HSMH1b.FriendsT2 =T2HSMH1b.Friends.
EXECUTE.
COMPUTE HSMH1b.HospT2 =T2HSMH1b.Hosp.
EXECUTE.
COMPUTE HSMH1b.CBMHT2 =T2HSMH1b.CBMH .
EXECUTE.

COMPUTE HSMH1a.Seekhelplast6monthsT3 =T3HSMH1a.Seekhelplast6months.
EXECUTE.
COMPUTE HSMH1b.GodsT3 =T3HSMH1b.Gods.
EXECUTE.
COMPUTE HSMH1b.PriestT3 =T3HSMH1b.Priest.
EXECUTE.
COMPUTE HSMH1b.NeighborsT3 =T3HSMH1b.Neighbors.
EXECUTE.
COMPUTE HSMH1b.FamilyT3 = T3HSMH1b.Family.
EXECUTE.
COMPUTE HSMH1b.FriendsT3 =T3HSMH1b.Friends.
EXECUTE.
COMPUTE HSMH1b.HospT3 =T3HSMH1b.Hosp.
EXECUTE.
COMPUTE HSMH1b.CBMHT3 =T3HSMH1b.CBMH .
EXECUTE.


COMPUTE HSDis2.ComfortseekinghelpT2 = T2HSDis2.Comfortseekinghelp.
EXECUTE.
COMPUTE HSDis2.ComfortseekinghelpT3 = T3HSDis2.Comfortseekinghelp.
EXECUTE.

*NOT AT T1

COMPUTE HSDis1.Seekhelplast6monthsT2 = T2HSDis1.Seekhelplast6months.
EXECUTE.
COMPUTE HSDis1.Seekhelplast6monthsT3 = T3HSDis1.Seekhelplast6months.
EXECUTE.

COMPUTE HGMH2.WillinghelpneighborT2 = T2HGMH2.Willinghelpneighbor.
EXECUTE.
COMPUTE HGMH3.KnowhowhelpT2 = T2HGMH3.Knowhowhelp.
EXECUTE.
COMPUTE HGMH2.WillinghelpneighborT3 = T3HGMH2.Willinghelpneighbor.
EXECUTE.
COMPUTE HGMH3.KnowhowhelpT3 = T3HGMH3.Knowhowhelp.
EXECUTE.
*NOT AT T1

COMPUTE HGMH1.Helpedsomeonelast6monthsT2 = T2HGMH1.Helpedsomeonelast6months.
EXECUTE.
COMPUTE HGMH1.Helpedsomeonelast6monthsT3 = T3HGMH1.Helpedsomeonelast6months.
EXECUTE.


COMPUTE HGDis2.WillinghelpT2 = T2HGDis2.Willinghelp.
EXECUTE.
COMPUTE HGDis2.WillinghelpT3 = T3HGDis2.Willinghelp.
EXECUTE.

*NOT AT T1

COMPUTE HGDis1.Helpedlast6monthsT2 = T2HGDis1.Helpedlast6months.
EXECUTE.
COMPUTE HGDis1.Helpedlast6monthsT3 = T3HGDis1.Helpedlast6months.
EXECUTE.

COMPUTE FuncMsumT1 = T1FuncM1.Getup + T1FuncM2.Eat + T1FuncM3.Cleanself + T1FuncM4.Workfields + T1FuncM5.Chores + T1FuncM6.Careforfamily + 
T1FuncM7.Commmeetings + T1FuncM8.Religcult + T1FuncM9.Helpneighbors.
EXECUTE.
COMPUTE FuncMsumT2 = T2FuncM1.Getup + T2FuncM2.Eat + T2FuncM3.Cleanself + T2FuncM4.Workfields + T2FuncM5.Chores + T2FuncM6.Careforfamily + 
T2FuncM7.Commmeetings + T2FuncM8.Religcult + T2FuncM9.Helpneighbors.
EXECUTE.
COMPUTE FuncMsumT3 = T3FuncM1.Getup + T3FuncM2.Eat + T3FuncM3.Cleanself + T3FuncM4.Workfields + T3FuncM5.Chores + T3FuncM6.Careforfamily + 
T3FuncM7.Commmeetings + T3FuncM8.Religcult + T3FuncM9.Helpneighbors.
EXECUTE.

COMPUTE FuncMmeanT1 = mean(T1FuncM1.Getup , T1FuncM2.Eat , T1FuncM3.Cleanself , T1FuncM4.Workfields , T1FuncM5.Chores , T1FuncM6.Careforfamily , 
T1FuncM7.Commmeetings , T1FuncM8.Religcult , T1FuncM9.Helpneighbors).
EXECUTE.
COMPUTE FuncMmeanT2 = mean(T2FuncM1.Getup , T2FuncM2.Eat , T2FuncM3.Cleanself , T2FuncM4.Workfields , T2FuncM5.Chores , T2FuncM6.Careforfamily , 
T2FuncM7.Commmeetings , T2FuncM8.Religcult , T2FuncM9.Helpneighbors).
EXECUTE.
COMPUTE FuncMmeanT3 = mean(T3FuncM1.Getup , T3FuncM2.Eat , T3FuncM3.Cleanself , T3FuncM4.Workfields , T3FuncM5.Chores , T3FuncM6.Careforfamily , 
T3FuncM7.Commmeetings , T3FuncM8.Religcult , T3FuncM9.Helpneighbors).
EXECUTE.
COMPUTE FuncMmean6_T1 = mean.6(T1FuncM1.Getup , T1FuncM2.Eat , T1FuncM3.Cleanself , T1FuncM4.Workfields , T1FuncM5.Chores , T1FuncM6.Careforfamily , 
T1FuncM7.Commmeetings , T1FuncM8.Religcult , T1FuncM9.Helpneighbors).
EXECUTE.
COMPUTE FuncMmean6_T2 = mean.6(T2FuncM1.Getup , T2FuncM2.Eat , T2FuncM3.Cleanself , T2FuncM4.Workfields , T2FuncM5.Chores , T2FuncM6.Careforfamily , 
T2FuncM7.Commmeetings , T2FuncM8.Religcult , T2FuncM9.Helpneighbors).
EXECUTE.
COMPUTE FuncMmean6_T3 = mean.6(T3FuncM1.Getup , T3FuncM2.Eat , T3FuncM3.Cleanself , T3FuncM4.Workfields , T3FuncM5.Chores , T3FuncM6.Careforfamily , 
T3FuncM7.Commmeetings , T3FuncM8.Religcult , T3FuncM9.Helpneighbors).
EXECUTE.


COMPUTE FuncFsumT1 = T1FuncF1.Chores + T1FuncF2.Prepmeal + T1FuncF3.Cleanself + T1FuncF4.Enjoyself + T1FuncF5.Carefam + T1FuncF6.Workfield + 
T1FuncF7.ReligCult + T1FuncF8.Commmeeting + T1FuncF9.Helpneighbors.
EXECUTE.
COMPUTE FuncFsumT2 = T2FuncF1.Chores + T2FuncF2.Prepmeal + T2FuncF3.Cleanself + T2FuncF4.Enjoyself + T2FuncF5.Carefam + T2FuncF6.Workfield + 
T2FuncF7.ReligCult + T2FuncF8.Commmeeting + T2FuncF9.Helpneighbors.
EXECUTE.
COMPUTE FuncFsumT3 = T3FuncF1.Chores + T3FuncF2.Prepmeal + T3FuncF3.Cleanself + T3FuncF4.Enjoyself + T3FuncF5.Carefam + T3FuncF6.Workfield + 
T3FuncF7.ReligCult + T3FuncF8.Commmeeting + T3FuncF9.Helpneighbors.
EXECUTE.
COMPUTE FuncFmeanT1 = mean(T1FuncF1.Chores , T1FuncF2.Prepmeal , T1FuncF3.Cleanself , T1FuncF4.Enjoyself , T1FuncF5.Carefam , T1FuncF6.Workfield , 
T1FuncF7.ReligCult , T1FuncF8.Commmeeting , T1FuncF9.Helpneighbors).
EXECUTE.
COMPUTE FuncFmeanT2 = mean(T2FuncF1.Chores , T2FuncF2.Prepmeal , T2FuncF3.Cleanself , T2FuncF4.Enjoyself , T2FuncF5.Carefam , T2FuncF6.Workfield , 
T2FuncF7.ReligCult , T2FuncF8.Commmeeting , T2FuncF9.Helpneighbors).
EXECUTE.
COMPUTE FuncFmeanT3 =mean(T3FuncF1.Chores , T3FuncF2.Prepmeal , T3FuncF3.Cleanself , T3FuncF4.Enjoyself , T3FuncF5.Carefam , T3FuncF6.Workfield , 
T3FuncF7.ReligCult , T3FuncF8.Commmeeting , T3FuncF9.Helpneighbors).
EXECUTE.
COMPUTE FuncFmean6_T1 = mean.6(T1FuncF1.Chores , T1FuncF2.Prepmeal , T1FuncF3.Cleanself , T1FuncF4.Enjoyself , T1FuncF5.Carefam , T1FuncF6.Workfield , 
T1FuncF7.ReligCult , T1FuncF8.Commmeeting , T1FuncF9.Helpneighbors).
EXECUTE.
COMPUTE FuncFmean6_T2 = mean.6(T2FuncF1.Chores , T2FuncF2.Prepmeal , T2FuncF3.Cleanself , T2FuncF4.Enjoyself , T2FuncF5.Carefam , T2FuncF6.Workfield , 
T2FuncF7.ReligCult , T2FuncF8.Commmeeting , T2FuncF9.Helpneighbors).
EXECUTE.
COMPUTE FuncFmean6_T3 =mean.6(T3FuncF1.Chores , T3FuncF2.Prepmeal , T3FuncF3.Cleanself , T3FuncF4.Enjoyself , T3FuncF5.Carefam , T3FuncF6.Workfield , 
T3FuncF7.ReligCult , T3FuncF8.Commmeeting , T3FuncF9.Helpneighbors).
EXECUTE.


/*
GLM T1BDImean T2BDImean BY Intervention
  /WSFACTOR=BDI 2 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(BDI*Intervention)
  /EMMEANS=TABLES(Intervention) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(BDI) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=BDI 
  /DESIGN=Intervention.
*/

/*
GLM T1BDIsum T2BDIsum BY Intervention
  /WSFACTOR=Time 2 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Time*Intervention)
  /EMMEANS=TABLES(Intervention) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Time) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Time 
  /DESIGN=Intervention.
*/

/*
GLM T1BDIsum T2BDIsum BY Intervention2
  /WSFACTOR=Time 2 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(Time*Intervention2)
  /EMMEANS=TABLES(Intervention2) COMPARE ADJ(LSD)
  /EMMEANS=TABLES(Time) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN=Time 
  /DESIGN=Intervention2.
*/


*DISASTER PREPAREDNESS

RECODE T1DP1.Supplykit T1DP2.Itemsinhouse T1DP3.Meds T1DP4.Foodpeople T1DP5.Foodanimals T1DP6.Docs 
    T1DP7.Firewood T1DP8.Secureddwelling T1DP9.Raiseitems T1DP10.Divertwater T1DP11.Removeblowingobj 
    T1DP12.Famemergplan T1DP13.Evacplan T1DP14.Reconnectfamplan T1DP15.Talktochildren 
    T1DP16.RadioTVcomp T1DP17.Firstaid T1DP18.Cleanwater T1DP19.Disinfect T1DP20.Sanitation 
    T1DP21.Safeplacewaterrise T1DP22.SafeplaceEQ T1DP23.Riskysafeplacemap T1DP24.Helpneighbors 
    T1DP25a.Other (1=1) (2=0).
EXECUTE.

RECODE T2DP1.Supplykit T2DP2.Itemsinhouse T2DP3.Meds T2DP4.Foodpeople T2DP5.Foodanimals T2DP6.Docs 
    T2DP7.Firewood T2DP8.Secureddwelling T2DP9.Raiseitems T2DP10.Divertwater T2DP11.Removeblowingobj 
    T2DP12.Famemergplan T2DP13.Evacplan T2DP14.Reconnectfamplan T2DP15.Talktochildren 
    T2DP16.RadioTVcomp T2DP17.Firstaid T2DP18.Cleanwater T2DP19.Disinfect T2DP20.Sanitation 
    T2DP21.Safeplacewaterrise T2DP22.SafeplaceEQ T2DP23.Riskysafeplacemap T2DP24.Helpneighbors 
    T2DP25a.Other (1=1) (2=0).
EXECUTE.

RECODE T3DP1.Supplykit T3DP2.Itemsinhouse T3DP3.Meds T3DP4.Foodpeople T3DP5.Foodanimals T3DP6.Docs 
    T3DP7.Firewood T3DP8.Secureddwelling T3DP9.Raiseitems T3DP10.Divertwater T3DP11.Removeblowingobj 
    T3DP12.Famemergplan T3DP13.Evacplan T3DP14.Reconnectfamplan T3DP15.Talktochildren 
    T3DP16.RadioTVcomp T3DP17.Firstaid T3DP18.Cleanwater T3DP19.Disinfect T3DP20.Sanitation 
    T3DP21.Safeplacewaterrise T3DP22.SafeplaceEQ T3DP23.Riskysafeplacemap T3DP24.Helpneighbors 
    T3DP25a.Other (1=1) (2=0).
EXECUTE.

RECODE T1DP3.Meds T1DP5.Foodanimals T1DP15.Talktochildren (3=SYSMIS) (ELSE=Copy) INTO T1DP3.MedsNA 
    T1DP5.FoodanimalsNA T1DP15.TalktochildrenNA.
EXECUTE.

RECODE T2DP3.Meds T2DP5.Foodanimals T2DP15.Talktochildren (3=SYSMIS) (ELSE=Copy) INTO T2DP3.MedsNA 
    T2DP5.FoodanimalsNA T2DP15.TalktochildrenNA.
EXECUTE.

RECODE T3DP3.Meds T3DP5.Foodanimals T3DP15.Talktochildren (3=SYSMIS) (ELSE=Copy) INTO T3DP3.MedsNA 
    T3DP5.FoodanimalsNA T3DP15.TalktochildrenNA.
EXECUTE.

COMPUTE DPsum24_T1=T1DP1.Supplykit + T1DP2.Itemsinhouse + T1DP3.MedsNA + T1DP4.Foodpeople + 
    T1DP5.FoodanimalsNA + T1DP6.Docs + T1DP7.Firewood + T1DP8.Secureddwelling + T1DP9.Raiseitems + 
    T1DP10.Divertwater + T1DP11.Removeblowingobj + T1DP12.Famemergplan + T1DP13.Evacplan + 
    T1DP14.Reconnectfamplan + T1DP15.TalktochildrenNA + T1DP16.RadioTVcomp + T1DP17.Firstaid + 
    T1DP18.Cleanwater + T1DP19.Disinfect + T1DP20.Sanitation + T1DP21.Safeplacewaterrise + 
    T1DP22.SafeplaceEQ + T1DP23.Riskysafeplacemap + T1DP24.Helpneighbors.
EXECUTE.

COMPUTE DPsum24_T2=T2DP1.Supplykit + T2DP2.Itemsinhouse + T2DP3.MedsNA + T2DP4.Foodpeople + 
    T2DP5.FoodanimalsNA + T2DP6.Docs + T2DP7.Firewood + T2DP8.Secureddwelling + T2DP9.Raiseitems + 
    T2DP10.Divertwater + T2DP11.Removeblowingobj + T2DP12.Famemergplan + T2DP13.Evacplan + 
    T2DP14.Reconnectfamplan + T2DP15.TalktochildrenNA + T2DP16.RadioTVcomp + T2DP17.Firstaid + 
    T2DP18.Cleanwater + T2DP19.Disinfect + T2DP20.Sanitation + T2DP21.Safeplacewaterrise + 
    T2DP22.SafeplaceEQ + T2DP23.Riskysafeplacemap + T2DP24.Helpneighbors.
EXECUTE.

COMPUTE DPsum24_T3=T3DP1.Supplykit + T3DP2.Itemsinhouse + T3DP3.MedsNA + T3DP4.Foodpeople + 
    T3DP5.FoodanimalsNA + T3DP6.Docs + T3DP7.Firewood + T3DP8.Secureddwelling + T3DP9.Raiseitems + 
    T3DP10.Divertwater + T3DP11.Removeblowingobj + T3DP12.Famemergplan + T3DP13.Evacplan + 
    T3DP14.Reconnectfamplan + T3DP15.TalktochildrenNA + T3DP16.RadioTVcomp + T3DP17.Firstaid + 
    T3DP18.Cleanwater + T3DP19.Disinfect + T3DP20.Sanitation + T3DP21.Safeplacewaterrise + 
    T3DP22.SafeplaceEQ + T3DP23.Riskysafeplacemap + T3DP24.Helpneighbors.
EXECUTE.

COMPUTE DPsum21_T1=T1DP1.Supplykit + T1DP2.Itemsinhouse + T1DP4.Foodpeople + 
     T1DP6.Docs + T1DP7.Firewood + T1DP8.Secureddwelling + T1DP9.Raiseitems + 
    T1DP10.Divertwater + T1DP11.Removeblowingobj + T1DP12.Famemergplan + T1DP13.Evacplan + 
    T1DP14.Reconnectfamplan + T1DP16.RadioTVcomp + T1DP17.Firstaid + 
    T1DP18.Cleanwater + T1DP19.Disinfect + T1DP20.Sanitation + T1DP21.Safeplacewaterrise + 
    T1DP22.SafeplaceEQ + T1DP23.Riskysafeplacemap + T1DP24.Helpneighbors.
EXECUTE.

COMPUTE DPsum21_T2=T2DP1.Supplykit + T2DP2.Itemsinhouse + T2DP4.Foodpeople + 
   T2DP6.Docs + T2DP7.Firewood + T2DP8.Secureddwelling + T2DP9.Raiseitems + 
    T2DP10.Divertwater + T2DP11.Removeblowingobj + T2DP12.Famemergplan + T2DP13.Evacplan + 
    T2DP14.Reconnectfamplan + T2DP16.RadioTVcomp + T2DP17.Firstaid + 
    T2DP18.Cleanwater + T2DP19.Disinfect + T2DP20.Sanitation + T2DP21.Safeplacewaterrise + 
    T2DP22.SafeplaceEQ + T2DP23.Riskysafeplacemap + T2DP24.Helpneighbors.
EXECUTE.


COMPUTE DPsum21_T3=T3DP1.Supplykit + T3DP2.Itemsinhouse + T3DP4.Foodpeople + 
   T3DP6.Docs + T3DP7.Firewood + T3DP8.Secureddwelling + T3DP9.Raiseitems + 
    T3DP10.Divertwater + T3DP11.Removeblowingobj + T3DP12.Famemergplan + T3DP13.Evacplan + 
    T3DP14.Reconnectfamplan + T3DP16.RadioTVcomp + T3DP17.Firstaid + 
    T3DP18.Cleanwater + T3DP19.Disinfect + T3DP20.Sanitation + T3DP21.Safeplacewaterrise + 
    T3DP22.SafeplaceEQ + T3DP23.Riskysafeplacemap + T3DP24.Helpneighbors.
EXECUTE.

FREQUENCIES VARIABLES=T1DP1.Supplykit T1DP2.Itemsinhouse T1DP3.MedsNA T1DP4.Foodpeople 
    T1DP5.FoodanimalsNA T1DP6.Docs T1DP7.Firewood T1DP8.Secureddwelling T1DP9.Raiseitems 
    T1DP10.Divertwater T1DP11.Removeblowingobj T1DP12.Famemergplan T1DP13.Evacplan 
    T1DP14.Reconnectfamplan T1DP15.TalktochildrenNA T1DP16.RadioTVcomp T1DP17.Firstaid T1DP18.Cleanwater 
    T1DP19.Disinfect T1DP20.Sanitation T1DP21.Safeplacewaterrise T1DP22.SafeplaceEQ 
    T1DP23.Riskysafeplacemap T1DP24.Helpneighbors
  /ORDER=ANALYSIS.

FREQUENCIES VARIABLES=T2DP1.Supplykit T2DP2.Itemsinhouse T2DP3.MedsNA T2DP4.Foodpeople 
    T2DP5.FoodanimalsNA T2DP6.Docs T2DP7.Firewood T2DP8.Secureddwelling T2DP9.Raiseitems 
    T2DP10.Divertwater T2DP11.Removeblowingobj T2DP12.Famemergplan T2DP13.Evacplan 
    T2DP14.Reconnectfamplan T2DP15.TalktochildrenNA T2DP16.RadioTVcomp T2DP17.Firstaid T2DP18.Cleanwater 
    T2DP19.Disinfect T2DP20.Sanitation T2DP21.Safeplacewaterrise T2DP22.SafeplaceEQ 
    T2DP23.Riskysafeplacemap T2DP24.Helpneighbors
  /ORDER=ANALYSIS.
FREQUENCIES VARIABLES=T3DP1.Supplykit T3DP2.Itemsinhouse T3DP3.MedsNA T3DP4.Foodpeople 
    T3DP5.FoodanimalsNA T3DP6.Docs T3DP7.Firewood T3DP8.Secureddwelling T3DP9.Raiseitems 
    T3DP10.Divertwater T3DP11.Removeblowingobj T3DP12.Famemergplan T3DP13.Evacplan 
    T3DP14.Reconnectfamplan T3DP15.TalktochildrenNA T3DP16.RadioTVcomp T3DP17.Firstaid T3DP18.Cleanwater 
    T3DP19.Disinfect T3DP20.Sanitation T3DP21.Safeplacewaterrise T3DP22.SafeplaceEQ 
    T3DP23.Riskysafeplacemap T3DP24.Helpneighbors
  /ORDER=ANALYSIS.


*WITHOUT variables with many NAs (meds, animals, children)
/*
GLM T1DPsum21 T2DPsum21 BY Intervention
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(time*Intervention)
  /EMMEANS=TABLES(Intervention) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN= time
  /DESIGN= Intervention.
*/
/*
GLM T1DPsum21 T2DPsum21 BY Intervention2
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(time*Intervention2)
  /EMMEANS=TABLES(Intervention2) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN= time
  /DESIGN= Intervention2.
*/

/*
GLM T1DPsum24 T2DPsum24 BY Intervention
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(time*Intervention)
  /EMMEANS=TABLES(Intervention) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN= time
  /DESIGN= Intervention.
*/


*SELF EFF

DESCRIPTIVES VARIABLES=T1SelfEff1.time T1SelfEff2.afford T1SelfEff3.info T2SelfEff1.time 
    T2SelfEff2.afford T2SelfEff3.info
  /STATISTICS=MEAN STDDEV MIN MAX.

COMPUTE selfeffsumT1=T1SelfEff1.time + T1SelfEff2.afford + T1SelfEff3.info.
EXECUTE.


COMPUTE selfeffsumT2=T2SelfEff1.time + T2SelfEff2.afford + T2SelfEff3.info.
EXECUTE.

COMPUTE selfeffsumT3=T3SelfEff1.time + T3SelfEff2.afford + T3SelfEff3.info.
EXECUTE.

COMPUTE selfeffmeanT1=mean(T1SelfEff1.time , T1SelfEff2.afford , T1SelfEff3.info).
EXECUTE.


COMPUTE selfeffmeanT2=mean(T2SelfEff1.time , T2SelfEff2.afford , T2SelfEff3.info).
EXECUTE.

COMPUTE selfeffmeanT3=mean(T3SelfEff1.time , T3SelfEff2.afford , T3SelfEff3.info).
EXECUTE.

COMPUTE SelfEff1.timeT1 = T1SelfEff1.time.
EXECUTE.
COMPUTE SelfEff2.affordT1 = T1SelfEff2.afford.
EXECUTE.
COMPUTE SelfEff3.infoT1 = T1SelfEff3.info.
EXECUTE.
COMPUTE SelfEff1.timeT2 = T2SelfEff1.time.
EXECUTE.
COMPUTE SelfEff2.affordT2 = T2SelfEff2.afford.
EXECUTE.
COMPUTE SelfEff3.infoT2 = T2SelfEff3.info.
EXECUTE.
COMPUTE SelfEff1.timeT3 = T3SelfEff1.time.
EXECUTE.
COMPUTE SelfEff2.affordT3 = T3SelfEff2.afford.
EXECUTE.
COMPUTE SelfEff3.infoT3 = T3SelfEff3.info.
EXECUTE.
/*
GLM T1selfeffsum T2selfeffsum BY Intervention
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(time*Intervention)
  /EMMEANS=TABLES(Intervention) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN= time
  /DESIGN= Intervention.
*/
/*
GLM T1selfeffsum T2selfeffsum BY Intervention2
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(time*Intervention2)
  /EMMEANS=TABLES(Intervention2) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN= time
  /DESIGN= Intervention2.
*/


*DIS MH

DESCRIPTIVES VARIABLES=T1DisMH1.anxious T1DisMH2.depressed T1DisMH3.avoid T2DisMH1.anxious 
    T2DisMH2.depressed T2DisMH3.avoid
  /STATISTICS=MEAN STDDEV MIN MAX.

COMPUTE DISMHsumT1=T1DisMH1.anxious + T1DisMH2.depressed + T1DisMH3.avoid.
EXECUTE.


COMPUTE DISMHsumT2=T2DisMH1.anxious + T2DisMH2.depressed + T2DisMH3.avoid.
EXECUTE.

COMPUTE DISMHsumT3=T3DisMH1.anxious + T3DisMH2.depressed + T3DisMH3.avoid.
EXECUTE.


COMPUTE DISMHmeanT1=mean(T1DisMH1.anxious , T1DisMH2.depressed , T1DisMH3.avoid).
EXECUTE.


COMPUTE DISMHmeanT2=mean(T2DisMH1.anxious , T2DisMH2.depressed , T2DisMH3.avoid).
EXECUTE.

COMPUTE DISMHmeanT3=mean(T3DisMH1.anxious , T3DisMH2.depressed , T3DisMH3.avoid).
EXECUTE.

COMPUTE DisMH1.anxiousT1 =  T1DisMH1.anxious . 
EXECUTE.
COMPUTE DisMH2.depressedT1 = T1DisMH2.depressed . 
EXECUTE.
COMPUTE DisMH3.avoidT1 =  T1DisMH3.avoid.
EXECUTE.
COMPUTE DisMH1.anxiousT2 =  T2DisMH1.anxious . 
EXECUTE.
COMPUTE DisMH2.depressedT2 = T2DisMH2.depressed . 
EXECUTE.
COMPUTE DisMH3.avoidT2 =  T2DisMH3.avoid.
EXECUTE.
COMPUTE DisMH1.anxiousT3 =  T3DisMH1.anxious . 
EXECUTE.
COMPUTE DisMH2.depressedT3 = T3DisMH2.depressed . 
EXECUTE.
COMPUTE DisMH3.avoidT3 =  T3DisMH3.avoid.
EXECUTE.

/*
GLM T1DISMHsum T2DISMHsum BY Intervention
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(time*Intervention)
  /EMMEANS=TABLES(Intervention) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN= time
  /DESIGN= Intervention.
*/
/*
GLM T1DISMHsum T2DISMHsum BY Intervention2
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(time*Intervention2)
  /EMMEANS=TABLES(Intervention2) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN= time
  /DESIGN= Intervention2.
*/


*IDIOMS


DESCRIPTIVES VARIABLES=T1PMHP1.Confusedworried T1PMHP2.Mistrust T1PMHP3.Inferior T1PMHP4.Hurt 
    T1PMHP5.Baddown T1PMHP6.Revenge T1PMHP7.Scream T1PMHP8.Substanceabuse T1PMHP9.Talktoself 
    T1PMHP10.Bodypain T1PMHP11.Weak T1PMHP12.Scared T1PMHP13.Disoriented T1PMHP14.Heartstopped 
    T1PMHP15.Handsfeetcold T1PMHP16.Hearttroubled T1PMHP17.Tremblefear T2PMHP1.Confusedworried 
    T2PMHP2.Mistrust T2PMHP3.Inferior T2PMHP4.Hurt T2PMHP5.Baddown T2PMHP6.Revenge T2PMHP7.Scream 
    T2PMHP8.Substanceabuse T2PMHP9.Talktoself T2PMHP10.Bodypain T2PMHP11.Weak T2PMHP12.Scared 
    T2PMHP13.Disoriented T2PMHP14.Heartstopped T2PMHP15.Handsfeetcold T2PMHP16.Hearttroubled 
    T2PMHP17.Tremblefear
T3PMHP1.Confusedworried 
    T3PMHP2.Mistrust T3PMHP3.Inferior T3PMHP4.Hurt T3PMHP5.Baddown T3PMHP6.Revenge T3PMHP7.Scream 
    T3PMHP8.Substanceabuse T3PMHP9.Talktoself T3PMHP10.Bodypain T3PMHP11.Weak T3PMHP12.Scared 
    T3PMHP13.Disoriented T3PMHP14.Heartstopped T3PMHP15.Handsfeetcold T3PMHP16.Hearttroubled 
    T3PMHP17.Tremblefear
  /STATISTICS=MEAN STDDEV MIN MAX.

COMPUTE PMHPsumT1=T1PMHP1.Confusedworried + T1PMHP2.Mistrust + T1PMHP3.Inferior + T1PMHP4.Hurt + 
    T1PMHP5.Baddown + T1PMHP6.Revenge + T1PMHP7.Scream + T1PMHP8.Substanceabuse + T1PMHP9.Talktoself + 
    T1PMHP10.Bodypain + T1PMHP11.Weak + T1PMHP12.Scared + T1PMHP13.Disoriented + T1PMHP14.Heartstopped 
    + T1PMHP15.Handsfeetcold + T1PMHP16.Hearttroubled + T1PMHP17.Tremblefear.
EXECUTE.

COMPUTE PMHPsumT2=T2PMHP1.Confusedworried + T2PMHP2.Mistrust + T2PMHP3.Inferior + T2PMHP4.Hurt + 
    T2PMHP5.Baddown + T2PMHP6.Revenge + T2PMHP7.Scream + T2PMHP8.Substanceabuse + T2PMHP9.Talktoself + 
    T2PMHP10.Bodypain + T2PMHP11.Weak + T2PMHP12.Scared + T2PMHP13.Disoriented + T2PMHP14.Heartstopped 
    + T2PMHP15.Handsfeetcold + T2PMHP16.Hearttroubled + T2PMHP17.Tremblefear.
EXECUTE.

COMPUTE PMHPsumT3=T3PMHP1.Confusedworried + T3PMHP2.Mistrust + T3PMHP3.Inferior + T3PMHP4.Hurt + 
    T3PMHP5.Baddown + T3PMHP6.Revenge + T3PMHP7.Scream + T3PMHP8.Substanceabuse + T3PMHP9.Talktoself + 
    T3PMHP10.Bodypain + T3PMHP11.Weak + T3PMHP12.Scared + T3PMHP13.Disoriented + T3PMHP14.Heartstopped 
    + T3PMHP15.Handsfeetcold + T3PMHP16.Hearttroubled + T3PMHP17.Tremblefear.
EXECUTE.

COMPUTE PMHPmeanT1=mean(T1PMHP1.Confusedworried , T1PMHP2.Mistrust , T1PMHP3.Inferior , T1PMHP4.Hurt , 
    T1PMHP5.Baddown , T1PMHP6.Revenge , T1PMHP7.Scream , T1PMHP8.Substanceabuse , T1PMHP9.Talktoself , 
    T1PMHP10.Bodypain , T1PMHP11.Weak , T1PMHP12.Scared , T1PMHP13.Disoriented , T1PMHP14.Heartstopped 
    , T1PMHP15.Handsfeetcold , T1PMHP16.Hearttroubled , T1PMHP17.Tremblefear).
EXECUTE.

COMPUTE PMHPmeanT2=mean(T2PMHP1.Confusedworried , T2PMHP2.Mistrust , T2PMHP3.Inferior , T2PMHP4.Hurt , 
    T2PMHP5.Baddown , T2PMHP6.Revenge , T2PMHP7.Scream , T2PMHP8.Substanceabuse , T2PMHP9.Talktoself , 
    T2PMHP10.Bodypain , T2PMHP11.Weak , T2PMHP12.Scared , T2PMHP13.Disoriented , T2PMHP14.Heartstopped 
    , T2PMHP15.Handsfeetcold , T2PMHP16.Hearttroubled , T2PMHP17.Tremblefear).
EXECUTE.

COMPUTE PMHPmeanT3=mean(T3PMHP1.Confusedworried , T3PMHP2.Mistrust , T3PMHP3.Inferior , T3PMHP4.Hurt , 
    T3PMHP5.Baddown , T3PMHP6.Revenge , T3PMHP7.Scream , T3PMHP8.Substanceabuse , T3PMHP9.Talktoself , 
    T3PMHP10.Bodypain , T3PMHP11.Weak , T3PMHP12.Scared , T3PMHP13.Disoriented , T3PMHP14.Heartstopped 
    , T3PMHP15.Handsfeetcold , T3PMHP16.Hearttroubled , T3PMHP17.Tremblefear).
EXECUTE.

COMPUTE PMHPmean13_T1=mean.13(T1PMHP1.Confusedworried , T1PMHP2.Mistrust , T1PMHP3.Inferior , T1PMHP4.Hurt , 
    T1PMHP5.Baddown , T1PMHP6.Revenge , T1PMHP7.Scream , T1PMHP8.Substanceabuse , T1PMHP9.Talktoself , 
    T1PMHP10.Bodypain , T1PMHP11.Weak , T1PMHP12.Scared , T1PMHP13.Disoriented , T1PMHP14.Heartstopped 
    , T1PMHP15.Handsfeetcold , T1PMHP16.Hearttroubled , T1PMHP17.Tremblefear).
EXECUTE.

COMPUTE PMHPmean13_T2=mean.13(T2PMHP1.Confusedworried , T2PMHP2.Mistrust , T2PMHP3.Inferior , T2PMHP4.Hurt , 
    T2PMHP5.Baddown , T2PMHP6.Revenge , T2PMHP7.Scream , T2PMHP8.Substanceabuse , T2PMHP9.Talktoself , 
    T2PMHP10.Bodypain , T2PMHP11.Weak , T2PMHP12.Scared , T2PMHP13.Disoriented , T2PMHP14.Heartstopped 
    , T2PMHP15.Handsfeetcold , T2PMHP16.Hearttroubled , T2PMHP17.Tremblefear).
EXECUTE.

COMPUTE PMHPmean13_T3=mean.13(T3PMHP1.Confusedworried , T3PMHP2.Mistrust , T3PMHP3.Inferior , T3PMHP4.Hurt , 
    T3PMHP5.Baddown , T3PMHP6.Revenge , T3PMHP7.Scream , T3PMHP8.Substanceabuse , T3PMHP9.Talktoself , 
    T3PMHP10.Bodypain , T3PMHP11.Weak , T3PMHP12.Scared , T3PMHP13.Disoriented , T3PMHP14.Heartstopped 
    , T3PMHP15.Handsfeetcold , T3PMHP16.Hearttroubled , T3PMHP17.Tremblefear).
EXECUTE.

/*
GLM T1PMHPsum T2PMHPsum BY Intervention
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(time*Intervention)
  /EMMEANS=TABLES(Intervention) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN= time
  /DESIGN= Intervention.
*/

/*
GLM T1PMHPsum T2PMHPsum BY Intervention2
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(time*Intervention2)
  /EMMEANS=TABLES(Intervention2) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN= time
  /DESIGN= Intervention2.
*/


recode T1SocCoh4.Dontgetalong T2SocCoh4.Dontgetalong T1SocCoh5.Donotsharevalues T2SocCoh5.Donotsharevalues (1=5) (2=4) (4=2) (5=1).
execute.

recode  T3SocCoh4.Dontgetalong  T3SocCoh5.Donotsharevalues (1=5) (2=4) (4=2) (5=1).
execute.
DESCRIPTIVES VARIABLES=T1SocCoh1.Helpneighbors T1SocCoh2.Closeknit T1SocCoh3.Trust 
    T1SocCoh4.Dontgetalong T1SocCoh5.Donotsharevalues T1SocCoh6.Helpdisasters T1SocCoh7.Helpmeindis T2SocCoh1.Helpneighbors 
    T2SocCoh2.Closeknit T2SocCoh3.Trust T2SocCoh4.Dontgetalong T2SocCoh5.Donotsharevalues 
    T2SocCoh6.Helpdisasters T2SocCoh7.Helpmeindis  T3SocCoh1.Helpneighbors 
    T3SocCoh2.Closeknit T3SocCoh3.Trust T3SocCoh4.Dontgetalong T3SocCoh5.Donotsharevalues 
    T3SocCoh6.Helpdisasters T3SocCoh7.Helpmeindis
  /STATISTICS=MEAN STDDEV MIN MAX.

COMPUTE SocCohsum7_T1=T1SocCoh1.Helpneighbors + T1SocCoh2.Closeknit + T1SocCoh3.Trust + 
    T1SocCoh4.Dontgetalong + T1SocCoh5.Donotsharevalues + T1SocCoh6.Helpdisasters + 
    T1SocCoh7.Helpmeindis.
EXECUTE.

COMPUTE SocCohsum7_T2=T2SocCoh1.Helpneighbors + T2SocCoh2.Closeknit + T2SocCoh3.Trust + 
    T2SocCoh4.Dontgetalong + T2SocCoh5.Donotsharevalues + T2SocCoh6.Helpdisasters + 
    T2SocCoh7.Helpmeindis.
EXECUTE.

COMPUTE SocCohsum7_T3=T3SocCoh1.Helpneighbors + T3SocCoh2.Closeknit + T3SocCoh3.Trust + 
    T3SocCoh4.Dontgetalong + T3SocCoh5.Donotsharevalues + T3SocCoh6.Helpdisasters + 
    T3SocCoh7.Helpmeindis.
EXECUTE.

COMPUTE SocCohmean7_T1=mean(T1SocCoh1.Helpneighbors , T1SocCoh2.Closeknit , T1SocCoh3.Trust , 
    T1SocCoh4.Dontgetalong , T1SocCoh5.Donotsharevalues , T1SocCoh6.Helpdisasters , 
    T1SocCoh7.Helpmeindis).
EXECUTE.

COMPUTE SocCohmean7_T2=mean(T2SocCoh1.Helpneighbors , T2SocCoh2.Closeknit , T2SocCoh3.Trust , 
    T2SocCoh4.Dontgetalong , T2SocCoh5.Donotsharevalues , T2SocCoh6.Helpdisasters , 
    T2SocCoh7.Helpmeindis).
EXECUTE.

COMPUTE SocCohmean7_T3=mean(T3SocCoh1.Helpneighbors , T3SocCoh2.Closeknit , T3SocCoh3.Trust , 
    T3SocCoh4.Dontgetalong , T3SocCoh5.Donotsharevalues , T3SocCoh6.Helpdisasters , 
    T3SocCoh7.Helpmeindis).
EXECUTE.


/*
GLM T1SocCohsum7 T2SocCohsum7 BY Intervention
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(time*Intervention)
  /EMMEANS=TABLES(Intervention) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN= time
  /DESIGN= Intervention.
*/

/*
GLM T1SocCohsum7 T2SocCohsum7 BY Intervention2
  /WSFACTOR=time 2 Polynomial 
  /METHOD=SSTYPE(3)
  /PLOT=PROFILE(time*Intervention2)
  /EMMEANS=TABLES(Intervention2) COMPARE ADJ(LSD)
  /PRINT=DESCRIPTIVE 
  /CRITERIA=ALPHA(.05)
  /WSDESIGN= time
  /DESIGN= Intervention2.
*/






