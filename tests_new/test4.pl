%% DESCRIPTION: If the business of widget sales interferes with his primary occupation,
%% DESCRIPTION: and his primary occupation is something other than practicing the law, accepting the
%% DESCRIPTION: CEO position should not be prohibited.

#include 'basic_facts.pl'.
#include '../newr34.pl'.

materially_interferes_with(ceo_megaCorp,practicing_as_a_lawyer,jason).

% This does not work, but can be made to work with the nonsensical fact
% materially_interferes_with(widget_sales,practicing_as_a_lawyer,jason).

% Jason's primary occupation is not practicing_as_a_lawyer.
primary_occupation_of(jason,playing_baseball).


?- not according_to(r34_1_b,must_not(jason,accept,ceo_megaCorp)).