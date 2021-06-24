s=input('Enter function','s');
fn= inline(vectorize(s));
xi=input('Enter Xi');
h=input('Enter h');
%1st order 
d1forward=(fn(xi+h)-fn(xi))/h
d1backwoard=(fn(xi)-fn(xi-h))/h
d1central=(fn(xi+h)-fn(xi-h))/(2*h)
%2nd order
d2central=(fn(xi+h)-2*fn(xi)+fn(xi-h))/(h^2)
%exact
fs= sym(s);
fd1=diff(fs);
fd2=diff(fd1);
fd1_exact=douple(subs(fd1,xi));
fd2_exact=douple(subs(fd2,xi));
R.P.E= abs((fd1_exact-d1forward)/fd1_exact)*100


