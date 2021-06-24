xn=1;
h=0.25;
x0=0;
y0=0.5;
fd='y+0*x';
no_itr=round((xn-x0)/h);
itration=0;
for i=1:no_itr
    [y0,x0]=Eluer(fd,x0,y0,h)
    itration=itration+1;
end
disp(itration)