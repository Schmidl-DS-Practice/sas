***********************************************************;
*  LESSON 2, PRACTICE 1                                   *;
*  a) Open the PG2.NP_YEARLYTRAFFIC table. Notice the     *;
*     Count column records the number of cars that have   *;
*     passed through a particular Location.               *;
*  b) Modify the DATA step to create a column, totTraffic,*;
*     that is the running total of Count.                 *;
*  b) Keep the ParkName, Location, Count, and             *;
*     totTraffic columns in the output table.             *;
*  c) Format totTraffic so values are displayed with      *;
*     commas.                                             *;
***********************************************************;

data totalTraffic;
    set pg2.np_yearlyTraffic;
    keep parkname location count tottraffic;
    totTraffic+Count;
	format tottraffic comma12.;
run;

/* or; */
/*  */
/* data totalTraffic; */
/*     set pg2.np_yearlytraffic; */
/*     retain totTraffic 0; */
/*     totTraffic=totTraffic+Count; */
/*     keep ParkName Location Count totTraffic;  */
/*     format totTraffic comma12.; */
/* run; */
