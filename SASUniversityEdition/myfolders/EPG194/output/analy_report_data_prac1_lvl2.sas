ods noproctitle;
ods graphics on;
title "selected park types by region";
proc freq data=pg1.np_codelookup order=freq;
	tables type*region / crosslist nocol plots=freqplot(groupby=row scale=grouppercent orient=horizontal);
	where type in ('National Historic Site', 'National Monument', 'National Park');
run;
title;