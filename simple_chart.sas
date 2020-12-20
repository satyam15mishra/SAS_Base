/* Create a copy of existing datablock and inserting a field to it  */
data temp_data;
set satyam_data_copy;
half_marks = (marks/2.0);
run;

proc print data = temp_data;
title Copied Temporary Dataset;
run;

/* Creating a simple bar chart */
proc sgplot data = temp_data;
title First Graph;
vbar name / response=marks;
run;
