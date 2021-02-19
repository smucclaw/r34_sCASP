%% DESCRIPTION: If you are a legal practitioner, and the executive appointment
%% DESCRIPTION: is to an institution listed in the third schedule, you are always
%% DESCRIPTION: to accept that appointment.

institution(smucclaw).
position(researcher).
entitles_holder(researcher).
in(researcher,smucclaw).
in_third_schedule(smucclaw).

?- according_to(s34_7,may(jason,accept,researcher)).