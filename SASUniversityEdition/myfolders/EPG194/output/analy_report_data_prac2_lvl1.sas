title "weather statistics by year and park";
proc means data=pg1.np_westweather mean min max maxdec=2;
	var precip snow tempmin tempmax;
	class year name;
run;
title;
	