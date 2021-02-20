%% DESCRIPTION: If there is another legal practice owned by jason alone, and jason
%% DESCRIPTION: is the sole proprietor of his firm, he is permitted to take an
%% DESCRIPTION: executive position in that other legal practice.

#include 'basic_facts.pl'.
#include '../s34_amended.pl'.

law_practice(other_practice).
partnership(other_practice).
jurisdiction(other_practice,singapore).
legal_owner_of(jason,other_practice).
sole_proprietor_of(jason,abc_llp).
position(other_practice_executive).
in(other_practice_executive,other_practice).
entitles_holder(other_practice_executive).

?-  according_to(s34_2_a,may(jason,accept,other_practice_executive)).