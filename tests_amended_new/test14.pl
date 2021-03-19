%% DESCRIPTION: Jason may accept an executive appointment in a business entity that provides law-related services.

#include 'basic_facts.pl'.
#include '../newr34lpdat.pl'.

company(blah_corp).
provides(blah_corp,corporate_registry_search).
service(corporate_registry_search).
in_fourth_schedule(corporate_registry_search).
position(blah_ceo).
entitles_holder(blah_ceo).
in(blah_ceo,blah_corp).
carries_on(blah_corp,search_services).
business(search_services).
law_related_service(corporate_registry_search).

?-  according_to(r34_3,may(jason,accept,blah_ceo)).