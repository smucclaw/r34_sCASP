#include 'lpdat.pl'.
#pred legally_holds(may(Y,accept,Z)) :: 'it holds that @(Y) is permitted to accept @(Z)'.
#pred legally_holds(must_not(Y,accept,Z)) :: 'it holds that @(Y) is prohibited from accepting @(Z)'.


% PREDICATE DEFINITIONS
#pred accepts_position_as_representative(A,B,C) :: '@(A) accepts the position @(B) as a representative of @(C)'.
#pred according_to(X,described_in_s1(Y)) :: 'according to @(X), @(Y) is described in section 1'.
#pred according_to(X,may(Y,accept,Z)) :: 'in accordance with @(X), @(Y) is permitted to accept @(Z)'.
#pred according_to(X,must_not(Y,accept,Z)) :: 'in accordance with @(X), @(Y) is prohibited from accepting @(Z)'.
#pred as_compensation_for(A,B) :: '@(A) is provided as compensation in respect of @(B)'.
#pred associated_with(A,B) :: '@(A) is associated with @(B)'.
#pred beneficial_owner_of(X,Y) :: '@(X) is a beneficial owner of @(Y)'.
#pred -business_entity(X) :: 'as per 34(7)(b), @(X) is not a business entity for the purposes of section 34'.
#pred business_entity(X) :: 'as per 34(7)(a) @(X) is a business entity for the purposes of section 34'.
#pred business_trust(X) :: '@(X) is a business trust'.
#pred business(X) :: '@(X) is a business for the purposes of section 34'.
#pred carries_on(X,Y) :: '@(X) carries on @(Y)'.
#pred company(X) :: '@(X) is a company'.
#pred conditions_of_second_schedule_satisfied :: 'the conditions of the second schedule are satisfied'.
#pred corporation(X) :: '@(X) is a corporation'.
#pred defeated(X,Y) :: 'the conclusion from @(X) of @(Y) is defeated'.
#pred derogates_from_dignity_of_legal_profession(X) :: '@(X) derogates from the dignity of the legal profession'.
#pred described_in_first_schedule(X) :: '@(X) is set out in the first schedule'.
#pred described_in_s1(B) :: '@(B) is a business described in 34(1)'.
#pred detracts_from_dignity_of_legal_profession(X) :: '@(X) detracts from the dignity of the legal profession'.
#pred director_of(X,Y) :: '@(X) is a director of @(Y)'.
#pred entitles_holder(X) :: '@(X) entitles the holder to perform executive functions'.
#pred -executive_appointment(X) :: '@(X) is not an executive appointment for the purposes of section 34'.
#pred executive_appointment(X) :: '@(X) is an executive appointment for the purposes of section 34'.
#pred -for_profit(X) :: '@(X) is not for profit'.
#pred for_profit(X) :: '@(X) is for profit'.
#pred foreign_law_practice(X) :: '@(X) is a foreign law practice'.
#pred formal_law_alliance(X) :: '@(X) is a formal law alliance'.
#pred in_fourth_schedule(X) :: '@(X) is listed in the fourth schedule'.
#pred in_third_schedule(X) :: '@(X) is listed in the third schedule'.
#pred in(X,Y) :: '@(X) is in @(Y)'.
#pred incompatible_dignity_of_legal_profession(X) :: '@(X) is incompatible with the dignity of the legal profession'.
#pred independent_director(X) :: '@(X) is an independent directorship'.
#pred institution(X) :: '@(X) is an institution'.
#pred involves_paying_commission(X,Y,Z) :: '@(X) involves paying @(Y) to @(Z)'.
#pred involves_sharing_fees(X,Y,Z) :: '@(X) involves sharing @(Y) with @(Z)'.
#pred joint_law_venture(X) :: '@(X) is a joint law venture'.
#pred jurisdiction(X,Y) :: '@(X) is located in @(Y)'.
#pred law_practice_in_singapore(X) :: '@(X) is a singapore law practice'.
#pred law_practice(X) :: '@(X) is a law practice'.
#pred law_related_service(X) :: '@(X) is a law-related service for the purposes of section 34'.
#pred legal_owner_of(X,Y) :: '@(X) is a legal owner of @(Y)'.
#pred legal_practitioner(X) :: '@(X) is a legal practitioner'.
#pred legal_service(X) :: '@(X) is a legal service'.
#pred legal_work(X) :: '@(X) is legal work'.
#pred llp(X) :: '@(X) is a limited liability partnership'.
#pred locum_solicitor(X) :: '@(X) is a locum solicitor'.
#pred materially_interferes_with(X,Y,Z) :: '@(X) materially interferes with @(Y) with regard to @(Z)'.
#pred may(A,accept,B) :: '@(A) may accept an appoinment to @(B)'.
#pred must_not(A,accept,B) :: '@(A) must not accept @(B)'.
#pred must_not(A,participate,B) :: '@(A) is prohibited from participating in @(B)'.
#pred non_executive_director(X) :: '@(X) is a non-executive directorship'.
#pred owner_and_not_partner_of(Y,Z) :: 'someone who is a legal or beneficial owner of @(Y) is not a sole proprietor, partner, or director of @(Z)'.
#pred owner_of(X,Y) :: '@(X) is the legal or beneficial owner of @(Y)'.
#pred partner_of(X,Y) :: '@(X) is a partner of @(Y)'.
#pred partner_sp_or_director_of(X,Y) :: '@(X) is a partner, sole proprietor, or director of @(Y)'.
#pred partnership(X) :: '@(X) is a partnership'.
#pred performed_by(A,B) :: '@(A) was performed by @(B)'.
#pred position(X) :: '@(X) is a position'.
#pred primary_occupation_of(X,Y) :: '@(Y) is the primary occupation of @(X)'.
#pred prohibited_business(X) :: '@(X) is a business which is prohibited as defined by section 34(1)(f)'.
#pred provides_legal_or_law_related_services(X) :: '@(X) provides legal or law-related services'.
#pred provides(A,B) :: '@(A) provides @(B)'.
#pred service(X) :: '@(X) is a service'.
#pred sole_proprietor_of(X,Y) :: '@(X) is the sole proprietor of @(Y)'.
#pred soleprop(X) :: '@(X) is a sole proprietorship'.
#pred third_schedule_institution(X) :: '@(X) is an institution listed in the third schedule'.
#pred trade(X) :: '@(X) is a trade'.
#pred unauthorized(X) :: '@(X) is unauthorised to peform legal work'.
#pred unfair(X) :: '@(X) is likely to unfairly attract business in the practice of law'.


% ABDUCIBILITY STATEMENTS
%#abducible accepts_position_as_representative(A,B,C).
%#abducible as_compensation_for(A,B).
%#abducible associated_with(A,B).
%#abducible beneficial_owner_of(X,Y).
%#abducible business_trust(X).
%#abducible calling(X).
%#abducible carries_on(X,Y).
%#abducible company(X).
%#abducible conditions_of_second_schedule_satisfied.
%#abducible corporation(X).
%#abducible derogates_from_dignity_of_legal_profession(X).
%#abducible described_in_first_schedule(X).
%#abducible detracts_from_dignity_of_legal_profession(X).
%#abducible director_of(X,Y).
%#abducible entitles_holder(X).
%#abducible for_profit(X).
%#abducible foreign_law_practice(X).
%#abducible formal_law_alliance(X).
%#abducible in_fourth_schedule(X).
%#abducible in_third_schedule(X).
%#abducible in(X,Y).
%#abducible incompatible_dignity_of_legal_profession(X).
%#abducible independent_director(X).
%#abducible institution(X).
%#abducible involves_paying_commission(X,Y,Z).
%#abducible involves_sharing_fees(X,Y,Z).
%#abducible joint_law_venture(X).
%#abducible jurisdiction(X,Y).
%#abducible law_practice_in_singapore(X).
%#abducible law_practice(X).
%#abducible law_related_service(X).
%#abducible legal_owner_of(X,Y).
%#abducible legal_practitioner(X).
%#abducible legal_service(X).
%#abducible legal_work(X).
%#abducible llp(X).
%#abducible locum_solicitor(X).
%#abducible materially_interferes_with(X,Y,Z).
%#abducible member_of(X,Y).
%#abducible non_executive_director(X).
%#abducible owner_and_not_partner_of(Y,Z).
%#abducible owner_of(X,Y).
%#abducible partner_of(X,Y).
%#abducible partner_sp_or_director_of(X,Y).
%#abducible partnership(X).
%#abducible performed_by(A,B).
%#abducible position(X).
%#abducible primary_occupation_of(X,Y).
%#abducible prohibited_business(X).
%#abducible provides(A,B).
%#abducible service(X).
%#abducible sole_proprietor_of(X,Y).
%#abducible soleprop(X).
%#abducible third_schedule_institution(X).
%#abducible trade(X).
%#abducible unauthorized(X).
%#abducible unfair(X).

% Indicate to lpdat that "may" and "must not" are opposites.
opposes(_,may(A,B,C),_,must_not(A,B,C)).

% RULE 34
% 34. Executive appointments

% RULE 34(1)
% 34.—(1)  A legal practitioner must not accept any executive appointment associated with 
% any of the following businesses:

according_to(r34_1,must_not(Actor, accept, Appointment)) :-
    legal_practitioner(Actor),
    executive_appointment(Appointment),
    associated_with(Appointment,Business),
    business(Business),
    %legally_holds(described_in_s1(Business)).
    according_to(_,described_in_s1(Business)). %temporary version before defeasibility.

% (a)	any business which detracts from, is incompatible with, or derogates from the dignity of,
% the legal profession;

%according_to(r34_1_a,described_in_s1(Business)) :- business(Business), detracts_from_dignity_of_legal_profession(Business).
%according_to(r34_1_a,described_in_s1(Business)) :- business(Business), incompatible_dignity_of_legal_profession(Business).
%according_to(r34_1_a,described_in_s1(Business)) :- business(Business), derogates_from_dignity_of_legal_profession(Business).

% (b) Repealed in amendment.

% (c)	any business which is likely to unfairly attract business in the practice of law;

according_to(r34_1_c,described_in_s1(X)) :- unfair(X).

% (d)	any business which involves the sharing of the legal practitioner’s fees with, 
% or the payment of a commission to, any unauthorised person for legal work performed 
% by the legal practitioner;

according_to(r34_1_d,described_in_s1(X)) :- involves_sharing_fees(X,Fees,Recipient), as_compensation_for(Fees,Work), performed_by(Work,Lawyer), legal_work(Work), unauthorized(Recipient).
according_to(r34_1_d,described_in_s1(X)) :- involves_paying_commission(X,Fees,Recipient), as_compensation_for(Fees,Work), performed_by(Work,Lawyer), legal_work(Work), unauthorized(Recipient).


% (e)	any business set out in the First Schedule;

according_to(r34_1_e,described_in_s1(X)) :- described_in_first_schedule(X).

% (f)	any business which is prohibited by —
% (i)	the Act;
% (ii)	these Rules or any other subsidiary legislation made under the Act;
% (iii)	any practice directions, guidance notes and rulings issued under section 71(6) of the Act; or
% (iv)	any practice directions, guidance notes and rulings (relating to professional practice,
%  etiquette, conduct and discipline) issued by the Council or the Society.

according_to(r34_1_f,described_in_s1(X)) :- prohibited_business(X).

% AMENDED RULE 34(1A)
% 1A: A legal practitioner must not accept any executive appointment that:
% materially interferes with —
% (i)	the legal practitioner’s primary occupation of practising as a lawyer;
% (ii)	the legal practitioner’s availability to those who may seek the legal practitioner’s 
% services as a lawyer; or
% (iii)	the representation of the legal practitioner’s clients.

%% NOTE: In the legislative text, the numbering would be different. In the code, the number of
%% the section is left as r34_1_b solely so that we do not need to rewrite the tests in order
%% for them to work.

according_to(r34_1_b,must_not(Actor, accept, Appointment)) :-
    legal_practitioner(Actor),
    executive_appointment(Appointment),
    materially_interferes_with(Appointment,practicing_as_a_lawyer,Actor),
    primary_occupation_of(Actor,practicing_as_a_lawyer).

    % TODO: These were wrong in the origintal Actor/Lawyer.

according_to(r34_1_b,must_not(Actor, accept, Appointment)) :-
    legal_practitioner(Actor),
    executive_appointment(Appointment),
    materially_interferes_with(Appointment,availability,Actor).

according_to(r34_1_b,must_not(Actor, accept, Appointment)) :-
    legal_practitioner(Actor),
    executive_appointment(Appointment),
    materially_interferes_with(Appointment,representation,Actor).

% RULE 34(2)(a)
% (2)  Subject to paragraph (1), a legal practitioner in a Singapore law practice 
% (called in this paragraph the main practice) may accept an executive appointment 
% in another Singapore law practice (called in this paragraph the related practice), 
% if the related practice is connected to the main practice in either of the following ways:
% (a)	every legal or beneficial owner of the related practice is the sole proprietor, 
% or a partner or director, of the main practice;

according_to(r34_2_a,may(LP,accept,EA)) :-
    legal_practitioner(LP),
    in(LP,Main_Practice),
    law_practice_in_singapore(Main_Practice),
    executive_appointment_in_a_law_practice(EA,Other_Practice),
    law_practice_in_singapore(Other_Practice),
    Main_Practice \= Other_Practice,
    not owner_and_not_partner_of(Other_Practice,Main_Practice).

overrides(r34_1_b,must_not(LP,accept,EA),r34_2_a,may(LP,accept,EA)).
overrides(r34_1,must_not(LP,accept,EA),r34_2_a,may(LP,accept,EA)).

owner_of(X,Y) :-
    legal_owner_of(X,Y).
owner_of(X,Y) :-
    beneficial_owner_of(X,Y).

partner_sp_or_director_of(X,Y) :-
    partner_of(X,Y).
partner_sp_or_director_of(X,Y) :-
    sole_proprietor_of(X,Y).
partner_sp_or_director_of(X,Y) :-
    director_of(X,Y).

owner_and_not_partner_of(Y,Z) :-
    owner_of(X,Y),
    not partner_sp_or_director_of(X,Z).


% RULE 34(2)(b)
% (b)	the legal practitioner accepts the executive appointment as a representative 
% of the main practice in the related practice, and the involvement of the main practice 
% in the related practice is not prohibited by any of the following:
% (i)	the Act;
% (ii)	these Rules or any other subsidiary legislation made under the Act;
% (iii)	any practice directions, guidance notes and rulings issued under section 71(6) of the Act;
% (iv)	any practice directions, guidance notes and rulings (relating to professional practice,
% etiquette, conduct and discipline) issued by the Council or the Society.

according_to(r34_2_b,may(LP,accept,EA)) :-
    legal_practitioner(LP),
    member_of(LP,Main_Practice),
    law_practice_in_singapore(Main_Practice),
    executive_appointment_in_a_law_practice(EA,Other_Practice),
    law_practice_in_singapore(Other_Practice),
    Main_Practice \= Other_Practice,
    accepts_position_as_representative(LP,EA,Main_Practice),
    not holds(must_not(Main_Practice,participate,Other_Practice)). % this is a low-fidelity representation of the prohibition.

overrides(r34_1,must_not(LP,accept,EA),r34_2_b,may(LP,accept,EA)).
overrides(r34_1_b,must_not(LP,accept,EA),r34_2_b,may(LP,accept,EA)).

% RULE 34(3)
% (3)  Subject to paragraph (1), a legal practitioner may accept an executive appointment 
% in a business entity which provides law-related services.

according_to(r34_3,may(LP,accept,EA)) :-
    legal_practitioner(LP),
    executive_appointment_in_a_business_entity(EA,BE),
    provides(BE,LRS),
    law_related_service(LRS).

overrides(r34_1,must_not(LP,accept,EA),r34_3,may(LP,accept,EA)).
overrides(r34_1_b,must_not(LP,accept,EA),r34_3,may(LP,accept,EA)).

% RULE 34(4)
% (4)  Subject to paragraph (1), a legal practitioner (not being a locum solicitor) may 
% accept an executive appointment in a business entity which does not provide any 
% legal services or law-related services, if all of the conditions set out in the 
% Second Schedule are satisfied.

according_to(r34_4,may(LP,accept,EA)) :-
    legal_practitioner(LP),
    not locum_solicitor(LP),
    executive_appointment_in_a_business_entity(EA,BE),
    not provides_legal_or_law_related_services(BE),
    conditions_of_second_schedule_satisfied.

overrides(r34_1,must_not(LP,accept,EA),r34_4,may(LP,accept,EA)).
overrides(r34_1_b,must_not(LP,accept,EA),r34_4,may(LP,accept,EA)).

% RULE 34(5)
% (5)  Despite paragraph (1)(b), but subject to paragraph (1)(a) and (c) to (f), 
% a locum solicitor may accept an executive appointment in a business entity which 
% does not provide any legal services or law-related services, if all of the 
% conditions set out in the Second Schedule are satisfied.

according_to(r34_5,may(LP,accept,EA)) :-
    legal_practitioner(LP),
    locum_solicitor(LP),
    executive_appointment_in_a_business_entity(EA,BE),
    not provides_legal_or_law_related_services(BE),
    conditions_of_second_schedule_satisfied.

overrides(r34_1,must_not(LP,accept,EA),r34_5,may(LP,accept,EA)).
overrides(r34_5,may(LP,accept,EA),r34_1,must_not(LP,accept,EA)).

provides_legal_or_law_related_services(BE) :-
    provides(BE,Serv),
    legal_service(Serv).

provides_legal_or_law_related_services(BE) :-
    provides(BE,Serv),
    law_related_service(Serv).

% RULE 34(6)
% (6)  Except as provided in paragraphs (2) to (5) —
% (a)	a legal practitioner in a Singapore law practice must not accept any executive 
% appointment in another Singapore law practice; and

according_to(r34_6_a,must_not(LP,accept,EA)) :-
    legal_practitioner(LP),
    executive_appointment_in_a_law_practice(EA,Other_Practice),
    member_of(LP,Own_Practice),
    law_practice_in_singapore(Own_Practice),
    law_practice_in_singapore(Other_Practice),
    Own_Practice \= Other_Practice.

overrides(r34_2_a,may(LP,accept,EA),r34_6_a,must_not(LP,accept,EA)).
overrides(r34_2_b,may(LP,accept,EA),r34_6_a,must_not(LP,accept,EA)).
overrides(r34_3,may(LP,accept,EA),r34_6_a,must_not(LP,accept,EA)).
overrides(r34_4,may(LP,accept,EA),r34_6_a,must_not(LP,accept,EA)).
overrides(r34_5,may(LP,accept,EA),r34_6_a,must_not(LP,accept,EA)).

% (b)	a legal practitioner must not accept any executive appointment in a business entity.
according_to(r34_6_b,must_not(LP,accept,EA)) :-
    legal_practitioner(LP),
    executive_appointment_in_a_business_entity(EA,BE).
  
overrides(r34_2_a,may(LP,accept,EA),r34_6_b,must_not(LP,accept,EA)).
overrides(r34_2_b,may(LP,accept,EA),r34_6_b,must_not(LP,accept,EA)).
overrides(r34_3,may(LP,accept,EA),r34_6_b,must_not(LP,accept,EA)).
overrides(r34_4,may(LP,accept,EA),r34_6_b,must_not(LP,accept,EA)).
overrides(r34_5,may(LP,accept,EA),r34_6_b,must_not(LP,accept,EA)).

% RULE 34(7)
% (7)  To avoid doubt, nothing in this rule prohibits a legal practitioner 
% from accepting any appointment in any institution set out in the Third Schedule.

according_to(r34_7,may(LP,accept,P)) :-
    legal_practitioner(LP),
    position(P),
    institution(I),
    in(P,I),
    in_third_schedule(I).

% DEFINITIONS
% (9)  In this rule and the First to Fourth Schedules —
% “business” includes any business, trade or calling in Singapore or elsewhere, 
% whether or not for the purpose of profit, but excludes the practice of law;

business(X) :- trade(X), X \= practice_of_law.
business(X) :- calling(X), X \= practice_of_law.
business(X) :- business(X), X \= practice_of_law. % circular much?


% “business entity”  —
% (a)	includes any company, corporation, partnership, limited liability partnership, 
% sole proprietorship, business trust or other entity that carries on any business; but
% (b)	excludes any Singapore law practice, any Joint Law Venture, any Formal Law Alliance, 
% any foreign law practice and any institution set out in the Third Schedule;

business_entity(X) :- carries_on(X,Y), business(Y), company(X), not law_practice_in_singapore(X), not joint_law_venture(X), not formal_law_alliance(X), not foreign_law_practice(X), not third_schedule_institution(X).
business_entity(X) :- carries_on(X,Y), business(Y), corporation(X), not law_practice_in_singapore(X), not joint_law_venture(X), not formal_law_alliance(X), not foreign_law_practice(X), not third_schedule_institution(X).
business_entity(X) :- carries_on(X,Y), business(Y), partnership(X), not law_practice_in_singapore(X), not joint_law_venture(X), not formal_law_alliance(X), not foreign_law_practice(X), not third_schedule_institution(X).
business_entity(X) :- carries_on(X,Y), business(Y), llp(X), not law_practice_in_singapore(X), not joint_law_venture(X), not formal_law_alliance(X), not foreign_law_practice(X), not third_schedule_institution(X).
business_entity(X) :- carries_on(X,Y), business(Y), soleprop(X), not law_practice_in_singapore(X), not joint_law_venture(X), not formal_law_alliance(X), not foreign_law_practice(X), not third_schedule_institution(X).
business_entity(X) :- carries_on(X,Y), business(Y), business_trust(X), not law_practice_in_singapore(X), not joint_law_venture(X), not formal_law_alliance(X), not foreign_law_practice(X), not third_schedule_institution(X).
business_entity(X) :- carries_on(X,Y), business(Y), not law_practice_in_singapore(X), not joint_law_venture(X), not formal_law_alliance(X), not foreign_law_practice(X), not third_schedule_institution(X).


% TODO: THE ABSENCE OF THIS RULE IN THE ORIGINAL IS AN ERROR.
law_practice_in_singapore(X) :-
    law_practice(X),
    jurisdiction(X,singapore).

% “executive appointment” means a position associated with a business, or in a business 
% entity or Singapore law practice, which entitles the holder of the position to perform 
% executive functions in relation to the business, business entity or Singapore law practice 
% (as the case may be), but excludes any non‑executive director or independent director 
% associated with the business or in the business entity;

executive_appointment(X) :- executive_appointment_associated_with_a_business(X,Y).
executive_appointment(X) :- executive_appointment_in_a_business_entity(X,Y).
executive_appointment(X) :- executive_appointment_in_a_law_practice(X,Y).

executive_appointment_associated_with_a_business(X,Y) :- position(X), entitles_holder(X), associated_with(X,Y), business(Y), not non_executive_director(X), not independent_director(X).
executive_appointment_in_a_business_entity(X,Y) :- position(X), entitles_holder(X), in(X,Y), business_entity(Y), not non_executive_director(X), not independent_director(X).
executive_appointment_in_a_law_practice(X,Y) :- position(X), entitles_holder(X), in(X,Y), law_practice(Y), jurisdiction(Y,singapore), not non_executive_director(X), not independent_director(X).


%law_practice(mine).
%law_practice(other).


%% TEST QUERIES
%?- executive_appointment(X).                               
% Working 17 models (1 law practice, + 2 business + 14 business entity)


%?- business_entity(X).                                     
% Working, 14 models (7 types * 2 business)


%?- business(X).                                            
% Working, 2 models, trade/calling


%?- according_to(r34_7,may(A,accept,B)).                    
% Working, 1 model


%?- according_to(r34_6_b,must_not(LP,accept,EA)).           
% Working, 14 models.


%?- according_to(r34_6_a,must_not(LP,accept,EA)).           
% Working, 2 models (should be 1?), IF you define one law_practice(this) 
% and law_practice(X) is NOT abducible.


%?- provides_legal_or_law_related_services(BE).              
% Working


%?- according_to(r34_5,may(LP,accept,EA)).                   
% Working, 28 models (14 EA in BE * 2 why?)

%?- executive_appointment_associated_with_a_business(X).     
% Working, 2 models.


%?- executive_appointment_in_a_business_entity(X).           
% Working, 14 models


%?- executive_appointment_in_a_law_practice(X).              
% Working, 1 model.


%?- according_to(r34_4,may(LP,accept,EA)).                   
% Working, 28 models (14 EA in BE * 2 why?)


%?- according_to(r34_3,may(LP,accept,EA)).                   
% Working, 28 models? (14 * 2?)


%?- according_to(r34_2_b,may(LP,accept,EA)).                  
% Not working, infinite models.IF you define one law_practice(this) 
% and law_practice(X) is NOT abducible.


%?- according_to(r34_2_a,may(LP,accept,EA)).                 
% Working, 12 models? IF you define one law_practice(this) and 
% law_practice(X) is NOT abducible.


%?- according_to(r34_1_b,must_not(Actor, accept, Appointment)). 
% Working, 93 models (expecting 51?)


%?- according_to(r34_1_f,described_in_s1(X)).        
% Working, 1 model.


%?- according_to(r34_1_e,described_in_s1(X)).       
% Working, 1 model.


%?- according_to(r34_1_d,described_in_s1(X)).       
% Working, 2 models.


%?- according_to(r34_1_c,described_in_s1(X)).       
% Working, 1 model.


%?- according_to(r34_1_a,described_in_s1(Business)).    
% Not working, infinite models, expecting 6


%?- according_to(r34_1,must_not(Actor, accept, Appointment)).       
% Not working, infinite models.

