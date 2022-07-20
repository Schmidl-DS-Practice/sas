data parks monuments;
	set pg1.np_summary;
	where type in ('NP', 'NM');
	Campers=sum(BackcountryCampers, OtherCamping, RVCampers, TentCampers);
	format Campers comma17.;
	length ParkType $ 10;
	if type='NP' then do;
		ParkType='Park';
		output parks;
	end;
	else do;
		ParkType='Monument';
		output monuments;
	end;
	keep Reg ParkName DayVisits OtherLodging Campers ParkType;
run;

