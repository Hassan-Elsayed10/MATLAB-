X=zeros(1,3);
x=input('enter x \n','s');
Fx=inline(x);
y=input('enter y \n','s');
Fy=inline(y);
z=input('enter z \n','s');
Fz=inline(z);
tol=1e-4;
error=1;
count=1;
while error>tol
    Xold=X;
    X=[Fx(X(2),X(3)) Fy(X(1),X(3)) Fz(X(1),X(2))]
    errorx=(X-Xold)./X;
    error=max(abs(errorx));
    count=count+1;
end
