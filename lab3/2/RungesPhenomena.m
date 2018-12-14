%RungesPhenomena: Use polynomial interpolation to 
% approximate the function f(x)=1/(1+25*x^2). This  
% illustrates that using high degree polynomials is 
% a bad idea.
%
function []=RungesPhenomena( N );


%
% Pick a vector of interpolation points and compute function values.   
%
 x=-1+2*(0:N)/N;y=1./(1+25*x.^2);
 
%
% Compute and plot the interpolating polynomial. Also plot the function.
% 
  pp=polyfit(x,y,N);
  xx=-1:0.01:1;yy=1./(1+25*xx.^2);
  plot(xx,polyval(pp,xx),'k-',x,y,'rx',xx,yy,'b-','LineWidth',1.7);
 
 
