%% DESCRIPTION: If jason is a locum, and a business entity provides no legal or law related services
%% DESCRIPTION: jason may not accept an executive appointment inside the entity even if the requirements of the
%% DESCRIPTION: second schedule are met, and none of the requirements of section 1 are violated.

#include 'basic_facts.pl'.
#include '../r34_amended.pl'.

locum_solicitor(jason).
conditions_of_second_schedule_satisfied.

?- not according_to(r34_4,may(jason,accept,ceo_megaCorp)).