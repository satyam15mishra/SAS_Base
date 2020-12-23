/* Reading a data file  */
proc import out = satyamdata
datafile = '/folders/myshortcuts/SASUniversityEdition/SP4R_Data/sales_2000.csv'
dbms = csv;
datarow = 1;
run;

/* Printing the content of the datset (here particular columns)  */
proc print data = work.satyamdata;
	var store sales;
run;

/* Exploring the dataset */
proc contents data = work.satyamdata varnum;
run;

/* Similar to the head() function in R/Python  */
proc print data = work.satyamdata (firstobs = 1 obs = 5);
run;

/* Like levels() function of R (unique levels of classification)  */
proc sql;
 select unique year from work.satyamdata;
quit;

/* Print statement with WHERE statement  */
proc print data = work.satyamdata;
var store;
where sales < 92000;
run;
