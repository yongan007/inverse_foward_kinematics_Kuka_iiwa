clear all;clc;
syms q1 q2 q3 q4 q5 q6 q7

d1 = 0.34;
d3= 0.4;
d5=0.4;
d7=0.126;

%matrices tranformation of ech link by using DH 
A1=Tr(q1,d1,0,-90);
A2=Tr(q1,0,0,-90);
A3=Tr(q1,d3,0,-90);
A4=Tr(q1,0,0,-90);
A5=Tr(q1,d5,0,-90);
A6=Tr(q1,0,0,-90);
A7=Tr(q1,d7,0,-90);

T0_7=A1*A2*A3*A4*A5*A6*A7 %

%Inverse Kinematinc

% input: P is position R is orientaion 
%example: 
P = [0.1,0.2,0.3];
R=eye(3) ;  %identity matrix 3x3 
a=inv_kin(R,P);



