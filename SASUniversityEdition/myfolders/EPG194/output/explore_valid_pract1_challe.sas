/* get univariates for pg1.eu_occ */
proc univariate data=pg1.eu_occ;
	var camp;
run;

/* use ods trace on */
ods trace on;
proc univariate data=pg1.eu_occ;
	var camp;
run;
ods trace off;

/* select only the extremeobs table */
ods select ExtremeObs;
proc univariate data=pg1.eu_occ;
	var camp;
run;

/* select 10 from extremeobs tables */
ods select ExtremeObs;
proc univariate data=pg1.eu_occ nextrobs=10;
	var camp;
run;