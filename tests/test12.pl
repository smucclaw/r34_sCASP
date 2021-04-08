%% DESCRIPTION: If there is another legal practice owned by jason and one other person, and jason
%% DESCRIPTION: is the sole proprietor of his firm, but he accepts the position as a representative
%% DESCRIPTION: of his firm, but participating in the business is prohibited for his firm,
%% DESCRIPTION: he is not permitted by subparagraph 2(a) to take an
%% DESCRIPTION: executive position in that other legal practice.

#include 'basic_facts.pl'.


law_practice(other_practice).
partnership(other_practice).
carries_on(other_practice,practice_of_law).
jurisdiction(other_practice,singapore).
legal_owner_of(jason,other_practice).
beneficial_owner_of(jerrold,other_practice).
sole_proprietor_of(jason,abc_llp).
position(other_practice_executive).
in(other_practice_executive,other_practice).
entitles_holder(other_practice_executive).

accepts_position_as_representative(jason,other_practice_executive,abc_llp).

participation_prohibited(abc_llp,other_practice).

?- not according_to(r34_2_b,may(jason,accept,other_practice_executive)).