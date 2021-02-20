%% DESCRIPTION: If there is an executive position with an unincorporated human trafficking business,
%% DESCRIPTION: and human trafficking is incompatible with the dignity of the human profession,
%% DESCRIPTION: jason cannot accept that position.

#include 'basic_facts.pl'.
#include '../s34_amended.pl'.


incompatible_dignity_of_legal_profession(smuggling).
business(smuggling).
position(smuggling_boss).
associated_with(smuggling_boss,smuggling).
entitles_holder(smuggling_boss).

?- according_to(s34_1,must_not(jason,accept,smuggling_boss)).