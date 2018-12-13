%AddPointsToMap: Add a fixed number of points to the map. This
% function can be used repetedly until the path is well defined.
%
%
function [ Points ]=AddPointsToMap( n )
  if nargin<1
      n=5;
  end
  
  hold on
  Points=zeros(n,2);
  for i=1:n % Add another point and display
    Points(i,:)=ginput(1);
    plot(Points(i,1),Points(i,2),'b.','MarkerSize',12,'LineWidth',1.4);
  end
