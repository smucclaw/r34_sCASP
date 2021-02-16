# s(CASP) encoding of section 34

This is an encoding in s(CASP) of section 34 of Singapore's Legal Profession (Professional Conduct) Rules 2015.
The source material is available [here](https://sso.agc.gov.sg/SL/LPA1966-S706-2015#pr34-).


# Installation

In order to run this software you need to install the ciao programming langauge, and then install s(CASP).

Instructions are available here.

# Testing

Once installed, you can run two different sets of tests against any of the four included encodings.

* s34.pl: Our "faithful" encoding of what the legislation says.
* s34_a1.pl: Our encoding with one proposed amendment.
* s34_a2.pl: Our encoding with a second proposed amendment.
* s34_a1_a2.pl: Our encoding with both proposed amendments.

|File|Passed|Failed|
|---|---|---|
| s34.pl |1|25|
|s34_a1.pl|23|3|
|s34_a2.pl|18|8|
|s34_a1_a2.pl|26|0|

Encodings including the second amendment should be tested against the `tests2` set, those without
can be tested against `tests` as follows:

```
./run_tests.sh -1 s34.pl tests
./run_tests.sh -1 s34_a1.pl tests
./run_tests.sh -1 s34_a2.pl tests2
./run_tests.sh -1 s34_a1_a2.pl tests2
```


Using the `-1` flag causes each test to stop after one stable model is found. If you omit it,
you will be told how many stable models were found for each test. Be aware that this can significantly
increase the runtime.

Using the `-i` flag will pause after each tests is executed, if you would like to see the results one
at a time.

## Using s(CASP)

To run a test directly, using the following command:

`scasp --human --tree s34.pl tests/test0.pl`

replacing the filename for the encoding and the filename for the tests as appropriate.

If you use the `-i` flag in the above command, it will not run the test, but will allow you to run it in
the interactive REPL.  If you use the `-s1` flag, it will generate only one answer. If you use the `-s0`
flag it will generate all answers without waiting between them.