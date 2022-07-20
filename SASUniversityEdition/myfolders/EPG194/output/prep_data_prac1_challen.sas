%let species=Amphibian;

data &species;
	set pg1.np_species;
	where category="&species";
	drop  Abundance Seasonality Conservation_Status;
run;

proc freq data=&species;
	tables record_status;
run;
	