s=input('enter function \n','s');
f=inline(s);
A=input('enter Xn \n');
B=input('enter Xn-1 \n');
c=A-((B-A)*f(A)/(f(B)-f(A)));
%itration=input('enter n');
tol=input('enter tol');
error=1;
counter=0;
while abs(error) > tol
    cold=c;
    B=A;
    A=c;
    c=A-((B-A)*f(A)/(f(B)-f(A)));
    counter=counter+1;
    error=(c-cold)/c
end
disp('root')
disp(c)
disp('number of itration')
disp(counter)
disp('the error')
disp(error)