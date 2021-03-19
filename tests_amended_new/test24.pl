%% DESCRIPTION: A locum solicitor cannot accept a position in a business entity that does
%% DESCRIPTION: provide law-related services even if the conditions of the schedule are met.

#include 'basic_facts.pl'.
#include '../newr34lpdat.pl'.

conditions_of_second_schedule_satisfied.
locum_solicitor(jason).
provides(megaCorp,litigation).
legal_service(litigation).

?- not according_to(r34_5,may(jason,accept,ceo_megaCorp)).
