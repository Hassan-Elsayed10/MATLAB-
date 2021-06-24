function [yn,xn]=Eluer_imp(fd,x0,y0,yp,h)
f=inline(fd);
yn=y0+h/2*(f(x0,y0)+f(x0+h,yp));
xn=x0+h;
end