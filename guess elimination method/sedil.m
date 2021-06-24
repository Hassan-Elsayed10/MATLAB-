X=zeros(1,3);
sx=input('enter x = ','s');
sy=input('enter y = ','s');
sz=input('enter z = ','s');
fx=inline(sx);
fy=inline(sy);
fz=inline(sz);
err=1;
tol = 1e-4;
while err>tol
    Xold = X;
    X(1)=fx(X(2),X(3));
    X(2)=fy(X(1),X(3));
    X(3)=fz(X(1),X(2));
    errX=(X-Xold)./X;
    err=max(abs(err));
end
 X