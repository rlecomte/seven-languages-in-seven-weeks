
% Reverse element of a list

reverse([],[]) :- !.

reverse([Head|[]],Y) :-
	Y is [Head].

reverse([Head|Tail],Y) :-
	reverse(Tail,R),
	Y is [R|Head].

% reverse([1,2,3,4], What).

