proc sort data=pg2.np_acres 
          out=sortedacres(keep=Region ParkName State GrossAcres);
    by Region ParkName;
run;

data singlestate multistate;
	set sortedacres;
	by region parkname;
	if first.parkname=1 and last.parkname=1 then
			output singlestate;
	else output multistate;
	format grossacres comma15.;
run;

	

