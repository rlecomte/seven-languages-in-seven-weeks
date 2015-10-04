
mergesort( [], [] ).
mergesort( [H|[]], [H|[]] ).
mergesort( [H,H2|T], Y ) :-
	split([H,H2|T],L,R),
	mergesort(L,A),
	mergesort(R,B),
	merge(A,B,Y).

merge( [], [], [] ).
merge( [], [B|T], [B|T] ).
merge( [A|T],[], [A|T] ).
merge( [H1|T1], [H2|T2], [H1|A] ) :- 
	H1 =< H2,
	merge(T1,[H2|T2], A).
merge( [H1|T1], [H2|T2], [H2|A] ) :-
        H2 < H1,
	merge([H1|T1],T2, A).

	
split( [], [], [] ).
split( [X], [X], [] ).
split( [L,R|T], [L|LT], [R|RT] ) :- split( T, LT, RT ).
