/* Specifying the libname creates a permanent datablock and saves it to the path  */

libname mylib 'path';
data mylib.satyam_data;

/* Creating a datablock */
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

/* Creating a datablock which is copy of satyam_data by using 'set'  */
libname mylib 'path';
data satyam_data_copy;
set satyam_data;
run;

proc print data = satyam_data_copy;
run;
