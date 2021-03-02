%% DESCRIPTION: If jason is not a locum, and a business entity provides no legal or law related services
%% DESCRIPTION: jason may accept an executive appointment inside the entity if the requirements of the
%% DESCRIPTION: second schedule are met, if none of the requirements of section 1 are violated.

#include 'basic_facts.pl'.
#include '../r34_amended.pl'.

conditions_of_second_schedule_satisfied.

?- according_to(r34_4,may(jason,accept,ceo_megaCorp)).