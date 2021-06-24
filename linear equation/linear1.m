clear all
clc
data1= 'Enter the first data'
data2= 'Enter the second data'
x=input(data1);
y=input(data2);
n=length(x);
sx=sum(x);
sx2=sum(x.^2);
sy=sum(y);
sxy=sum(x.*y);
A=[sx n;sx2 sx];
B=[sy;sxy];
c= inv(A)*B;
a=c(1)
b=c(2)
y_avg=(sy/n);
st=sum((y-y_avg).^2)
sr=sum((y-b-a*x).^2)
sy_x=sqrt(sr/n-2)
r2=(st-sr)/st;
r=sqrt(r2)