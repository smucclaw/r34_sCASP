%% DESCRIPTION: Accepting the CEO position should be forbidden if widget sales
%% DESCRIPTION: is a prohibited business.

#include 'basic_facts.pl'.
#include '../s34_amended.pl'.

prohibited_business(widget_sales).

?- according_to(s34_1,must_not(jason,accept,ceo_megaCorp)).
