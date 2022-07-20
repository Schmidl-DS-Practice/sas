data np_summary2;
	set pg1.np_summary;
	ParkType=scan(ParkName, -1);
	keep reg type parkname parktype;
run;

*SCAN(string, count <, character-list <, modifier>>)