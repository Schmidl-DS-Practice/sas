*complete the options statement for correct col lables;
options validvarname=v7;

*create library for excel data;
libname NP xlsx "/folders/myshortcuts/EPG194/data/np_info.xlsx";

*reference library.datatable to look at contents;
proc contents data=NP.Parks;
run;

*clear NP library;
libname NP clear;
