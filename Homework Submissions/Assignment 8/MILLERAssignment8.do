log using "homework 8", replace

import delimited "C:\Users\lmm56\Documents\School\Poly 20 - 21\QMB 3200\Homework Submissions\Assignment 8\MN DOT.txt", encoding(Big5) 

summarize

rename (v1 v2 v3 v4 v5 v6 v7 v8) (AADT countyPop numLanes widthLanes accessControl roadClass truckRestrictCond locale)

summarize AADT countyPop numLanes widthLanes

tab accessControl
tabulate roadClass
tabulate truckRestrictCond
tabulate locale

gen access1 = cond(accessControl ==2, 0, 1)
gen ruralInterstate = cond(roadClass ==1, 1, 0)
gen ruralNonInterstate = cond(roadClass ==2, 1, 0)
gen urbanInterstate = cond(roadClass ==3, 1, 0)
gen urbanNonInterstate = cond(roadClass ==4, 1, 0)
gen lnAADT = log(AADT)

regress lnAADT countyPop numLanes access1 ruralNonInterstate

rvfplot, yline(0)

rvpplot countyPop, yline(0)

estat imtest, white

log close
clear