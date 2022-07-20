***********************************************************;
*  Activity 3.07                                          *;
*  1) Notice the subsetting IF statement that writes rows *;
*     to output only if Prefecture is Tokyo. Run the      *;
*     program and notice that the output table does not   *;
*     include any rows.                                   *;
*  2) Either use the DATA step debugger in Enterprise     *;
*     Guide or uncomment the PUTLOG statement to view the *;
*     values of Prefecture as the step executes. Why is   *;
*     the subsetting IF condition always false?           *;
*  3) Modify the program to correct the logic error. Run  *;
*     the program and confirm that four rows are          *;
*     returned.                                           *;
***********************************************************;

data weather_japan_clean;
	set pg2.weather_japan;
	Location=compbl(Location);
	City=propcase(scan(Location, 1, ','), ' ');
	Prefecture=scan(Location, 2, ', ');
	putlog Prefecture $quote20.;
	if Prefecture="Tokyo";
run;

/* When the SCAN function extracts Prefecture from Location, only a comma is specified as a delimiter. */
/* The leading space is included in the returned value.  */
/* Adding a space as a delimiter works if there are no spaces embedded in City or Prefecture. */
/*  */
/* Prefecture=scan(Location, 2,', '); */
/*  */
/* The STRIP function removes leading and training blanks. */
/*  */
/* Prefecture=strip(scan(Location, 2, ',')); */
    
