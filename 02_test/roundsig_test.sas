
data original;
  DRUG_CONC=12345.6789; output;
  DRUG_CONC=123.456789; output;
  DRUG_CONC=12.3456;    output;
  DRUG_CONC=1.2345;     output;
  DRUG_CONC=1.2;        output;

  DRUG_CONC=-12345.6789; output;
  DRUG_CONC=-123.456789; output;
  DRUG_CONC=-12.3456;    output;
  DRUG_CONC=-1.2345;     output;
  DRUG_CONC=-1.2;        output;

  DRUG_CONC=.;        output;
run;



data rounded;
  set original;
  if ^missing(DRUG_CONC) then ROUNDED=%roundSig(trgVal=DRUG_CONC, Sig=3);
  put DRUG_CONC= ROUNDED=;
run;


