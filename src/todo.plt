:- include(todo(include/common)).

:- use_module(todo, []).

:- begin_tests('todo').

test('test1', [true(Got == Expected)]) :-
    format('~ntodo:test1 - library version~n'),
    Expected = [0, 0, 1],
    todo:version(Got).

test('test2A', true(Got == Expected)) :-
    format('~ntodo:test2A - string_uppercase/2: name transformed to upper case~n'),
    Expected = "STARTER",
    todo:string_uppercase("starter", Got).

test('test2B', [
         throws(todo_error(instantiation, context(todo:string_uppercase/2, "UpperCase argument must be a free variable")))]) :-
    format('~ntodo:test2B - string_uppercase/2: throws on a bounded argument~n'),
    Var = "bounded already",
    todo:string_uppercase("todo", Var).

:- end_tests('todo').
