# s(CASP) encoding of section 34

This is an encoding in s(CASP) of section 34 of Singapore's Legal Profession (Professional Conduct) Rules 2015.
The source material is available [here](https://sso.agc.gov.sg/SL/LPA1966-S706-2015#pr34-).


# Installation

In order to run this software you need to install the ciao programming langauge, and then install s(CASP).

Instructions are available [here](https://gitlab.software.imdea.org/ciao-lang/sCASP).

# Testing

Once installed, you can run two different sets of tests against the original and amended law.

* s34.pl: Our "faithful" encoding of what the legislation says.
* s34_amended.pl: Our  proposed amendment to the section.

|File|Passed|Failed|
|---|---|---|
| s34.pl |23|26|
|s34_amended.pl|26|26|

Because the amendment changed some of the section numberings, it was necessary to rewrite some of the tests
to reflect the new numberings. The amended version of the code should be run against the tests in the amended
tests folder, as follows:

```
./run_tests.sh -1 s34.pl tests
./run_tests.sh -1 s34_amended.pl tests_amended
```

Using the `-1` flag causes each test to stop after one stable model is found. If you omit it,
you will be told how many stable models were found for each test. Be aware that this can significantly
increase the runtime.

Using the `-i` flag will pause after each tests is executed, if you would like to see the results one
at a time.

## Using s(CASP)

To run a test directly, using the following command:

`scasp --human --tree s34.pl tests/basic_facts.pl tests/test0.pl`

replacing the filename for the encoding and the filename for the specific test as appropriate. If you run the query above, the output
will begin as follows:

```
QUERY:I would like to know if
     in accordance with s34_1, jason is prohibited from accepting smuggling_boss.

        ANSWER: 1 (in 4368.711 ms)

JUSTIFICATION_TREE:
in accordance with s34_1, jason is prohibited from accepting smuggling_boss, because
    jason is a legal practitioner, and
    smuggling_boss is an executive appointment, because
        smuggling_boss is a position, and
        smuggling_boss entitles the holder to perform executive functions, and
        smuggling_boss is associated with smuggling, and
        smuggling is a business for the purposes of section 34, and
        there is no evidence that smuggling_boss is a non-executive or independent director in smuggling, because
            there is no evidence that smuggling_boss is a non-executive directorship, and
            there is no evidence that smuggling_boss is an independent directorship, and
            there is no evidence that smuggling_boss is a non-executive directorship, justified above, and
            there is no evidence that smuggling_boss is an independent directorship, justified above.
    smuggling_boss is associated with smuggling, and
    smuggling is a business for the purposes of section 34, justified above, and
    described_in_s1(smuggling) holds, because
        in accordance with s34_1_a, described_in_s1(smuggling), because
            smuggling is a business for the purposes of section 34, justified above, and
            smuggling is incompatible with the dignity of the legal profession.
        there is no evidence that the conclusion from s34_1_a of described_in_s1(smuggling) is defeated.
        ...
```