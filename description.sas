/* This is the description file for the package. */
/* The colon (:) is a field separator and is restricted */
/* in lines of the header part. */
/* **HEADER** */
Type: Package 
Package: sasround 
Title: rounded package of significant digit or decimal digit. 
Version: 0.1 
Author: Hiroki Yamanobe (stainlessfish@gmail.com) 
Maintainer: Hiroki Yamanobe (stainlessfish@gmail.com) 
License: MIT 
Encoding: UTF8 
Required: "Base SAS Software" 
ReqPackages:  
/* **DESCRIPTION** */

/* All the text below will be used in help */
DESCRIPTION START:

This package contains 2macros:
The first is [roundDec], and the second is [roundSig].

Usage of [roundDec] is as follows
data _null_;
    DUMMY = 123.45;
    VAR1 = %roundDec(trgVal=DUMMY, dec=1);
    VAR2 = %roundDec(trgVal=170, dec=1);
run;

Usage of [roundSig] is as follows
data _null_;
    DUMMY = 1234.56;
    VAR1 = %roundSig(trgVal=DUMMY, sig=3);
    VAR2 = %roundSig(trgVal=0.012345, sig=3);
run;



DESCRIPTION END:
