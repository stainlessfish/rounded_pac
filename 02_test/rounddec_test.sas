

data original;
  LONG=1.23456789; output;
  LONG=12.3456789; output;
  LONG=123.456789; output;
  LONG=1234.56789; output;
  LONG=12345.6789; output;
  LONG=123456.789; output;
  LONG=1234567.89; output;
  LONG=12345678.9; output;
  LONG=123456789; output;

  LONG=-1.23456789; output;
  LONG=-12.3456789; output;
  LONG=-123.456789; output;
  LONG=-1234.56789; output;
  LONG=-12345.6789; output;
  LONG=-123456.789; output;
  LONG=-1234567.89; output;
  LONG=-12345678.9; output;
  LONG=-123456789; output;

  LONG=.;        output;
run;



data rounded;
  set original;
  if ^missing(LONG) then do;
    CHAR0=%roundDec(trgVal=LONG,decPlace=0);
    CHAR1=%roundDec(trgVal=LONG,decPlace=1);
    CHAR3=%roundDec(trgVal=LONG,decPlace=3);
    CHAR5=%roundDec(trgVal=LONG,decPlace=5);
  end;
  put _all_;
run;