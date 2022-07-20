proc import datafile="/folders/myshortcuts/EPG194/data/np_traffic.dat"
            dbms=dlm
            out=traffic2
            replace;
    guessingrows=3000;
    delimiter="|";
run;