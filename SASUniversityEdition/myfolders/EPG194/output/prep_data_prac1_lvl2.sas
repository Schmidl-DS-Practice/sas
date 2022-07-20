/*libname out "/folders/myshortcuts/EPG194/output";

data out.fox;
	set pg1.np_species;
	where category='Mammal' and upcase(common_names) like '%FOX%';
	drop Category Record_Status Occurrence Nativeness;
run;*/

data fox;
	set pg1.np_species;
	where category='Mammal' and upcase(common_names) like '%FOX%' 
	and upcase(common_names) not like '%SQUIRREL%';
	drop Category Record_Status Occurrence Nativeness;
run;

proc sort data=fox;
	by common_names;
run;
	
	