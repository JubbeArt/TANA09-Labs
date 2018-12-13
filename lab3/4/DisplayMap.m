%DISPLAYMAP: Load and display the map. Also mark the
% origin and destination for the trip.
%
function []=DisplayMap();

 clf, % Clear graphics window and display the map
 I=imread('L2-Map.png');
 imshow(I);
 hold on
 
 % Mark the start and end locations
 plot([166 460],[525,226],'rx','MarkerSize',14,'LineWidth',1.9);