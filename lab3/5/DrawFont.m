function []=DrawFont()

%
% Create a vector of points to use for defining straight line segments.
%
 Points=[70 23 23 23  23  23  23    0   0  46 46 70;
          4  0 20 35 107 125 195  213 222 225 28 13];
%
% Create a matrix that can be used to store the control points for the 
% Bezi'er curves. In the exercise you will successively add more points
% into this matrix.
%
 Control=[
     0 0;
 ]';
%
% Code that can be used to cerate an "italic style" d.
% 
if 0
 L=[1,0.07;0 1];  
 Points=L*Points; 
 Control=L*Control;
end

%
% Set up a new figure window and draw line segments.
%
 clf,hold on,axis([-70 80 -10 250])
 plot(Points(1,[12,1:3]),Points(2,[12,1:3]),'k')
 plot(Points(1,4:5),Points(2,4:5),'k')
 plot(Points(1,6:7),Points(2,6:7),'k')
 plot(Points(1,8:11),Points(2,8:11),'k')

%
% Here you should set up control points for curve segment A and draw
% the curve using your Bezier spline function. The curve should start at  
% point P1 and end at point P2
%
% Add the new control points into the matrix Control above. And access
% them in the same was we access coordinates from the Points matrix, e.g.  
%
%  C1=Control(:,1)
% 
% where column 1 of the Control matrix holds the coordinates for control
% point C1.
%
 P1=Points(:,7);
 P2=Points(:,8);
 
 C1 = [23 213];
 C2 = [23 213];
 
 DisplayBezierPatch(P1, C1, C2, P2, 100);
 
%
% Here you should set up control points for curve segment B and draw
% the curve. (This part of the exercise is optional)
%
 P1=Points(:,11);
 P2=Points(:,12);

 C1 = [46 13];
 C2 = [46 13];
 
 DisplayBezierPatch(P1, C1, C2, P2, 100);

%
% Here you should set up multiple interpolation points and control points
% corresponding to the outer arc. The curve starts at P1 and ends at P4. 
% We need two additional interpolation points P2 and P3 where the curve 
% touches the line y=0 and the line x=A, where A is picked so that the 
% curve looks ok.
%
 P1=Points(:,3)
 P4=Points(:,6)
 
 % P1 -> P2
 P2 = [-10 0]';
 
 C1 = [15 5];
 C2 = [5 0];

 DisplayBezierPatch(P1, C1, C2, P2, 100);
 
 % P2 -> P3
 P3 = [-40 75]';

 C1 = [-35 0];
 C2 = [-40 20];
 
 DisplayBezierPatch(P2, C1, C2, P3, 100);
 
 % P3 -> P4
 C1 = [-40 120];
 C2 = [-20 150];
 
 DisplayBezierPatch(P3, C1, C2, P4, 100);
 
 
%
% Set up the control points needed to draw the inner arc. Now it is enough 
% to use one additional interpolation point to determine where the curve 
% should tangent the line x=B. It is required that B>A or the inner arc
% will cross the outer one. 
%
 P1=Points(:,4);
 P3=Points(:,5);
 