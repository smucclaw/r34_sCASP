%% DESCRIPTION: A non-locum solicitor cannot accept a position in a business entity that does
%% DESCRIPTION: not provide legal services even if the conditions of the schedule are met.

#include 'basic_facts.pl'.
#include '../s34_amended.pl'.

conditions_of_second_schedule_satisfied.

?- not according_to(s34_5,may(jason,accept,ceo_megaCorp)).