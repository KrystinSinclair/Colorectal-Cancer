
libname project 'C:\Users\Owner\Downloads';


PROC IMPORT OUT= project.coloncancer DATAFILE= 'C:\Users\Owner\Downloads\coloncancer.xlsx' 
            DBMS=xlsx REPLACE; 
     GETNAMES=YES;
RUN;

data project.malemortality ;
Keep locationDESC Male_Mortality;
set project.coloncancer (rename = (DataValue = Male_Mortality));
if Stratification1 ='Male';
if datasource = 'Death Certificate';
if DataValueType = 'Average Annual Age-adjusted Rate';
run;

data project.maleincidence;
keep locationDESC Male_incidence;
set project.coloncancer (rename = (DataValue = Male_Incidence));
if Stratification1 ='Male';
if datasource = 'Statewide central cancer registries';
if DataValueType = 'Average Annual Age-adjusted Rate';
run;

data project.malescreening;
keep locationDESC Male_screening;
set project.coloncancer (rename = (DataValue = Male_screening));
if Stratification1 ='Male';
if datasource = 'BRFSS';
if DataValueType = 'Age-adjusted Prevalence';
run;

data project.femalemortality;
Keep locationDESC feMale_Mortality;
set project.coloncancer (rename = (DataValue = feMale_Mortality));
if Stratification1 ='Female';
if datasource = 'Death Certificate';
if DataValueType = 'Average Annual Age-adjusted Rate';
run;

data project.femaleincidence;
Keep locationDESC feMale_incidence;
set project.coloncancer (rename = (DataValue = feMale_incidence));
if Stratification1 ='Female';
if datasource = 'Statewide central cancer registries';
if DataValueType = 'Average Annual Age-adjusted Rate';
run;

data project.femalescreening;
Keep locationDESC feMale_screening;
set project.coloncancer (rename = (DataValue = feMale_screening));
if Stratification1 ='Female';
if datasource = 'BRFSS';
if DataValueType = 'Age-adjusted Prevalence';
run;

data project.overallscreening;
Keep locationDESC overall_screening;
set project.coloncancer (rename = (DataValue = overall_screening));
if Stratification1 ='Overall';
if datasource = 'BRFSS';
if DataValueType = 'Age-adjusted Prevalence';
run;

data project.overallincidence;
Keep locationDESC overall_incidence;
set project.coloncancer (rename = (DataValue = overall_incidence));
if Stratification1 ='Overall';
if datasource = 'Statewide central cancer registries';
if DataValueType = 'Average Annual Age-adjusted Rate';
run;

data project.overallmortality;
Keep locationDESC overall_mortality;
set project.coloncancer (rename = (DataValue = overall_mortality));
if Stratification1 ='Overall';
if datasource = 'Death Certificate';
if DataValueType = 'Average Annual Age-adjusted Rate';
run;

data project.asianmortality;
Keep locationDESC asianpacificislander_mortality;
set project.coloncancer (rename = (DataValue = asianpacificislander_mortality));
if Stratification1 ='Asian or Pacific Islander';
if datasource = 'Death Certificate';
if DataValueType = 'Average Annual Age-adjusted Rate';
run;

data project.Blackmortality;
Keep locationDESC BlacknonHispanic_mortality;
set project.coloncancer (rename = (DataValue = BlacknonHispanic_mortality));
if Stratification1 ='Black, non-Hispanic';
if datasource = 'Death Certificate';
if DataValueType = 'Average Annual Age-adjusted Rate';
run;

data project.Nativemortality;
Keep locationDESC Native_mortality;
set project.coloncancer (rename = (DataValue = Native_mortality));
if Stratification1 ='American Indian or Alaska Native';
if datasource = 'Death Certificate';
if DataValueType = 'Average Annual Age-adjusted Rate';
run;

data project.Whitemortality;
Keep locationDESC WhitenonHispanic_mortality;
set project.coloncancer (rename = (DataValue = WhitenonHispanic_mortality));
if Stratification1 ='White, non-Hispanic';
if datasource = 'Death Certificate';
if DataValueType = 'Average Annual Age-adjusted Rate';
run;

data project.Hispanicmortality;
Keep locationDESC Hispanic_mortality;
set project.coloncancer (rename = (DataValue = Hispanic_mortality));
if Stratification1 ='Hispanic';
if datasource = 'Death Certificate';
if DataValueType = 'Average Annual Age-adjusted Rate';
run;




data project.asianincidence;
keep locationDESC asian_incidence;
set project.coloncancer (rename = (DataValue = asian_Incidence));
if Stratification1 ='Asian or Pacific Islander';
if datasource = 'Statewide central cancer registries';
if DataValueType = 'Average Annual Age-adjusted Rate';
run;

data project.blackincidence;
keep locationDESC black_incidence;
set project.coloncancer (rename = (DataValue = black_Incidence));
if Stratification1 ='Black, non-Hispanic';
if datasource = 'Statewide central cancer registries';
if DataValueType = 'Average Annual Age-adjusted Rate';
run;

data project.nativeincidence;
keep locationDESC native_incidence;
set project.coloncancer (rename = (DataValue = native_Incidence));
if Stratification1 ='American Indian or Alaska Native';
if datasource = 'Statewide central cancer registries';
if DataValueType = 'Average Annual Age-adjusted Rate';
run;

data project.whiteincidence;
keep locationDESC white_incidence;
set project.coloncancer (rename = (DataValue = white_Incidence));
if Stratification1 ='White, non-Hispanic';
if datasource = 'Statewide central cancer registries';
if DataValueType = 'Average Annual Age-adjusted Rate';
run;

data project.hispanicincidence;
keep locationDESC hispanic_incidence;
set project.coloncancer (rename = (DataValue = hispanic_Incidence));
if Stratification1 ='Hispanic';
if datasource = 'Statewide central cancer registries';
if DataValueType = 'Average Annual Age-adjusted Rate';
run;


data project.hispanicscreening;
keep locationDESC hispanic_screening;
set project.coloncancer (rename = (DataValue = hispanic_screening));
if Stratification1 ='Hispanic';
if datasource = 'BRFSS';
if DataValueType = 'Age-adjusted Prevalence';
run;

data project.whitescreening;
keep locationDESC white_screening;
set project.coloncancer (rename = (DataValue = white_screening));
if Stratification1 ='White, non-Hispanic';
if datasource = 'BRFSS';
if DataValueType = 'Age-adjusted Prevalence';
run;


data project.nativescreening;
keep locationDESC native_screening;
set project.coloncancer (rename = (DataValue = native_screening));
if Stratification1 ='American Indian or Alaska Native';
if datasource = 'BRFSS';
if DataValueType = 'Age-adjusted Prevalence';
run;

data project.blackscreening;
keep locationDESC black_screening;
set project.coloncancer (rename = (DataValue = black_screening));
if Stratification1 ='Black, non-Hispanic';
if datasource = 'BRFSS';
if DataValueType = 'Age-adjusted Prevalence';
run;
data project.asianscreening;
keep locationDESC asian_screening;
set project.coloncancer (rename = (DataValue = asian_screening));
if Stratification1 ='Asian or Pacific Islander';
if datasource = 'BRFSS';
if DataValueType = 'Age-adjusted Prevalence';
run;

data project.multiscreening;
keep locationDESC multi_screening;
set project.coloncancer (rename = (DataValue = multi_screening));
if Stratification1 ='Multiracial, non-Hispanic';
if datasource = 'BRFSS';
if DataValueType = 'Age-adjusted Prevalence';
run;

data project.otherscreening;
keep locationDESC other_screening;
set project.coloncancer (rename = (DataValue = other_screening));
if Stratification1 ='Other, non-Hispanic';
if datasource = 'BRFSS';
if DataValueType = 'Age-adjusted Prevalence';
run;

proc sort data=project.malemortality;
by locationDESC;
run;

proc sort data=project.maleincidence;
by locationDESC;
run;

proc sort data=project.malescreening;
by locationDESC;
run;

proc sort data=project.femalemortality;
by locationDESC;
run;

proc sort data=project.femaleincidence;
by locationDESC;
run;

proc sort data=project.femalescreening;
by locationDESC;
run;

proc sort data=project.overallmortality;
by locationDESC;
run;

proc sort data=project.overallincidence;
by locationDESC;
run;

proc sort data=project.overallscreening;
by locationDESC;
run;


proc sort data=project.otherscreening;
by locationDESC;
run;

proc sort data=project.multiscreening;
by locationDESC;
run;

proc sort data=project.nativemortality;
by locationDESC;
run;

proc sort data=project.nativeincidence;
by locationDESC;
run;

proc sort data=project.nativescreening;
by locationDESC;
run;

proc sort data=project.hispanicmortality;
by locationDESC;
run;

proc sort data=project.hispanicincidence;
by locationDESC;
run;

proc sort data=project.hispanicscreening;
by locationDESC;
run;
proc sort data=project.whitemortality;
by locationDESC;
run;

proc sort data=project.whiteincidence;
by locationDESC;
run;

proc sort data=project.whitescreening;
by locationDESC;
run;

proc sort data=project.blackmortality;
by locationDESC;
run;

proc sort data=project.blackincidence;
by locationDESC;
run;

proc sort data=project.blackscreening;
by locationDESC;
run;

proc sort data=project.asianmortality;
by locationDESC;
run;

proc sort data=project.asianincidence;
by locationDESC;
run;

proc sort data=project.asianscreening;
by locationDESC;
run;

data merged;
merge project.malemortality project.maleincidence;
by locationDESC;
run;

data merged2;
merge merged project.malescreening;
by locationDESC;
run;

data merge3;
merge merged2 project.femalescreening;
by locationDESC;
run;

data merge4;
merge merge3 project.femaleincidence;
by locationDESC;
run;

data merge5;
merge merge4 project.femalemortality;
by locationDESC;
run;

data merge6;
merge merge5 project.overallscreening;
by locationDESC;
run;

data merge7;
merge merge6 project.overallmortality;
by locationDESC;
run;

data merge8;
merge merge7 project.overallincidence;
by locationDESC;
run;

data merge9;
merge merge8 project.multiscreening project.otherscreening;
by locationDESC;
run;
data merge10;
merge merge9 project.nativescreening project.nativeincidence project.nativemortality project.hispanicscreening project.hispanicincidence
project.hispanicmortality project.whitescreening project.whiteincidence project.whitemortality project.blackscreening project.blackincidence
project.blackmortality project.asianincidence project.asianmortality project.asianscreening;

by locationDESC;
run;

proc print data = merge10 (obs=10);
run;
 
data coloncancer;
set merge10;
run;

proc means data=coloncancer;
var male_mortality female_mortality;
title 'Mortality by Gender';
run;

proc means data=coloncancer;
var male_incidence female_incidence;
title'INcidence by Gender';
run;

proc means data=coloncancer;
var male_screening female_screening;
title 'screening by gender';
run;

/* One-sample t-test for overall screening
screening null hypothesis is from https://www.cdc.gov/cancer/colorectal/statistics/index.htm#:~:text=The%20percentage%20of%20U.S.%20adults,adults%20screened%20for%20colorectal%20cancer.
percentage of adults screened in 2018*/
proc ttest data=coloncancer h0=68.8 sides=2 alpha=0.05;
var overall_screening;
title "One-sample t-test of overall screening, H0: mu=68.8, Ha: mu not equal to 68.8";
run;

/* One-sample t-test  for overall incidence
incidnec enull hypothesiss is from https://gis.cdc.gov/Cancer/USCS/#/AtAGlance/
36.5 is rate of colon cancer 2018 per 100,00 people*/
proc ttest data=coloncancer h0=37 sides=2 alpha=0.05;
var overall_incidence;
title "One-sample t-test overall incidence, H0: mu=37, Ha: mu not equal to 37";
run;

/* One-sample t-test  for overall incidence
incidnec enull hypothesiss is from https://gis.cdc.gov/Cancer/USCS/#/AtAGlance/
13.1 is rate of colon cancerdeath  2018 per 100,00 people*/
proc ttest data=coloncancer h0=13 sides=2 alpha=0.05;
var overall_mortality;
title "One-sample t-test overall mortality, H0: mu=13, Ha: mu not equal to 13";
run;

/*concatenate gender datasets for screening*/



data malemortality ;
set project.malemortality (rename = (Male_Mortality = mortality_rate));
Gender = "Male";
run;

data femalemortality;
set project.femalemortality (rename = (feMale_Mortality = mortality_rate));
Gender = "Female";
run;

DATA gender_mortality;
    SET malemortality femalemortality;
RUN;

/* Independent two sample t-test for gender mortality*/
proc ttest data=gender_mortality sides=2 alpha=0.05;
class Gender;
var mortality_rate;
title "Independent two sample t-test, gender mortality";
run;



data maleincidence;
set project.maleincidence (rename = (male_incidence = incidencerate));
gender = "male";
run;

data femaleincidence;
set project.femaleincidence (rename = (female_incidence = incidencerate));
gender = "female";
run;

data genderincidence;
set maleincidence femaleincidence;
run;


/* Independent two sample t-test for gender incidence*/
proc ttest data=genderincidence sides=2 alpha=0.05;
class gender;
var incidencerate;
title "Independent two sample t-test, gender incidence";
run;

data malescreens;
set project.malescreening (rename = (Male_screening = screens));
gender = "male";
run;

data femalescreens;
set project.femalescreening (rename = (feMale_screening = screens));
gender = "female";
run;

data genderscreen;
set malescreens femalescreens;
run;


/* Independent two sample t-test for gender incidence*/
proc ttest data=genderscreen sides=2 alpha=0.05;
class gender;
var screens;
title "Independent two sample t-test, gender screens";
run;

proc sgplot data=genderscreen;
title  'Gender Screening boxplots';
    vbox screens / category=gender;
	
run;


data nativescreen;
set project.nativescreening (rename = (native_screening = screens));
race = "American Indian or Alaska Native";
run;

data hispanicscreen;
set project.hispanicscreening (rename = (hispanic_screening = screens));
race = "Hispanic";
run;

data whitescreen;
set project.whitescreening (rename = (white_screening = screens));
race = "White, non-Hispanic";
run;

data blackscreen;
set project.blackscreening (rename = (black_screening = screens));
race = "Black, non-Hispanic";
run;


data asianscreen;
set project.asianscreening (rename = (asian_screening = screens));
race = "Asian or Pacific Islander";
run;

data multiscreen;
set project.multicreening (rename = (multi_screening = screens));
race = "Multiracial, non-Hispanic";
run;

data otherscreen;
set project.otherscreening (rename = (other_screening = screens));
race = "Other, non-Hispanic";
run;

data racescreen;
set otherscreen multiscreen asianscreen blackscreen whitescreen hispanicscreen nativescreen;
run;

proc means data=racescreen;
class race;
var screens;
run;

/* One-WAY ANOVA F-test  for race and screening*/
proc glm data=racescreen;
class race;
model screens=race;
lsmeans race /adjust=bon;
title "One-way ANOVA F-test, post-hoc comparison with Bonferroni adjustment for race screens";
run;

data asianincidence;
set project.asianincidence (rename = (asian_incidence = incidence));
race = "Asian or Pacific Islander";
run;


data nativeincidence;
set project.nativeincidence (rename = (native_incidence = incidence));
race = "American Indian or Alaska Native";
run;

data hispanicincidence;
set project.hispanicincidence (rename = (hispanic_Incidence= incidence));
race = "Hispanic";
run;
data whiteincidence;
set project.whiteincidence (rename = (white_incidence = incidence));
race = "White, non-Hispanic";
run;
data blackincidence;
set project.blackincidence (rename = (black_incidence = incidence));
race = "Black, non-Hispanic";
run;


data raceincidence;
set  asianincidence blackincidence whiteincidence hispanicincidence nativeincidence;
run;


proc means data=raceincidence;
class race;
var incidence;
run;

/* One-WAY ANOVA F-test  for race and incidence*/
proc glm data=raceincidence;
class race;
model incidence=race;
lsmeans race /adjust=bon;
title "One-way ANOVA F-test, post-hoc comparison with Bonferroni adjustment for race incidence";
run;
data blackmortality;
set project.blackmortality (rename = (BlacknonHispanic_mortality = mortality));
race = "Black, non-Hispanic";
run;

data nativemortality;
set project.nativemortality (rename = (Native_mortality = mortality));
race = "American Indian or Alaska Native";
run;

data hispanicmortality;
set project.hispanicmortality (rename = (Hispanic_mortality = mortality));
race = "Hispanic";
run;
data whitemortality;
set project.whitemortality (rename = (WhitenonHispanic_mortality = mortality));
race = "White, non-Hispanic";
run;

data asianmortality;
set project.asianmortality (rename = (asianpacificislander_mortality = mortality));
race = "Asian or Pacific Islander";
run;

data racemortality;
set  asianmortality blackmortality whitemortality hispanicmortality nativemortality;
run;

proc means data=racemortality;
class race;
var mortality;
run;

/* One-WAY ANOVA F-test  for race and mortality*/
proc glm data=racemortality;
class race;
model mortality=race;
lsmeans race /adjust=bon;
title "One-way ANOVA F-test, post-hoc comparison with Bonferroni adjustment for race mortality ";
run;


/*We want to know if screenings prevnet mortality when controlling for race*/
proc sort data=racemortality;
by LocationDesc;
run;

proc sort data=racescreen;
by LocationDesc;
run;

data overallmodel;
merge  racemortality racescreen;
by LocationDesc;
run;

proc print data=overallmodel;
run;

proc glm data=overallmodel;
class race;
model mortality=screens race;
title "Do screenings prevent mortality when controlling for race?";
run;


/*We want to know if screenings prevnet mortality when controlling for gender*/
proc sort data=gender_mortality;
by LocationDesc;
run;

proc sort data=genderscreen;
by LocationDesc;
run;

data genderoverallmodel;
merge  gender_mortality genderscreen;
by LocationDesc;
run;

proc print data=genderoverallmodel;
run;

proc glm data=genderoverallmodel;
class gender;
model mortality_rate=screens gender /solution;
title "Do screenings prevent mortality when controlling for Gender?";
run;

/*We want to know if screening prevent mortality?*/
data screening_mortality;
merge project.overallscreening project.overallmortality;
by LocationDesc;
run;

proc print data=screening_mortality;
run;

proc glm data=screening_mortality;
model overall_mortality = overall_screening;
title"Do screenings prevent mortality?";
run;

/*We want to know if screening prevent mortality when controlling for incidence*/
data big3;
merge screening_mortality project.overallincidence;
by LocationDesc;
run;

proc print data=big3;
run;

proc glm data=big3;
model overall_mortality = overall_screening overall_incidence;
title "Do screenings prevent mortality when controlling for Incidence?";
run;
