# s(CASP) encoding of Rule 34

This is an encoding in s(CASP) of rule 34 of Singapore's Legal Profession (Professional Conduct) Rules 2015.
The source material is available [here](https://sso.agc.gov.sg/SL/LPA1966-S706-2015#pr34-).

# Installation

In order to run this software you need to install the ciao programming langauge, and then install s(CASP).

Instructions are available [here](https://gitlab.software.imdea.org/ciao-lang/sCASP).

# The Experiment

We encoded rule 34 as faithfully as we could, then generated a set of 25 tests for that encoding.

We discovered a number of tests that were not behaving as anticipated, and tracked
the problem down rule 34(1)(b), which uses the word "business" in a way inconsistent
with how that term is defined in the rules. The relevant section reads:

```
RULE 34(1)
34.—(1) A legal practitioner must not accept any executive appointment associated with 
        any of the following businesses:
        ...
        (b)	any business which materially interferes with —
            (i)	    the legal practitioner’s primary occupation of practising as a lawyer;
            (ii)	the legal practitioner’s availability to those who may seek the legal practitioner’s 
                    services as a lawyer; or
            (iii)	the representation of the legal practitioner’s clients;
```

The word "business" is defined later in the rule to mean a category of undertaking,
which is a thing that cannot meaningfully "materially interfere" with a specific legal practitioner in
any way. We can encode the idea that "widget sales" interferes with someone's availability, but that
doesn't mean anything.

We therefore proposed and encoded
an amendment to the rule.  The proposed amendment is that rule 34(1)(b) be removed from rule 34(1) and renumbered
rule 34(1A), and read as follows:

```
1A: A legal practitioner must not accept any executive appointment that:
    materially interferes with —
        (i)	    the legal practitioner’s primary occupation of practising as a lawyer;
        (ii)	the legal practitioner’s availability to those who may seek the legal practitioner’s 
                services as a lawyer; or
        (iii)	the representation of the legal practitioner’s clients.
```

# Testing

Using this repository, you can run the tests against the original and amended law.

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

## Individual Tests with Explanations

To run a test directly, using the following command:

`scasp --human --tree tests/test1.pl r34.pl`

replacing the filename for the specific test and the version of the rule as appropriate.

The above query will return the following:

```
QUERY:I would like to know if
     in accordance with r34_1, jason is prohibited from accepting ceo_megaCorp.

        ANSWER: 1 (in 12.639 ms)

JUSTIFICATION_TREE:
in accordance with r34_1, jason is prohibited from accepting ceo_megaCorp, because
    jason is a legal practitioner, and
    ceo_megaCorp is associated with predatory_lending, because
        it is assumed that ceo_megaCorp is associated with predatory_lending, and
        'abducible' holds (for associated_with(ceo_megaCorp,predatory_lending)), because
            'abducible' holds (for associated_with(ceo_megaCorp,predatory_lending)).
    predatory_lending is a business for the purposes of section 34, and
    according to r34_1_a, predatory_lending is described in section 1, because
        predatory_lending is incompatible with the dignity of the legal profession, and
        predatory_lending is a business for the purposes of section 34, justified above.
    ceo_megaCorp is an executive appointment for the purposes of section 34, because
        ceo_megaCorp is an executive appointment associated with the business predatory_lending, because
            ceo_megaCorp is a position, and
            ceo_megaCorp entitles the holder to perform executive functions, and
            ceo_megaCorp is associated with predatory_lending, because
                it is assumed that ceo_megaCorp is associated with predatory_lending, and
                'abducible' holds (for associated_with(ceo_megaCorp,predatory_lending)), because
                    'abducible' holds (for associated_with(ceo_megaCorp,predatory_lending)).
            predatory_lending is a business for the purposes of section 34, and
            there is no evidence that ceo_megaCorp is a non-executive directorship, and
            there is no evidence that ceo_megaCorp is an independent directorship.
The global constraints hold.

MODEL:
{ according_to(r34_1,must_not(jason,accept,ceo_megaCorp)),  legal_practitioner(jason),  associated_with(ceo_megaCorp,predatory_lending),  business(predatory_lending),  according_to(r34_1_a,described_in_s1(predatory_lending)),  incompatible_dignity_of_legal_profession(predatory_lending),  executive_appointment(ceo_megaCorp),  executive_appointment_associated_with_a_business(ceo_megaCorp,predatory_lending),  position(ceo_megaCorp),  entitles_holder(ceo_megaCorp) }

BINDINGS: ? 
```

## Changelog

Since the original version of this repository, the following changes have been made:
* The code has been rewritten to work with the most recent version of s(CASP)
* The code has been rewritten to use a more advanced form of defeasibility
* Various bugs have been corrected.