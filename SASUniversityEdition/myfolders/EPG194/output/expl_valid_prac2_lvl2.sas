%let ParkCode=ZION;
%let SpeciesCat=Bird;

proc freq data=pg1.np_species;
	tables abundance conservation_status;
	where species_id like "&ParkCode%" and category="&SpeciesCat";
run;
	
proc print data=pg1.np_species;
	var  Species_ID Category Scientific_Name Common_Names;
	where species_id like "&ParkCode%" and category="&SpeciesCat";
run;


		