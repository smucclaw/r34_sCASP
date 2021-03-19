%% DESCRIPTION: Accepting the job of CEO of megaCorp should be prohibited
%% DESCRIPTION: if megacorp's business involves giving commissions to unauthorized
%% DESCRIPTION: people for jason's legal work.

#include 'basic_facts.pl'.
#include '../newr34lpdat.pl'.

unauthorized(meng).
involves_paying_commission(widget_sales, meng_commission, meng).
as_compensation_for(meng_commission,jason_work).
legal_work(jason_work).
performed_by(jason_work,jason).

?-  according_to(r34_1,must_not(jason,accept,ceo_megaCorp)).
