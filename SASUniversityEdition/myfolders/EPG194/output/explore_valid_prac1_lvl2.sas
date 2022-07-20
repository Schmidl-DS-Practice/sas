/* unique values and freqencies */
proc freq data=pg1.np_summary;
	tables reg type;
run;

/* calculate extra summary statistics */
proc univariate data=pg1.np_summary;
	var acres;
run;

proc print  data=pg1.np_summary;
	var parkname acres;
run;