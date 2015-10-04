
smallest([], 0) :- !.

smallest([Head|[]],Y) :- Y is Head.

smallest([Head|Tail], Y) :-
	smallest(Tail,A),
	Y is min(Head,A).

% smallest([1,2,3,4], MIN).
