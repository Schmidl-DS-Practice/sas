***********************************************************;
*  Using Numeric Functions                                *;
***********************************************************;
*  Syntax                                                 *;
*                                                         *;
*    RAND ('distribution', parameter1, ...parameterk)     *;
*    LARGEST (k, value-1 <, value-2 ...>)                 *;
*    ROUND (number <,rounding-unit>)                      *;
***********************************************************;
 
***********************************************************;
*  Demo                                                   *;
*  1) Copy and paste the Quiz1st assignment statement     *;
*     twice and modify the statements to create columns   *;
*     named Quiz2nd and Quiz3rd.                          *;
*  2) Create a new column named Top3Avg that uses the     *;
*     MEAN function with the top three quiz scores as the *;
*     arguments.                                          *;
*  3) Add Name in the DROP statement.                     *;
*  4) Before the SET statement, create a new column named *;
*     StudentID. Use the RAND function with 'INTEGER' as  *;
*     the first argument. This generates random integers  *;
*     between the values specified in the second and      *;
*     third arguments. To create a four-digit number, use *;
*     1000 as the lower limit and 9999 as the upper       *;
*     limit. Highlight the DATA step and run the selected *;
*     code.                                               *;
*  5) Modify the Top3Avg assignment statement to use the  *;
*     ROUND function to round the values returned by the  *;
*     MEAN function to the nearest integer. Highlight the *;
*     DATA step and run the selected code.                *;
*  6) Add a second argument in the ROUND function to      *;
*     round values to the nearest .1. Highlight the DATA  *;
*     step and run the selected code.                     *;
***********************************************************;

data quiz_analysis;
	studentid=rand("integer", 1000, 9999);
	set pg2.class_quiz;
	drop Quiz1-Quiz5 name;
    Quiz1st=largest(1, of Quiz1-Quiz5);
    Quiz2nd=largest(2, of Quiz1-Quiz5);
  	Quiz3rd=largest(3, of Quiz1-Quiz5);
  	top3avg=round(mean(Quiz1st, Quiz2nd, Quiz3rd), .1);

run;

