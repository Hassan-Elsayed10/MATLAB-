clear all
clc 
s=input('enter the function \n','s');
f=inline(s);
a=input('enter a \n');
b=input('enter b \n');
%f_a=f(a);
%f_b=f(b);
m=a-((a-b)*f(a)/(f(a)-f(b)));
%itr=input(' enter n \n')
tol=input('enter tol \n');
error=1;
count=0;
while abs(error)>tol
    mold=m;
if f(a)*f(m)>0
    a=m;
    m=a-((a-b)*f(a)/(f(a)-f(b)));
elseif f(a)*f(m)<0
    b=m;
    m=a-((a-b)*f(a)/(f(a)-f(b)));
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
disp('the error')
disp(error)