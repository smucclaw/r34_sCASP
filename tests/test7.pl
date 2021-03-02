%% DESCRIPTION: Accepting the CEO position should be forbidden if widget sales
%% DESCRIPTION: Is listed in the first schedule.

#include 'basic_facts.pl'.
#include '../r34.pl'.

described_in_first_schedule(widget_sales).

?- according_to(r34_1,must_not(jason,accept,ceo_megaCorp)).
