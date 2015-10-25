-module(count_words).
-export([count/1]).

cw(Sum,"") -> Sum;
cw(Sum, Sentence) -> 
	Idx = string:str(Sentence," "),
	if Idx == 0 -> Sum + 1;
		true -> 
			Substr = string:substr(Sentence, Idx + 1),
                        cw(Sum + 1, Substr)
	end.

count(Sentence) -> cw(0,Sentence).
