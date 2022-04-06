cd "C:\Users\lmm56\Documents\School\Poly 20 - 21\QMB 3200\Final Project"

import excel "C:\Users\lmm56\Documents\School\Poly 20 - 21\QMB 3200\Final Project\Data_Option2.xlsx", sheet("Sheet1") cellrange(A1:I1632) firstrow

summ hhsize nchlt12 nchgt12 nworker nstudent ncar income
tab resloc

help anova
anova ntrips hhsize nchlt12 nchgt12 nworker nstudent ncar income resloc

help gen
gen resloc1 - cond(resloc == 1, 1, 0)
gen resloc1 = cond(resloc == 1, 1, 0)
gen resloc2 = cond(resloc == 2, 1, 0)
gen resloc3 = cond(resloc == 3, 1, 0)

regress ntrips hhsize nchlt12 nchgt12 nworker nstudent ncar  resloc1  resloc2 resloc3
regress ntrips hhsize nchlt12 nchgt12 nworker nstudent ncar  resloc1  resloc2 resloc3
regress ntrips hhsize nchlt12 nchgt12
regress ntrips nworker  nstudent ncar

log close
clear