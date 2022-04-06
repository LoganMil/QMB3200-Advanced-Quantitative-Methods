import excel "C:\Users\lmm56\Documents\School\Poly 20 - 21\QMB 3200\Assignments\Assignment 9_Data.xlsx", sheet("Sheet1") firstrow

// summary statistics
summ ID age wgt PTL FTV BWT
tab low
tab race
tab smoke
tab ht
tab HT
tab UT

//create logistical regression model
logit low age wgt i.race i.smoke PTL i.HT i.UT FTV
logit, or

clear
log close