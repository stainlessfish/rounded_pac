/*** HELP START ***//*

* MACRO NAME: rounrdDec
*
* PURPOSE:
*   
*   Rounds a numeric variable to the specified number of decimal places and 
*   converts it to a character variable.
*
* PARAMETERS:
*   trgVal     : (Required) The target variable.
*   decPlace   : (Required) Number of decimal places. 
*
* USAGE:
*   %rounrdDec(trgVal=RES,decPlace=1);
*
* NOTES:
*   - Only integer values can be assigned to the "decPlace" parameter. 
*   - For example, if set to "3", "1.234" becomes "1.23".

*//*** HELP END ***/

%macro rounrdDec(trgVal=,decPlace=);
  putn(round(&trgVal.,input(cats("1e-",&decPlace.),best.)),catt("16.",&decPlace.," -L"))
%mend  rounrdDec;


