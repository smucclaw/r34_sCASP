%% DESCRIPTION: If a locum solicitor would be prohibited by section 34(1)(b), but is permitted
%% DESCRIPTION: by section 34(5), the prohibition does not hold, and the permission does.

#include 'basic_facts.pl'.
#include '../newr34.pl'.

locum_solicitor(jason).
materially_interferes_with(ceo_megaCorp,availability,jason).
conditions_of_second_schedule_satisfied.


?- according_to(r34_1_b,must_not(jason,accept,ceo_megaCorp)), 
   according_to(r34_5,may(jason,accept,ceo_megaCorp)),
   legally_holds(R,C),
   R = r34_5,
   C = may(jason,accept,ceo_megaCorp).
