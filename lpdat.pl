% An implementation of Logic Programming with Defaults and Argumentation Theories

% These are the three predicates that the user should use in their code.
% they can also be customized to be displayed in a more friendly way, as can the
% other predicates. For example, to improve the display you can encode
% #pred according_to(R,flies(X)) :: 'according to rule @(R), @(X) flies'.
#pred rule(R) :: '@(R) is a rule'.
#pred conclusion(C) :: '@(C) is a conclusion'.
#pred according_to(R,C) :: 'according to rule @(R), the conclusion @(C) holds'.
#pred overrides(R1,C1,R2,C2) :: 'the conclusion @(C1) from rule @(R1) overrides the conclusion @(C2) from rule @(R2)'.
#pred opposes(R1,C1,R2,C2) :: 'the conclusion @(C1) from rule @(R1) conflicts with the conclusion @(C2) from rule @(R2)'.

% Oppositions must be stated explicitly, and must be ground at evaluation time.
opposes(R1,C1,R2,C2) :- opposes(R2,C2,R1,C1).

% A rule is rebutted if it conflicts with another rule, neither is refuted, the rebutting rule is not compromised, and there is no priority between them.
#pred rebutted_by(R1,C1,R2,C2) :: 'the conclusion @(C1) from rule @(R1) is rebutted by the conclusion @(C2) from rule @(R2)'.

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
#pred refuted_by(R1,C1,R2,C2) :: 'the conclusion @(C1) from rule @(R1) is refuted by the conclusion @(C2) from rule @(R2)'.
refuted_by(Rule,Conclusion,Other_Rule,Other_Conclusion) :-
    %rule(Rule),
    %rule(Other_Rule),
    %conclusion(Conclusion),
    %conclusion(Other_Conclusion),
    opposes(Rule,Conclusion,Other_Rule,Other_Conclusion),
    overrides(Other_Rule,Other_Conclusion,Rule,Conclusion),
    according_to(Rule,Conclusion),
    %Rule \= Other_Rule,
    %Conclusion \= Other_Conclusion,
    according_to(Other_Rule,Other_Conclusion).

% A rule is compromised if it is either refuted or defeated.
#pred compromised(Rule,Conclusion) :: 'the conclusion @(Conclusion) from rule @(Rule) is compromised'.

compromised(Rule,Conclusion) :-
    refuted_by(Rule,Conclusion,_,_).

%% Inserting this rule causes OLON problems.
compromised(Rule,Conclusion) :-
    defeated_by(Rule,Conclusion).

% A rule is disqualified if it defeats itself through a cycle of rebuttals or refutations (not disqualifications)
#pred defeated_by_closure(R1,C1,R2,C2) :: 'the conclusion @(C1) from rule @(R1) is defeated by closure by the conclusion @(C2) from rule @(R2)'.
#pred defeated_by_closure(R,C,R,C) :: 'the conclusion @(C1) from rule @(R1) is self-defeating'.

defeated_by_closure(Rule,Conclusion,Other_Rule,Other_Conclusion) :-
    unsafe_rebutted_by(Rule,Conclusion,Other_Rule,Other_Conclusion).
defeated_by_closure(Rule,Conclusion,Other_Rule,Other_Conclusion) :-
    refuted_by(Rule,Conclusion,Other_Rule,Other_Conclusion).
defeated_by_closure(Rule,Conclusion,Other_Rule,Other_Conclusion) :-
    unsafe_rebutted_by(Rule,Conclusion,Third_Rule,Third_Conclusion),
    defeated_by_closure(Third_Rule,Third_Conclusion,Other_Rule,Other_Conclusion).
defeated_by_closure(Rule,Conclusion,Other_Rule,Other_Conclusion) :-
    refuted_by(Rule,Conclusion,Third_Rule,Third_Conclusion),
    defeated_by_closure(Third_Rule,Third_Conclusion,Other_Rule,Other_Conclusion).

% Defeat by closure checks for chains of rebuttals and refutations, regardless of whether
% the defeating or rebutting rule is defeated or compromised.
unsafe_rebutted_by(Rule,Conclusion,Other_Rule,Other_Conclusion) :-
    according_to(Rule,Conclusion),
    according_to(Other_Rule,Other_Conclusion),
    opposes(Rule,Conclusion,Other_Rule,Other_Conclusion),
    not overrides(Rule,Conclusion,Other_Rule,Other_Conclusion),
    not overrides(Other_Rule,Other_Conclusion,Rule,Conclusion).

#pred disqualified(Rule,Conclusion) :: 'the conclusion @(Conclusion) from rule @(Rule) is disqualified'.

disqualified(Rule,Conclusion) :-
    defeated_by_closure(Rule,Conclusion,Rule,Conclusion).

% A rule is defeated if it is refuted or rebutted by a rule that is not compromised, or if it is disqualified.
% (A rebutting rule is already not compromsied, the requirement of non-compromise does not apply to refutation)
#pred defeated(Rule,Conclusion) :: 'the conclusion @(Conclusion) from rule @(Rule) is defeated'.
#pred defeated_by_disqualification(R1,C1,R2,C2) :: 'the conclusion @(C1) from rule @(R1) is defeated by disqualification by the conclusion @(C2) from rule @(R2)'.
#pred defeated_by_rebuttal(R,C,OR,OC) :: 'the conclusion @(C) from rule @(R) is defeated by rebuttal by the conclusion @(OC) from rule @(R)'.
#pred defeated_by_refutation(R,C,OR,OC) :: 'the conclusion @(C) from rule @(R) is defeated by refutation by the conclusion @(OC) from rule @(R)'.

defeated_by_disqualification(Rule,Conclusion,Rule,Conclusion) :- disqualified(Rule,Conclusion).

defeated_by_rebuttal(Rule,Conclusion,Other_Rule,Other_Conclusion) :-
    Rule \= Other_Rule,
    Conclusion \= Other_Conclusion,
    rebutted_by(Rule,Conclusion,Other_Rule,Other_Conclusion).

% The ordering of the clauses in the body seems important for whether or not an OLON situation is created.
defeated_by_refutation(Rule,Conclusion,Other_Rule,Other_Conclusion) :-
    refuted_by(Rule,Conclusion,Other_Rule,Other_Conclusion).

% A conclusion can be defeated three ways.
%defeated(R,C) :-
%    rule(R),
%    rule(OR),
%    R \= OR,
%    conclusion(C),
%    conclusion(OC),
%    C \= OC,
%    opposes(R,C,OR,OC),
%    defeated_by_disqualification(R,C,OR,OC).
%defeated(R,C) :-
%    rule(R),
%    rule(OR),
%    R \= OR,
%    conclusion(C),
%    conclusion(OC),
%    C \= OC,
%    opposes(R,C,OR,OC),
%    defeated_by_rebuttal(R,C,OR,OC).
defeated(R,C) :-
    %rule(R),
    %rule(OR),
    %R \= OR,
    %conclusion(C),
    %conclusion(OC),
    %C \= OC,
    %opposes(R,C,OR,OC),
    defeated_by_refutation(R,C,OR,OC).

% a conclusion holds if it is found and not defeated.
#pred legally_holds(R,C) :: 'the conclusion @(C) from rule @(R) ultimately holds'.
legally_holds(R,C) :-
    %rule(R),
    %conclusion(C),      % inexplicably, changing the order of the clauses in this rules solved an infinite loop?
    not defeated(R,C),
    according_to(R,C). %this is slowing things down, because every time it asks whether or not whether or not
                        % something holds, it needs to know all of the things that potentially hold.
                        % I wonder if this can be sped up by just querying the ground conclusion and not-defeated.


% Abducibility Statements for Testing
%#abducible legally_holds(R,C).
%#abducible defeated(Rule,Conclusion).
%#abducible defeated_by_disqualification(R1,C1,R2,C2).
%#abducible defeated_by_rebuttal(R,C,OR,OC).
%#abducible defeated_by_refutation(R,C,OR,OC).
%#abducible disqualified(Rule,Conclusion).
%#abducible defeated_by_closure(R1,C1,R2,C2).
%#abducible compromised(Rule,Conclusion).
%#abducible refuted_by(R1,C1,R2,C2).
%#abducible rebutted_by(R1,C1,R2,C2).

% You should only need the following for testing purposes
%#abducible rule(X).
%#abducible conclusion(C).
%#abducible according_to(R,C).
#abducible overrides(R1,C1,R2,C2).
#abducible opposes(R1,C1,R2,C2).


% s(CASP) is not good at testing against things that there needs to be more
% than one of for it to work. So I'm going to create a handful of rules and
% conclusions, and hopeuflly that will make some of the tests work better.

#abducible rule(rule1).
#abducible rule(rule2).
#abducible rule(rule3).
#abducible rule(rule4).
#abducible conclusion(conclusion1).
#abducible conclusion(conclusion2).
#abducible conclusion(conclusion3).
#abducible conclusion(conclusion4).
#abducible according_to(rule1,conclusion1).
#abducible according_to(rule2,conclusion2).
#abducible according_to(rule3,conclusion3).
#abducible according_to(rule4,conclusion4).

%?- legally_holds(R,C).
% 4 models with 4 rules

%?- not defeated(Rule,Conclusion).
% 46 Models with 4 rules.

%?- defeated_by_disqualification(R1,C1,R2,C2).
% >100 models with 4 rules.

%?- defeated_by_rebuttal(R,C,OR,OC).
% NO models with 4 rules.

%?- defeated_by_refutation(R,C,OR,OC).
% 24 models with 4 rules. (4!)

%?- disqualified(Rule,Conclusion).
% > 100 models with 4 rules.

%?- defeated_by_closure(R1,C1,R2,C2).
% > 100 models with 4 rules.

%?- compromised(Rule,Conclusion).
% 24 models with 4 rules. (4!)

?- refuted_by(R1,C1,R2,C2).
% 24 models with 4 rules. (4!)

%?- rebutted_by(R1,C1,R2,C2).
% 24 models with 4 rules (4!) (way faster)