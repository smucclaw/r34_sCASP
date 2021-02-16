%% DESCRIPTION: If a locum solicitor would be prohibited by section 34(1)(b), and another
%% DESCRIPTION: part of section 34(1), and would otherwise be permitted
%% DESCRIPTION: by section 34(5), the prohibition hold, and the permission does not.

locum_solicitor(jason).
materially_interferes_with(ceo_megaCorp,availability,jason).
conditions_of_second_schedule_satisfied.
incompatible_dignity_of_legal_profession(widget_sales).

?- holds(must_not(jason,accept,ceo_megaCorp)),
   according_to(s34_1,must_not(jason,accept,ceo_megaCorp)),
   according_to(s34_5,may(jason,accept,ceo_megaCorp)).
