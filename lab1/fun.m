function[y]=fun(x)
y=sqrt(1+x).*exp(x/2)-2*sin(2*x).*(x+x.^2);
fprintf('%18.15f %6.2e\n',x,y);
end