# s(CASP) encoding of Rule 34

This is an encoding in s(CASP) of rule 34 of Singapore's Legal Profession (Professional Conduct) Rules 2015.
The source material is available [here](https://sso.agc.gov.sg/SL/LPA1966-S706-2015#pr34-).

# Installation

In order to run this software you need to install the ciao programming langauge, and then install s(CASP).

Instructions are available [here](https://gitlab.software.imdea.org/ciao-lang/sCASP).

# Testing

Once installed, you can run two different sets of tests against the original and amended law.

* r34.pl: Our "faithful" encoding of what the legislation says.
* r34_amended.pl: Our  proposed amendment to the section.

```
./run_tests.sh r34.pl
./run_tests.sh r34_amended.pl
```

|File|Passed|Failed|Total|
|---|---|---|---|
| r34.pl |21|4|25|
|r34_amended.pl|25|0|25|

## Using s(CASP)

To run a test directly, using the following command:

`scasp --human --tree tests/test1.pl`

replacing the filename for the specific test as appropriate.

## Changelog

Since the original version of this repository, the following changes have been made:
* The code has been rewritten to work with the most recent version of s(CASP)
* The code has been rewritten to use a more advanced form of defeasibility
* Various bugs have been corrected.