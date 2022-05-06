regins(karl,1900,1960).
regins(mike,1951,1970).
regins(dilshaw,1971,1985).
regins(ravi,1986,2010).

ruler(X,Y):- regins(X,A,B),
    Y>=A,
    Y=<B.

%!  Population
population(china,100).
population(poland,86).
population(usa,30).
population(geramny,9).
area(china,10).
area(poland,4).
area(usa,12).
area(germany,2).

density(X,Y):- population(X,Pop),
    area(X,Ar),
    Y is Pop/Ar.
