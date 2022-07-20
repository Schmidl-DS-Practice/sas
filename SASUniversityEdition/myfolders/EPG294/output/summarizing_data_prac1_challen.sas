data cuyahoga_maxtraffic;
	set pg2.np_monthlytraffic;
	where parkname='Cuyahoga Valley NP';
	retain trafficmax 0 monthmax locationmax;
	if count>trafficmax then do;
		trafficmax=count;
		monthmax=Month;
        locationmax=Location;
    end;
	format count trafficmax comma15.;
	keep location month count trafficmax monthmax locationmax;
run;
	