
%% DESCRIPTION: If megaCorp carries on a business incompatible with the dignity of the profession,
%% DESCRIPTION: jason should not be allowed to accept the CEO position at megaCorp.

#include 'basic_facts.pl'.
#include '../newr34.pl'.


% Facts

% megaCorp carries on the business of predatory lending,
% which business is incompatible with the dignity of the legal profession.
carries_on(megaCorp,predatory_lending).
incompatible_dignity_of_legal_profession(predatory_lending).
business(predatory_lending).

?- according_to(r34_1,must_not(jason,accept,ceo_megaCorp)).


% not workin rn without extra code.