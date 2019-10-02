% 
% R(3x3) is oriantation and P(3X1) is position
% exaple P = [0.1,0.2,0.3];
%        R=eye(3) 
%        a=inv_kin(R,P)

function q = inv_kin(R,P)

p = num2cell(P); %position of P 
[x_c,y_c,z_c] = deal(p{:});

[q1,q2,q3] = arm_angle(x_c,y_c,z_c);
%foward of arm link ( link 1 to 3 )
DH1=[q1 0.34 0 -90;
     q2 0 0 90;
     q3 0.4 0 -90]; %Dh of arm parameter 
T_arm = FKinematics(DH1);
R_arm = t2r(T_arm);   %rotation matrix of arm 
R6_3 = (R_arm.')*R;% rotation of twrist link

q4=atan2(R6_3(2,3),R6_3(1,3));
q5=atan2(sqrt((R6_3(1,3))^2+(R6_3(2,3))^2),R6_3(3,3));
q6=atan2(R6_3(3,2),R6_3(3,1));

q= [q1 q2 q3 q4 q5 q6]
%Fuction for calculating q1 q2 q3
function [q1,q2,q3] = arm_angle(x_c,y_c,z_c)
d0 =0;
d1 = 0.34;
d3= 0.4;
s=z_c-d0;
r=sqrt(x_c^2+y_c^2 );
D=(s^2+r^2-d1^2-d3^2)/(2*d1*d3);

q1 = atan2(y_c,x_c);
q3 = atan2(sqrt(1-D^2),D); % q3=atan2(+-sqrt(1-D^2),D)
q2 = atan2(s,r)-atan2(d3*sin(q3),d1+d3*sin(q3));

end

end

