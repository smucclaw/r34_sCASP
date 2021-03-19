%% DESCRIPTION: If jason is not a locum, and a business entity provides no legal or law related services
%% DESCRIPTION: jason must not accept an executive appointment inside the entity if the requirements of the
%% DESCRIPTION: second schedule are met, and one of the requirements of subsection 1 is violated.

#include 'basic_facts.pl'.
#include '../newr34lpdat.pl'.

carries_on(megaCorp,predatory_lending).
incompatible_dignity_of_legal_profession(predatory_lending).
business(predatory_lending).
conditions_of_second_schedule_satisfied.

?- according_to(r34_1,must_not(jason,accept,ceo_megaCorp)),
   according_to(r34_4,may(jason,accept,ceo_megaCorp)),
   legally_holds(must_not(jason,accept,ceo_megaCorp)).
