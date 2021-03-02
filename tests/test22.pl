%% DESCRIPTION: A locum solicitor can accept a position in a business entity that does
%% DESCRIPTION: not provide legal services if the conditions of the schedule are met.

#include 'basic_facts.pl'.
#include '../r34.pl'.

locum_solicitor(jason).
conditions_of_second_schedule_satisfied.

?- according_to(r34_5,may(jason,accept,ceo_megaCorp)).
