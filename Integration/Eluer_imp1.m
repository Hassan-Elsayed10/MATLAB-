xn=0.6;
h=0.2;
x0=0;
y0=1;
fd='y+0*x';
no_itr=round((xn-x0)/h);
itration=0;
for i=1:no_itr
    itration=itration+1;
    yp=Eluer(fd,x0,y0,h)
    [y0,x0]=Eluer_imp(fd,x0,y0,yp,h)
end