%NewtonSolv: Solve a non-linear equation f(x)=0 using Newtons method.
%
% Usage:
%     >> [x,e]=NewtonSolv( x0 , f , df , tol );
%
% where x0 is the starting guess, f and df represent the function
% and its derivative, and tol is a tolerance. The output is a vector
% x containing the newton iterates x(k) and a vector e containing 
% the error estimate e(k) in iteration step k.
%
function [x,e]=NewtonSolv( xk , f , df , tol )


 N=20;  % Maximum number of iterations. 

 x=xk;
 for k=2:N
     Fk=f(xk);
     dFk=df(xk);
     e(k-1)=Fk/dFk;
     xk=xk-e(k-1);
     x(k)=xk;
     if abs(Fk/dFk)<tol,break,end;
 end
 