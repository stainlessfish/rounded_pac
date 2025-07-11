﻿# Documentation for the `sasround` package.
  
----------------------------------------------------------------
 
 *rounded package of significant digit or decimal digit.* 
  
----------------------------------------------------------------
 
### Version information:
  
- Package: sasround
- Version: 0.1
- Generated: 2025-05-02T16:43:16
- Author(s): Hiroki Yamanobe (stainlessfish@gmail.com)
- Maintainer(s): Hiroki Yamanobe (stainlessfish@gmail.com)
- License: MIT
- File SHA256: `F*AA90213CB2873A198C2777A12C882432A95018F4EDCF3BC08199B6D6672AC285` for this version
- Content SHA256: `C*C79C3C30F8A6E73424C1532602560775201B74C241A30A38244B6D31E0C1BFE2` for this version
  
---
 
# The `sasround` package, version: `0.1`;
  
---
 

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



  
---
 
  
---
 
Required SAS Components: 
  - Base SAS Software
  
---
 
 
--------------------------------------------------------------------
 
*SAS package generated by SAS Package Framework, version `20241207`*
 
--------------------------------------------------------------------
 
# The `sasround` package content
The `sasround` package consists of the following content:
 
1. [`%rounddec()` macro ](#rounddec-macro-1 )
2. [`%roundsig()` macro ](#roundsig-macro-2 )
  
 
3. [License note](#license)
  
---
 
## `%rounddec()` macro <a name="rounddec-macro-1"></a> ######

* MACRO NAME: rounrdDec
*
* PURPOSE:
*   
*   Rounds a numeric variable to the specified number of decimal places and 
*   converts it to a character variable.
*
* PARAMETERS:
*   trgVal     : (Required) The target variable.
*   dec        : (Required) Number of decimal places. 
*
* USAGE:
*   %rounrdDec(trgVal=RES,dec=1);
*
* NOTES:
*   - Only integer values can be assigned to the "dec" parameter. 
*   - For example, if set to "3", "1.234" convert to "1.23".

  
---
 
## `%roundsig()` macro <a name="roundsig-macro-2"></a> ######

* MACRO NAME: roundSig
*
* PURPOSE:
*   This macro performs rounding based on the specified number of 
*   significant digits.
*
* PARAMETERS:
*   trgVal     : (Required) The target Value.
*   SIG        : (Required) Number of significant digits. 
*
* USAGE:
*   %roundSig(trgVal=RES,Sig=3);
*
* NOTES:
*   - Only integer values can be assigned to the "Sig" parameter. 
*   - For example, if set to "3", 
*     "1.234" becomes "1.23", 
*     "12.34" becomes "12.3", 
*     "12.34" becomes "12.3", 
*     "123.4" becomes "123", 
*     "1234"  becomes "1230".
* 
  
---
 
  
---
 
# License <a name="license"></a> ######
 
	Copyright (c) [2025] [Hiroki Yamanobe]

  Permission is hereby granted, free of charge, to any person obtaining a copy  
  of this software and associated documentation files (the "Software"), to deal 
  in the Software without restriction, including without limitation the rights  
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell     
  copies of the Software, and to permit persons to whom the Software is         
  furnished to do so, subject to the following conditions:                      
                                                                                
  The above copyright notice and this permission notice shall be included       
  in all copies or substantial portions of the Software.                        
                                                                                
  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR    
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,      
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE   
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER        
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE 
  SOFTWARE.
  
---
 
