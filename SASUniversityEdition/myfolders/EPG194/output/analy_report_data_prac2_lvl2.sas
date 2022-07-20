proc means data=pg1.np_westweather noprint;
	where precip ne 0;
	var precip;
	class name year;
	output out=rainstats(where=(_type_=3)) n=raindays sum=totalrain;
	keep year name;	
run;

title1 'Rain Statistics by Year and Park';
proc print data=rainstats label noobs;
    var Name Year RainDays TotalRain;
    label Name='Park Name'
          RainDays='Number of Days Raining'
          TotalRain='Total Rain Amount (inches)';
run;
title;