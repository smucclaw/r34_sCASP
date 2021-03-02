%% DESCRIPTION: Accepting the CEO position should be forbidden if the business of widget sales
%% DESCRIPTION: Is likely to unfairly attract business in law.

#include 'basic_facts.pl'.
#include '../r34_amended.pl'.

unfair(widget_sales).

?- according_to(r34_1,must_not(jason,accept,ceo_megaCorp)).

% Q: Is this the intent of the section, or do they mean business? What should the test be?