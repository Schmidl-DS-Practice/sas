proc import datafile="/folders/myshortcuts/EPG194/data/np_traffic.csv"
            dbms=csv
            out=traffic
            replace;
            guessingrows=max;
run;

proc contents data=traffic;
run;

