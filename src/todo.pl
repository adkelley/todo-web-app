/** <module> Prolog todo main module

This is an example structure for modular software development in Prolog.

@author Fixme
@copyright Fixme
@license Fixme
@see <http://github.com/adkelley/prolog-starter
*/

:- module(_, [ string_uppercase/2
             , version/1
             ]).

:- include(todo(include/common)).

:- use_module(util, []).

%!  version(?Version) is det.
%
%   True if version is a list representing the major, minor
%   and patch version numbers of this library.

version([0,0,1]).

%! string_uppercase(+String, -UpperCase) is semidet
%
% Transform a String string to UpperCase
%

string_uppercase(String, UpperCase) :-
    core:var(UpperCase),
    !,
    core:string_upper(String, UpperCase).

string_uppercase(_String, _Uppercase) :-
    util:throw_error(instantiation, todo:string_uppercase/2, "UpperCase argument must be a free variable").

