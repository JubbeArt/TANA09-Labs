%SplineError: Script used to determine the maximum error when using 
% spline interpolation and a fixed stepsize.

%  Fix a stepsize h and create a vector of equidistant points on the  
% interval 0<x<1. Change to the step size you want to use.

  h=1/4;
  x=0:h:1;  
  
% Create the function f(x) as an inline function.
  
  f=inline('4*x.^4/3-4*x.^3/3+x.^2/2');

% We should interpolate using derivative end point conditions. Change 
% so the correct numeric values are used for f'(0) and f'(1)  
  spfun=csape(x,f(x),'complete',[0 7/3]); 

% Create a "dense" vector xx and plot both the error.
  
  xx=0:0.001:1; 
  felet=abs(fnval(spfun,xx)-f(xx));
  clf,plot(x,0*x,'r*',xx,felet,'b-');
  xlabel('x');ylabel('|f(x)-s_h(x)|','FontSize',12);
  disp(['Maximum error: max|s_h(x)-f(x)|=',num2str(max(felet))]);
