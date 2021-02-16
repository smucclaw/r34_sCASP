
:-(compiler_options([xpp_on,canonical])).

/********** Tabling and Trailer Control Variables ************/

#define EQUALITYnone
#define INHERITANCEflogic
#define TABLINGreactive
#define TABLINGvariant
#define CUSTOMnone

#define FLORA_INCREMENTAL_TABLING 

/************************************************************************
  file: headerinc/flrheader_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).
#mode standard Prolog

#include "flrheader.flh"
#include "flora_porting.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrheader_prog_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).
#mode standard Prolog

#include "flrheader_prog.flh"

/***********************************************************************/

#define FLORA_COMPILATION_ID 4

#mode save
#mode nocomment "%"
#define FLORA_THIS_FILENAME  'tests.flr'
#mode restore
/************************************************************************
  file: headerinc/flrheader2_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
  It has files that must be included in the header and typically
  contain some Prolog statements. Such files cannot appear
  in flrheader.flh because flrheader.flh is included in various restricted
  contexts where Prolog statements are not allowed.

  Included ONLY IN ADDED files (compiled for addition)
************************************************************************/

:-(compiler_options([xpp_on])).

#define TABLING_CONNECTIVE  :-

%% flora_tabling_methods is included here to affect preprocessing of
%% <filename>.flt files, which contain table declarations for Prolog and
%% UDF predicates.
#include "flora_tabling_methods.flh"

%% include list of tabled predicates
#mode save
#mode nocomment "%"
#if defined(FLORA_FLT_FILENAME)
#include FLORA_FLT_FILENAME
#endif
#mode restore

/***********************************************************************/

:-(import(from(/(flora_warning_line,1),flrprint))).
?-(catch(abolish_all_tables,_,flora_warning_line('a tabled subgoal depends on ~w.~n		  The program might not function correctly.~n		  Indicator:         ~w~n		  Offending module:  ~w~n', ['\\add', FLORA_THIS_FILENAME, FLORA_THIS_MODULE_NAME]))).
/************************************************************************
  file: syslibinc/flranswer_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBANSWER))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrdynrule_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLSYSRULEUPDATE))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrload_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBLOAD))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrmetaops_inh.flh

  Author(s): Michael Kifer

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif


?-(:(flrlibman,flora_load_library(FLLIBMETAOPS))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrdynrule_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLSYSRULEUPDATE))).

/***********************************************************************/

#ifndef FLORA_TABLING_METHODS_INCLUDED
#include "flora_tabling_methods.flh"
#endif
 
#if !defined(FLORA_FDB_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FDB_FILENAME  'tests#for_add.fdb'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FDB_FILENAME,FLORA_THIS_MODULE_NAME,'fdb'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_canonical_and_insert(FLORA_FDB_FILENAME,FLORA_THIS_FDB_STORAGE))).
#endif

 
#if !defined(FLORA_FLD_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLD_FILENAME  'tests#for_add.fld'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLD_FILENAME,FLORA_THIS_MODULE_NAME,'fld'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_canonical_and_insert(FLORA_FLD_FILENAME,FLORA_THIS_FLD_STORAGE))).
#endif

 
#if !defined(FLORA_FLS_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLS_FILENAME  'tests.fls'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLS_FILENAME,FLORA_THIS_MODULE_NAME,'fls'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_symbols_canonical_and_insert(FLORA_FLS_FILENAME,FLORA_THIS_FLS_STORAGE,_SymbolErrNum))).
#endif


%%%%%%%%%%%%%%%%%%%%%%%%%%% Rule insertion statements %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('tests.flr'),'_$_$_flora''descr_vars',9,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('tests.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('tests.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('tests.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('tests.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^mvd)('MC_is_Business_Entity',assert,__newvar4,'_$ctxt'(_CallerModuleVar,__newcontextvar8,__newcontextvar9))],true,[],[],true,[fllibuniveqform(__newvar4,FLORA_THIS_WORKSPACE(d^isa)('MegaCorp','Business_Entity_For_Purposes_of_S34','_$ctxt'(__newcontextvar5,__newcontextvar7,__newcontextvar6)))],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('tests.flr'),FLORA_THIS_MODULE_NAME),[true],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('tests.flr'),'_$_$_flora''descr_vars',10,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('tests.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('tests.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('tests.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('tests.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^mvd)('CEO_is_Executive_Appointment',assert,__newvar4,'_$ctxt'(_CallerModuleVar,__newcontextvar8,__newcontextvar9))],true,[],[],true,[fllibuniveqform(__newvar4,FLORA_THIS_WORKSPACE(d^isa)('CEO_of_MegaCorp','Executive_Appointment','_$ctxt'(__newcontextvar5,__newcontextvar7,__newcontextvar6)))],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('tests.flr'),FLORA_THIS_MODULE_NAME),[true],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('tests.flr'),'_$_$_flora''descr_vars',11,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('tests.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('tests.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('tests.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('tests.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^mvd)('Jason_Cannot_Be_CEO',assert,__newvar4,'_$ctxt'(_CallerModuleVar,__newcontextvar8,__newcontextvar9))],true,[],[],true,[fllibuniveqform(__newvar4,FLORA_THIS_WORKSPACE(d^mvd)('Jason',prohibition,'Accepting_CEO_Job','_$ctxt'(__newcontextvar5,__newcontextvar7,__newcontextvar6)))],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('tests.flr'),FLORA_THIS_MODULE_NAME),[true],true)])).


%%%%%%%%%%%%%%%%%%%%%%%%% Signatures for latent queries %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%% Queries found in the source file %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),fllibload([+('~/xf2/tests.flr')],'/Users/jason/s34/tests.flr',FLORA_THIS_MODULE_NAME,[4,4])),[])).
?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^tblflapply)(showtests,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar2))),[])).
?-(fllibprogramans(','('_$_$_flora''silent_equal'(_CallerModuleVar,FLORA_THIS_MODULE_NAME),FLORA_THIS_WORKSPACE(d^tblflapply)(showteststats,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,__newcontextvar2))),[])).

 
#if !defined(FLORA_FLS2_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLS2_FILENAME  'tests.fls2'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLS2_FILENAME,FLORA_THIS_MODULE_NAME,'fls2'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_symbols_canonical_and_insert(FLORA_FLS2_FILENAME,FLORA_THIS_FLS_STORAGE,_SymbolErrNum))).
#endif

