data camping(keep=parkname month dayvisits camptotal) lodging(keep=parkname month dayvisits lodgingother);
	set pg2.np_2017;
	camptotal=sum(CampingOther, CampingTent, CampingRV, CampingBackcountry);
	format camptotal comma10.;
	if camptotal>0 then 
		output camping;
	if LodgingOther>0 then
		output lodging;
run;
	