% Lists in Prolog
demo(Something) :- write(Something).
demolist([Head|_]) :- write(Head). % first elem of list
% demoListFirstSec([First,Second|_]) :- write(Second). % second elem

list_member(TestedElem, [TestedElem|_]).
list_member(TestedElem, [_|Tail]) :- list_member(TestedElem,Tail).

list_length([],0).
list_length([_|Tail], Length) :- list_length(Tail,TailLength), Length is TailLength +1.
list_append(NewElemnt,List,[NewElemnt| List]).
list_delete(_,[],[]).
list_delete(Elem,[Elem| UncleanTail], CleanTail) :- list_delete(Elem,UncleanTail,CleanTail).
list_delete(Elem,[Head| UncleanTail], [Head | CleanTail]) :- Head \= Elem,list_delete(Elem,UncleanTail,CleanTail).

list_concatenate([],Source2,Source2).
list_concatenate([Head1|Tail1],Source2,[Head1|Subconcanetaion]) :- list_concatenate(Tail1,Source2,Subconcanetaion).

%merge sort(Unsorted,Sorted).
merge_sort([],[]).
merge_sort([SingleElem],[SingleElem]).
merge_sort([First,Second| Tail],Sorted) :-
    split([First,Second| Tail], Unsorted1, Unsorted2),
    merge_sort(Unsorted1,Sorted1),
    merge_sort(Unsorted2,Sorted2),
    merge(Sorted1,Sorted2,Sorted).
split([],[],[]).
split([SingleElem],[SingleElem],[]).
split([First,Second| Tail], [First| FirstTail], [Second|SecondTail]) :-
    split(Tail,FirstTail,SecondTail).

merge(SingleElem,[],SingleElem).
merge([],SingleElem,SingleElem).
merge([Head1|Tail1],[Head2|Tail2], [Head1| Merged]):-
    Head1=< Head2, merge(Tail1,[Head2|Tail2],Merged).
merge([Head1|Tail1],[Head2|Tail2], [Head2| Merged]):-
    Head1 >  Head2, merge([Head1|Tail1],Tail2,Merged).


