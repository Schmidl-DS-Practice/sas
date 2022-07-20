data storm_cat5;
	set pg1.storm_summary;
	where maxwindmph >= 156 and startdate>="01JAN2000"d;
	keep season basin name type maxwindmph;
run;

/* Note: To create storm_cat5 as a permanent table in the EPG194/output folder,
you would simply submit a LIBNAME statement to define a library and then reference
the library on the DATA statement as in: */

libname out "/folders/myshortcuts/EPG194/output";
data out.storm_cat5;
	set pg1.storm_summary;
	where maxwindmph >= 156 and startdate>="01JAN2000"d;
	keep season basin name type maxwindmph;
run;