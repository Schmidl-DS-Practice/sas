ods graphics on;
ods noproctitle;
title "Categories of reported species";
title2 "in the everglades";
proc freq data=pg1.np_species order=freq ;
	tables category / nocum plots=freqplot;
	where species_id like 'EVER%' and category ne "Vascular Plant";
run;
title;
