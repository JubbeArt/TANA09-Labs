function [A,b]=ElectricCircuit()

R=[ 14 , 2 , 6 , 0.1 , 7 , 15 , 5];
Va=5.0023;Vb=0.0047;

A=zeros(11,11);b=zeros(11,1);
% Set equations using Kirchhoffs Law
A(1,[5 6 7])=[1 -1 -1];
A(2,[6 8 9])=[-1 1 1];
A(3,[7 8 10]) = [1 1 -1];
A(4,[9 10 11]) = [1 1 -1];
% Set equations using Ohms Law
A(5,[1 5])=[1 R(1)];b(5)=Va;
A(6,[1 2 6])=[-1 1 R(2)];
A(7,[1 3 7])=[-1 1 R(3)];
A(8,[2 3 8])=[-1 1 R(4)];
A(9,[2 4 9])=[-1 1 R(5)];
A(10,[3 4 10])= [-1 1 R(6)];
A(11,[4 11]) = [-1 R(7)];b(11)=Vb;

