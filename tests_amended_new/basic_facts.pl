% jason is a legal practitioner in abc_llp, a singapore law firm.
legal_practitioner(jason).
law_practice(abc_llp).
jurisdiction(abc_llp,singapore).
in(jason,abc_llp).

% megaCorp is a corporation with a position ceo, which entitles the holder to make executive decisions
corporation(megaCorp).
position(ceo_megaCorp).
entitles_holder(ceo_megaCorp).
in(ceo_megaCorp,megaCorp).

% megaCorp carries on the business of widget sales.
carries_on(megaCorp,widget_sales).
business(widget_sales).

% Whether one thing is associated with another thing can be abduced by the reasoner.
#abducible associated_with(X,Y).