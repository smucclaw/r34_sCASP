%% DESCRIPTION: Without more, jason cannot take an executive appointment in another singapore law practice
%% DESCRIPTION: because of section 34(6)(a).

#include 'basic_facts.pl'.


law_practice(other_practice).
jurisdiction(other_practice,singapore).
position(other_practice_job).
entitles_holder(other_practice_job).
in(other_practice_job,other_practice).

?- according_to(r34_6_a,must_not(jason,accept,other_practice_job)).