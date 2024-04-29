% Facts
woman(noor).
man(ahmad).
healthy(ahmad).
healthy(noor).
wealthy(ahmad).

% Rules
traveler(X) :-
    healthy(X),
    wealthy(X),
    (man(X); woman(X)).

% Queries
% Who can travel?
?- traveler(X).

% Who is healthy?
?- healthy(X).

% Is noor healthy or wealthy?
?- healthy(noor); wealthy(noor).

% Ask if ahmad is a traveler?
?- traveler(ahmad).
