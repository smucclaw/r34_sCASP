%% DESCRIPTION: If there is another legal practice owned by jason and one other person, and jason
%% DESCRIPTION: is the sole proprietor of his firm, he is not permitted by subparagraph 2(a) to take an
%% DESCRIPTION: executive position in that other legal practice.

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

?-  not according_to(s34_2_a,may(jason,accept,other_practice_executive)).

% This tests only for whether section 34(2)(a) stops working when there are additional non-shared owners
% it does not check to see whether in that circumstance jason is prohibited.