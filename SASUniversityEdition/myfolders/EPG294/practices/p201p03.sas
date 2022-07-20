***********************************************************;
*  LESSON 1, PRACTICE 3                                   *;
*  a) Modify the DATA step to create three tables:        *;
*     monument, park, and other. Use the value of         *;
*     ParkType as indicated above to determine which      *;
*     table the row is output to.                         *;
*  b) Drop ParkType from the monument and park tables.    *;
*     Drop Region from all three tables.                  *;
*  c) Submit the program and verify the output.           *;
***********************************************************;

data  monument(drop=parktype) park(drop=parktype) other;
	set pg2.np_yearlytraffic;
	drop region;
	if parktype="National Monument" then
		output monument;
	else if parktype="National Park" then
		output park;
	else
		output other;
run;
