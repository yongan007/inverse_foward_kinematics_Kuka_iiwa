
%Tranformation of DH paramenter(theta,d,a,alpha)
%Example: 
%      A1=Tr(q1,d1,0,-90)
%      A2=Tr(q2,d2,0,90)
%         A=A1*A2
% alpha here is in degree becuase I use 'cosd

function A= Tr(t,d,a,al)
A=[cos(t)     -sin(t)*cosd(al)      sin(t)*sind(al)    a*cos(t);
  sin(t)      cos(t)*cosd(al)     -cos(t)*sind(al)    a*sin(t);
    0           sind(al)            cosd(al)             d;
    0               0                       0           1];
end

