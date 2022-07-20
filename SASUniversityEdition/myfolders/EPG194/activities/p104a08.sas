***********************************************************;
*  Activity 4.08                                          *;
*    1) Run the program and examine the results. Why is   *;
*       Ocean truncated? What value is assigned when      *;
*       Basin='na'?                                       *;
*    2) Modify the program to add a LENGTH statement to   *;
*       declare the name, type, and length of Ocean       *;
*       before the column is created.                     *;
*    3) Add an assignment statement after the KEEP        *;
*       statement to convert Basin to uppercase. Run the  *;
*       program.                                          *;
*    4) Move the LENGTH statement to the end of the DATA  *;
*       step. Run the program. Does it matter where the   *;
*       LENGTH statement is in the DATA step?             *;
***********************************************************;
*  Syntax                                                 *;
*       LENGTH char-column $ length;                      *;
***********************************************************;

data storm_summary2;
	set pg1.storm_summary;
	Length Ocean $ 10;	*Add a LENGTH statement; *must be before the if-then-else;
	keep Basin Season Name MaxWindMPH Ocean;
	Basin=upcase(Basin);	*Add assignment statement;
	OceanCode=substr(Basin,2,1);
	if OceanCode="I" then Ocean="Indian";
	else if OceanCode="A" then Ocean="Atlantic";
	else Ocean="Pacific";
	*Length Ocean $ 10; *Does it matter where Length statement is?
	Yes, a warning in the log indicates that the length of character variable Ocean has already been set.
	The length of a column is set the first time it occurs in the DATA step. It cannot be changed by a LENGTH statement that
	occurs later in the code.;
run;