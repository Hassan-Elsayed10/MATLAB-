function [yn,xn]=Eluer(fd,x0,y0,h)
f=inline(fd);
yn=y0+h*(f(x0,y0));
xn=x0+h;
end