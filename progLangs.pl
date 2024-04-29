% Java Lexer and Parser
java_lexer("2 + 3 * 4 - 1", Tokens) :-
    atomic_list_concat(["2", "+", "3", "*", "4", "-", "1"], ' ', Tokens).

java_parse([], []) :- !.
java_parse(['('|Rest], AST) :-
    java_parse(Rest, InnerAST),
    AST = [parenthesis(InnerAST)|OuterAST],
    java_parse(Rest, OuterAST).
java_parse([Num, Op|Rest], AST) :-
    number(Num), member(Op, ['+', '-', '*', '/']),
    java_parse(Rest, InnerAST),
    AST = [op(Op, number(Num), InnerAST)|OuterAST],
    java_parse(Rest, OuterAST).
java_parse([Num], [number(Num)]) :-
    number(Num).

% R Lexer and Parser
r_lexer("2 + 3 * 4 - 1", Tokens) :-
    atomic_list_concat(["2", "+", "3", "*", "4", "-", "1"], ' ', Tokens).

r_parse([], []) :- !.
r_parse(['('|Rest], AST) :-
    r_parse(Rest, InnerAST),
    AST = [parenthesis(InnerAST)|OuterAST],
    r_parse(Rest, OuterAST).
r_parse([Num, Op|Rest], AST) :-
    number(Num), member(Op, ['+', '-', '*', '/']),
    r_parse(Rest, InnerAST),
    AST = [op(Op, number(Num), InnerAST)|OuterAST],
    r_parse(Rest, OuterAST).
r_parse([Num], [number(Num)]) :-
    number(Num).

% JavaScript Lexer and Parser
javascript_lexer("2 + 3 * 4 - 1", Tokens) :-
    atomic_list_concat(["2", "+", "3", "*", "4", "-", "1"], ' ', Tokens).

javascript_parse([], []) :- !.
javascript_parse(['('|Rest], AST) :-
    javascript_parse(Rest, InnerAST),
    AST = [parenthesis(InnerAST)|OuterAST],
    javascript_parse(Rest, OuterAST).
javascript_parse([Num, Op|Rest], AST) :-
    number(Num), member(Op, ['+', '-', '*', '/']),
    javascript_parse(Rest, InnerAST),
    AST = [op(Op, number(Num), InnerAST)|OuterAST],
    javascript_parse(Rest, OuterAST).
javascript_parse([Num], [number(Num)]) :-
    number(Num).
