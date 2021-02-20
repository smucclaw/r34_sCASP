% An implementation of Logic Programming with Defaults and Argumentation Theories

#pred rebutted_by(R1,C1,R2,C2) :: 'the conclusion @(C1) from rule @(R1) is rebutted by the conclusion @(C2) from rule @(R2)'.
#pred refuted_by(R1,C1,R2,C2) :: 'the conclusion @(C1) from rule @(R1) is refuted by the conclusion @(C2) from rule @(R2)'.
#pred compromised(Rule,Conclusion) :: 'the conclusion @(Conclusion) from rule @(Rule) is compromised'.
#pred disqualified(Rule,Conclusion) :: 'the conclusion @(Conclusion) from rule @(Rule) is disqualified'.
#pred defeated(Rule,Conclusion) :: 'the conclusion @(Conclusion) from rule @(Rule) is defeated'.
#pred defeated_by(R1,C1,R2,C2) :: 'the conclusion @(C1) from rule @(R1) is defeated by the conclusion @(C2) from rule @(R2)'.
#pred defeated_by_closure(R1,C1,R2,C2) :: 'the conclusion @(C1) from rule @(R1) is defeated by closure by the conclusion @(C2) from rule @(R2)'.
#pred defeated_by_closure(R,C,R,C) :: 'the conclusion @(C1) from rule @(R1) is self-defeating'.
#pred overrides(R1,C1,R2,C2) :: 'the conclusion @(C1) from rule @(R1) overrides the conclusion @(C2) from rule @(R2)'.
#pred opposes(R1,C1,R2,C2) :: 'the conclusion @(C1) from rule @(R1) conflicts with the conclusion @(C2) from rule @(R2)'.
#pred holds(R,C) :: 'the conlcusion @(C) from rule @(R) holds'.
#pred holds(C) :: 'the conclusion @(C) holds'.

opposes(R1,C1,R2,C2) :- opposes(R2,C2,R1,C1).
% I need to be explicit that opposite conclusions oppose each other.

%#abducible according_to(X,Y).
%#abducible opposes(A,B,C,D).
%#abducible overrides(A,B,C,D).

% A rule is rebutted if it conflicts with another rule, neither is refuted, the rebutting rule is not compromised, and there is no priority between them.
rebutted_by(Rule,Conclusion,Other_Rule,Other_Conclusion) :-
    according_to(Rule,Conclusion),
    according_to(Other_Rule,Other_Conclusion),
    opposes(Rule,Conclusion,Other_Rule,Other_Conclusion),
    not refuted(Rule,Conclusion),
    not refuted(Other_Rule,Other_Conclusion),
    not compromised(Other_Rule,Other_Conclusion),
    not overrides(Rule,Conclusion,Other_Rule,Other_Conclusion),
    not overrides(Other_Rule,Other_Conclusion,Rule,Conclusion).

% A rule is refuted if there is another rule that conflicts with it and overrides it.
refuted_by(Rule,Conclusion,Other_Rule,Other_Conclusion) :-
    opposes(Rule,Conclusion,Other_Rule,Other_Conclusion),
    overrides(Other_Rule,Other_Conclusion,Rule,Conclusion),
    according_to(Rule,Conclusion),
    according_to(Other_Rule,Other_Conclusion).

% A rule is compromised if it is either refuted or defeated.
compromised(Rule,Conclusion) :-
    refuted_by(Rule,Conclusion,_,_).

%% Inserting this rule causes OLON problems.
compromised(Rule,Conclusion) :-
    defeated_by(Rule,Conclusion).

% A rule is disqualified if it defeats itself.
defeated_by_closure(Rule,Conclusion,Other_Rule,Other_Conclusion) :-
    defeated_by(Rule,Conclusion,Other_Rule,Other_Conclusion).
defeated_by_closure(Rule,Conclusion,Other_Rule,Other_Conclusion) :-
    defeated_by(Rule,Conclusion,Third_Rule,Third_Conclusion),
    defeated_by_closure(Third_Rule,Third_Conclusion,Other_Rule,Other_Conclusion).

disqualified(Rule,Conclusion) :-
    defeated_by_closure(Rule,Conclusion,Rule,Conclusion).

% A rule is defeated if it is refuted or rebutted by a rule that is not compromised, or if it is disqualified.
defeated_by(Rule,Conclusion,Rule,Conclusion) :- disqualified(Rule,Conclusion).

defeated_by(Rule,Conclusion,Other_Rule,Other_Conclusion) :-
    not compromised(Other_Rule,Other_Conclusion),
    rebutted_by(Rule,Conclusion,Other_Rule,Other_Conclusion),
    according_to(Rule,Conclusion),
    according_to(Other_Rule,Other_Conclusion).

% The ordering of the clauses in the body seems important for whether or not an OLON situation is created.
defeated_by(Rule,Conclusion,Other_Rule,Other_Conclusion) :-
    not compromised(Other_Rule,Other_Conclusion),
    refuted_by(Rule,Conclusion,Other_Rule,Other_Conclusion),
    according_to(Rule,Conclusion),
    according_to(Other_Rule,Other_Conclusion).

holds(R,C) :-
    according_to(R,C),
    according_to(OR,OC), % I think this is required to avoid negation over free variables.
    not defeated_by(R,C,OR,OC).

holds(C) :- holds(R,C).

%?- holds(N,M).