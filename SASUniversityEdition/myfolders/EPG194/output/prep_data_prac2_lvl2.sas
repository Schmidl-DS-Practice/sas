data eu_occ_total;
	set pg1.eu_occ;
	Year=substr(YearMon, 1, 4);
	Month=substr(YearMon, 6, 2);
	ReportDate=mdy(Month, 1, Year);
	Total=sum(hotel, shortstay, camp);
	format hotel shortstay camp total comma17. reportdate monyy7.;
	keep country hotel shortstay camp reportdate total;
run;
	