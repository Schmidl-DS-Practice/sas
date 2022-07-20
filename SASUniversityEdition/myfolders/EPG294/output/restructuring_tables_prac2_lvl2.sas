proc transpose data=pg2.np_2016camping out=camping2016_t(drop=_name_);
	by ParkName;
	id CampType;
	var CampCount;
run;