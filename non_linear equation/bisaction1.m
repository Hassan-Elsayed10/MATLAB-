clear all
clc
s=input('enter function \n','s')
f=inline(s)
a=input('enter a \n')
b=input('enter b \n')
f_a=f(a);
f_b=f(b);
m=(a+b)/2;
%itration=input('enter n \n');
count=1;
tol=input('enter tolerance \n');
error=1
while abs(error)>tol
    mold=m;
if f(a)*f(m)>0
    a=m;
    m=(a+b)/2;
elseif f(a)*f(m)<0
    b=m;
    m=(a+b)/2;
else 
    break;
end
count=count+1;
error=(m-mold)/m;
end
disp('the root')
disp(m)
disp('number of itration')
disp(count)
disp('error is')
disp(error)