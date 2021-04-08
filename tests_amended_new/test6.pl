%% DESCRIPTION: Accepting the CEO position should be forbidden if widget sales
%% DESCRIPTION: is a prohibited business.

#include 'basic_facts.pl'.
#include '../newr34_amended.pl'.

prohibited_business(widget_sales).

?- according_to(r34_1,must_not(jason,accept,ceo_megaCorp)).
