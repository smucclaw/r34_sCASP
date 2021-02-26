must_not(Actor, accept, Appointment) :-
    legal_practitioner(Actor),
    executive_appointment(Appointment),
    associated_with(Appointment,Business),
    business(Business),
    described_in_s1(Business).

must_not(Actor, accept, Appointment) :-
    legal_practitioner(Actor),
    executive_appointment(Appointment),
    associated_with(Appointment,Business),
    business(Business),
    materially_interferes_with(Business,practicing_as_a_lawyer,Actor),
    primary_occupation_of(Actor,practicing_as_a_lawyer).




executive_appointment(X) :- position(X), entitles_holder(X), in(X,Y), business_entity(Y).

business_entity(X) :- carries_on(X,Y), business(Y), corporation(X).

#abducible entitles_holder(X).
#abducible in(X,Y).
#abducible carries_on(X,Y).
#abducible associated_with(X,Y).
#abducible materially_interferes_with(X,Y,Z).
#abducible primary_occupation_of(X,Y).
#abducible legal_practitioner(X).
#abducible corporation(X).
#abducible position(X).
#abducible business(X).

?- must_not(X,accept,Y).