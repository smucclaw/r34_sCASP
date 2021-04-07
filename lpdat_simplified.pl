% A simplified defeasibility logic.
% This is a simplified version of LPDAT that uses only refutation, and does not
% consider compromised rules.

% These are the three predicates that the user should use in their code.
% they can also be customized to be displayed in a more friendly way, as can the
% other predicates. For example, to improve the display you can encode
% #pred according_to(R,flies(X)) :: 'according to rule @(R), @(X) flies'.

#pred according_to(R,C) :: 'according to rule @(R), the conclusion @(C) holds'.
#pred overrides(R1,C1,R2,C2) :: 'the conclusion @(C1) from rule @(R1) overrides the conclusion @(C2) from rule @(R2)'.
#pred opposes(R1,C1,R2,C2) :: 'the conclusion @(C1) from rule @(R1) conflicts with the conclusion @(C2) from rule @(R2)'.

% Oppositions must be stated explicitly, and must be ground at evaluation time.
% If opposition is stated in one direction, it the opposite direction is implied.
opposes(R1,C1,R2,C2) :- opposes(R2,C2,R1,C1).

% A rule is refuted by another if they both hold, and the other rule conflicts with it and overrides it.
#pred refuted_by(R1,C1,R2,C2) :: 'the conclusion @(C1) from rule @(R1) is refuted by the conclusion @(C2) from rule @(R2)'.
refuted_by(Rule,Conclusion,Other_Rule,Other_Conclusion) :-
    opposes(Rule,Conclusion,Other_Rule,Other_Conclusion),
    overrides(Other_Rule,Other_Conclusion,Rule,Conclusion),
    according_to(Rule,Conclusion),
    according_to(Other_Rule,Other_Conclusion).

% A rule is defeated if it is refuted.
#pred defeated(Rule,Conclusion) :: 'the conclusion @(Conclusion) from rule @(Rule) is defeated'.
#pred defeated_by_refutation(R,C,OR,OC) :: 'the conclusion @(C) from rule @(R) is defeated by refutation by the conclusion @(OC) from rule @(R)'.

defeated(R,C) :-
    refuted_by(R,C,OR,OC).

% a conclusion holds if it is found and not defeated.
#pred legally_holds(R,C) :: 'the conclusion @(C) from rule @(R) ultimately holds'.
legally_holds(R,C) :-
    not defeated(R,C),
    according_to(R,C).

% Abducibility Statements for Testing
%#abducible according_to(R,C).
%#abducible overrides(R1,C1,R2,C2).
%#abducible opposes(R1,C1,R2,C2).


% s(CASP) is not good at testing against things that there needs to be more
% than one of for it to work. So I'm going to create a handful of rules and
% conclusions, and hopeuflly that will make some of the tests work better.

%#abducible according_to(rule1,conclusion1).
%#abducible according_to(rule2,conclusion2).
%#abducible according_to(rule3,conclusion3).
%#abducible according_to(rule4,conclusion4).

%?- legally_holds(R,C).
% 4 models with 4 rules

%?- defeated(Rule,Conclusion).
% 16 Models with 4 rules.

%?- refuted_by(R1,C1,R2,C2).
% 16 models with 4 rules.