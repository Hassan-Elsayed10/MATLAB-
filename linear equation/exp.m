clear all
clc
data1='enter the first data'
data2='enter second data'
x=input(data1);
y=input(data2);
n=length(x);
Y=log(y);
sx=sum(x);
sY=sum(Y);
sx2=sum(x.^2);
sxY=sum(x.*Y);
cof=[n sx;sx sx2];
B=[sY;sxY];
c=inv(cof)*B;
A=c(1)
a=exp(A)
b=c(2)
Y_avg=(sY/n);
st=sum((Y-Y_avg).^2)
sr=sum((Y-A-b*x).^2)
sy_x=sqrt(sr/n-2)
r2=(st-sr)/st
r=sqrt(r2)
