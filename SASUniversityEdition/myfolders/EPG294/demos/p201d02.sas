***********************************************************;
*  Controlling Row Output                                 *;
***********************************************************;
*  Syntax and Example                                     *;
*                                                         *;
*    Explicit output                                      *;
*        OUTPUT;
*;
*                                                         *;
*    Conditional output to multiple tables                *;
*        DATA table1 table2...;
*;
*        ...                                              *;
*            IF expression then OUTPUT table1;
*;
*            ELSE expression OUTPUT table2;
*;
*        ...                                              *;
***********************************************************;
/*  */
/* data sales_high sales_low; */
/* 	set sashelp.shoes; */
/*  */
/* 	if Sales>100000 then */
/* 		output sales_high; */
/* 	else */
/* 		output sales_low; */
/* run; */

***********************************************************;
*  Demo                                                   *;
*  1) Modify the DATA statement to create three tables    *;
*     named indian, atlantic, and pacific.                *;
*  2) Modify the IF-THEN/ELSE conditional statements to   *;
*     write output to the appropriate table.              *;
*  3) Add a DROP statement to remove MaxWindMPH.          *;
*     Highlight the DATA step, run the selected code, and *;
*     examine the output tables. Notice that MaxWindMPH   *;
*     has been dropped from all three tables.             *;
***********************************************************;

data indian atlantic pacific;
	set pg2.storm_summary;
	length Ocean $ 8;
	Basin=upcase(Basin);
	StormLength=EndDate-StartDate;
	MaxWindKM=MaxWindMPH*1.60934;

	if substr(Basin, 2, 1)="I" then do;
			Ocean="Indian";
			output indian;
			end;
	else if substr(Basin, 2, 1)="A" then do;
			Ocean="Atlantic";
			output atlantic;
			end;
	else do;
			Ocean="Pacific";
			output pacific;
			end;
	drop maxwindmph;	
run;




