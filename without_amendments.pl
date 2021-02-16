%% This file contains code that was originally in s34.pl,
%% but needed to be removed in order to give effect to the code in amendments.pl
%% It is kept here so that we can run the code with the amendments by
%% scasp s34.pl amendments.pl
%% and can run the code prior to amendments by
%% scasp s34.pl without_amendments.pl

% (b)	any business which materially interferes with —
% (i)	the legal practitioner’s primary occupation of practising as a lawyer;
% (ii)	the legal practitioner’s availability to those who may seek the legal practitioner’s 
% services as a lawyer; or
% (iii)	the representation of the legal practitioner’s clients;

#pred materially_interferes_with(X,Y,Z) :: '@(X) materially interferes with @(Y) with regard to @(Z)'.
#pred primary_occupation_of(X,Y) :: '@(Y) is the primary occupation of @(X)'.

according_to(s34_1_b,described_in_s1(Business)) :-
    business(Business),
    materially_interferes_with(Business,practicing_as_a_lawyer,Lawyer),
    primary_occupation_of(Lawyer,practicing_as_a_lawyer).

according_to(s34_1_b,described_in_s1(Business)) :-
    business(Business),
    materially_interferes_with(Business, availability, Lawyer).

according_to(s34_1_b,described_in_s1(Business)) :-
    business(Business), 
    materially_interferes_with(Business,representation,Lawyer).


%% Removing section 34 (1)(b) also requires rewriting the defeasibility
%% statement for paragraph 5, which makes it defeated by 34_1 by virtue of
%% anything other than 34(1)(b), but defeats s34_1 if justified by s34(1)(b) alone.

defeated(s34_5,may(LP,accept,EA)) :-
    associated_with(EA,B),
    according_to(s34_1,must_not(LP,accept,EA)),
    according_to(s34_1_a,described_in_s1(B)),
    not defeated(s34_1,must_not(LP,accept,EA)).
defeated(s34_5,may(LP,accept,EA)) :-
    associated_with(EA,B),
    according_to(s34_1,must_not(LP,accept,EA)),
    according_to(s34_1_c,described_in_s1(B)),
    not defeated(s34_1,must_not(LP,accept,EA)).
defeated(s34_5,may(LP,accept,EA)) :-
    associated_with(EA,B),
    according_to(s34_1,must_not(LP,accept,EA)),
    according_to(s34_1_d,described_in_s1(B)),
    not defeated(s34_1,must_not(LP,accept,EA)).
defeated(s34_5,may(LP,accept,EA)) :-
    associated_with(EA,B),
    according_to(s34_1,must_not(LP,accept,EA)),
    according_to(s34_1_e,described_in_s1(B)),
    not defeated(s34_1,must_not(LP,accept,EA)).
defeated(s34_5,may(LP,accept,EA)) :-
    associated_with(EA,B),
    according_to(s34_1,must_not(LP,accept,EA)),
    according_to(s34_1_f,described_in_s1(B)),
    not defeated(s34_1,must_not(LP,accept,EA)).
defeated(s34_1,must_not(LP,accept,EA)) :-
    associated_with(EA,B),
    according_to(s34_5,may(LP,accept,EA)),
    according_to(s34_1_b,described_in_s1(B)),
    not according_to(s34_1_a,described_in_s1(B)),
    not according_to(s34_1_c,described_in_s1(B)),
    not according_to(s34_1_d,described_in_s1(B)),
    not according_to(s34_1_e,described_in_s1(B)),
    not according_to(s34_1_f,described_in_s1(B)),
    not defeated(s34_5,may(LP,accept,EA)).