***********************************************************;
*  Activity 4.09                                          *;
*    Run the program. Why does the program fail?          *;
***********************************************************;

data girls boys;
	set sashelp.class;

	if sex="F" then
		do;
			Gender="Female";
			output girls;
			end; *fails without this;
			else
				do;
					Gender="Male";
					output boys;
					end; *fails without this;
				run;