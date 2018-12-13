


% CometTracking: Simulation of a situation where one wants to find the
% orbit of a comet from observations of the comets position. This is done
% by fitting an ellipse to positional data. 
%
%
% During the simulation the positional data used and the ellipse are 
% displayed. Also the condition number of the matrix is calculated.
%
function [Test]=CometTracking(NoiseLevel)

if nargin<1
    NoiseLevel=0.5*10^-2;
end


% We observe the position of the comet at certain times. At first we have 
% ten observations; all very close to each other. Here you'll have to 
% change so the comet trajectory for other times are calculated later

 Times =  0:0.5:5.0; 
 PositionData=CometObservation(Times,NoiseLevel); 

% Create a least squares problem, Ax=b, that attempts to use these 
% initial 10 observations to fit the parameters of the ellipse.
 
 x=PositionData(1,:)';
 y=PositionData(2,:)';
 A= [x.^2   x.*y    y.^2    x    y];
 b= -(x.^0);

% Solve the least squares problem using the QR factorization. 

 [Q, R] = qr(A, 0);
 Coefs = R\(Q'*b);

 LSCond=cond(R(:,1:5),2);   % Save condition number.
 display(['Condition number is cond(R)=',num2str(LSCond(end),'%7.3e')]);
 
% Display the computed ellipse and the observed positions used.

 DisplayCometPath( Coefs , PositionData );
 



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                    %
%                        Local Subroutines                           %
%                                                                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% CometPosition: Make observations of the Comet position at
% certain times and with a certain noise level.
%
function [ CometPosition ]=CometObservation( Time , NoiseLevel );

% Create a set of observation of the Comet position at certain times.
% At time t=0 the comet is positioned at "angle theta=0" and it 
% travels with a constant angle-velocity. 
  
  CometAngleVelocity=0.57;
  theta=Time*CometAngleVelocity;
  P=[3,1;-2,4]*[sin(theta);cos(theta)];
  P=P+NoiseLevel*randn(size(P));
  CometPosition=P+[10,0;0,-3]*ones(size(P));

  
% DisplayCometPath: The comet trajectory is an ellipse that is defined 
% by a set of parameters:
%
%  Coefs(1)*x^2+Coefs(2)*x*y+Coefs(3)*y^2+Coefs(4)*x+Coefs(5)*y+1=0;
%
% This subroutine plots the ellipse defined by the vector Coefs. We
% also plot the position data used for the ellipse fitting.
%
function []=DisplayCometPath( Coefs , PositionData );
  
 % Create a string with the function expression and use ezplot. 
   
  str=[num2str(Coefs(1),'%16.12e'),'*x^2+',num2str(Coefs(2),'%16.12e')];
  str=[str,'*x*y+',num2str(Coefs(3),'%16.12e'),'*y^2+'];
  str=[str,num2str(Coefs(4),'%16.12e'),'*x+',num2str(Coefs(5),'%16.12e')];
  str=[str,'*y+1'];
  clf
  hold on, ezplot(str,[0 20 -10 10]);, hold off
  hold on, plot( PositionData(1,:),PositionData(2,:),'kx'), hold off
  axis equal;axis([4 16 -8 4]);
  display('Plotting Observations and best Ellipse fit');

          
