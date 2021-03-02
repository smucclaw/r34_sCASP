%% DESCRIPTION: If being the ceo of megaCorp interferes with his availability,
%% DESCRIPTION: jason should be prohibited from accepting the position.

#include 'basic_facts.pl'.
#include '../r34_amended.pl'.

materially_interferes_with(ceo_megaCorp,availability,jason).

% This does not work, because paragraph 1(b) deals with businesses, not executive
% appointments, which seems odd. The following will work, but seems nonsensical.
%
% materially_interferes_with(widget_sales,availability,jason).

?- according_to(r34_1_b,must_not(jason,accept,ceo_megaCorp)).
