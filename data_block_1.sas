data satyam_data;
input student_id name$ marks result$;
datalines;
101 Satyam 95 Pass
102 Prachi 96 Pass
103 Modak 99 Pass
104 James 32 Fail
105 Adams 56 Pass
106 Cynthia 21 Fail
107 Lee 79 Pass
;
run;

proc print data = satyam_data;
title Student Data; 
run;