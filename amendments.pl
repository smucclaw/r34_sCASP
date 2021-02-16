% Proposed Amendment #1:
% ----------------------
% "For the purposes of this section, a busienss entity is a business."
% business(X) :- business_entity(X).

% Proposed Amendment #2:
%------------------------
% "An executive appointment in a business entity or law practice is presumptively associated with
% the businesses carried on by that business entity or law practice."

%associated_with(X,Y) :-
%    executive_appointment(X),
%    business(Y),
%    in(X,B),
%    business_entity(B),
%    carries_on(B,Y),
%    not -associated_with(X,Y).

%associated_with(X,Y) :-
%    executive_appointment(X),
%    business(Y),
%    law_practice(B),
%    carries_on(B,Y),
%    in(X,B),
%    not -associated_with(X,Y).

% Proposed Amendment #3:
% ----------------------
% 34.—(1)  A legal practitioner must not accept any executive appointment
%               a) associated with any of the following businesses, or
%               b) in a business entity or law practice that carries on any of the following businesses:

according_to(s34_1,must_not(Actor, accept, Appointment)) :-
    legal_practitioner(Actor),
    executive_appointment(Appointment),
    in(Appointment,BusinessEntity),
    business_entity(BusinessEntity),
    carries_on(BusinessEntity,Business),
    holds(described_in_s1(Business)).

according_to(s34_1,must_not(Actor, accept, Appointment)) :-
    legal_practitioner(Actor),
    executive_appointment(Appointment),
    in(Appointment,LawPractice),
    law_practice(LawPractice),
    carries_on(LawPractice,Business),
    holds(described_in_s1(Business)).

%% Note that implementing this definition required re-writing the defeasibility statements for sections defeated
%% by section 1 by virtual of a sub-element of section 1.
% The code below is to facilitate that rewrite.

#pred associated_with_or_in_entity_or_practice_carrying_on(X,B) :: '@(X) is associated with @(B), or is in a business entity or law practice carrying on @(B)'.

associated_with_or_in_entity_or_practice_carrying_on(EA,B) :-
    associated_with(EA,B).
associated_with_or_in_entity_or_practice_carrying_on(EA,B) :-
    in(EA,BE),
    business_entity(BE),
    carries_on(BE,B).
associated_with_or_in_entity_or_practice_carrying_on(EA,B) :-
    in(EA,LP),
    law_practice(LP),
    carries_on(LP,B).


%% Rewriting paragraph 1(b).
%% Because the rest of paragraph 1 deals correctly with businesses, and paragraph 1b seems to
%% deal instead with positions, rewriting section 1(b) to deal with positions would require
%% recoding the whole paragraph. Instead, we propose removing the existing definition, and
%% adding the following separate rule:
%% 1A (to place it between 1 and 2): A legal practitioner must not accept any executive appointment that:
%% materially interferes with —
% (i)	the legal practitioner’s primary occupation of practising as a lawyer;
% (ii)	the legal practitioner’s availability to those who may seek the legal practitioner’s 
% services as a lawyer; or
% (iii)	the representation of the legal practitioner’s clients.

according_to(s34_1A,must_not(Actor, accept, Appointment)) :-
    legal_practitioner(Actor),
    executive_appointment(Appointment),
    materially_interferes_with(Appointment,practicing_as_a_lawyer,Lawyer),
    primary_occupation_of(Lawyer,practicing_as_a_lawyer).

according_to(s34_1A,must_not(Actor, accept, Appointment)) :-
    legal_practitioner(Actor),
    executive_appointment(Appointment),
    materially_interferes_with(Appointment,availability,Lawyer),
    materially_interferes_with(Business, availability, Lawyer).

according_to(s34_1A,must_not(Actor, accept, Appointment)) :-
    legal_practitioner(Actor),
    executive_appointment(Appointment),
    materially_interferes_with(Appointment,representation,Lawyer),
    materially_interferes_with(Business,representation,Lawyer).

% the existing encoding of s34(1)(b) is moved to without_amendments.pl to keep it available.

% This also simplifies the defeasibility statement from 5. The original is moved to
% without_amendments.pl. Section 5's defeasibility statement would be re-written as
% "despite section 1A and subject to section 1"

defeated(s34_5,may(LP,accept,EA)) :-
    according_to(s34_1,must_not(LP,accept,EA)),
    not defeated(s34_1,must_not(LP,accept,EA)).

defeated(s34_1A,must_not(LP,accept,EA)) :-
    according_to(s34_5,may(LP,accept,EA)),
    not defeated(s34_5,may(LP,accept,EA)).

% It also requires rewriting the defeasibility statements of paragraphs 2, 3, and 4
% to read "subject to section 1 and section 1A"

% Rewriting section 1 also requires adding section 1A to all of the defeasibility
% statements that currently refer only to section 1.

defeated(s34_2_a,may(LP,accept,EA)) :-
    according_to(s34_1A,must_not(LP,accept,EA)),
    not defeated(s34_1A,must_not(LP,accept,EA)).

defeated(s34_2_b,may(LP,accept,EA)) :-
    according_to(s34_1A,must_not(LP,accept,EA)),
    not defeated(s34_1A,must_not(LP,accept,EA)).

defeated(s34_3,may(LP,accept,EA)) :-
    according_to(s34_1A,must_not(LP,accept,EA)),
    not defeated(s34_1A,must_not(LP,accept,EA)).

defeated(s34_4,may(LP,accept,EA)) :-
    according_to(s34_1A,must_not(LP,accept,EA)),
    not defeated(s34_1A,must_not(LP,accept,EA)).