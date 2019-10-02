%This function is created with robotics toolbox of Peter C.

function iiwa= iiwa_show()

syms q1 q2 q3 q4 q5 q6 q7 

q = [0 0 0 0 0 0 0];

d1=0.34;
d3=0.4;
d5=0.4;
d7=0.126;

L(1) = Link([0 d1 0 -pi/2 ]);
L(2) = Link([0 0.15 0 pi/2]);
L(3) = Link([0 d3 0 -pi/2]);
L(4) = Link([0 -0.15 0 pi/2]);
L(5) = Link([0 d5 0 -pi/2]);
L(6) = Link([0 0.15 0 pi/2]);
L(7) = Link([0 -d7 0 0]);

iiwa=SerialLink(L,'name','iiwa');
%fk = iiwa.fkine([q1 q2 q3 q4 q5 q6 q7]);
figure(1);
iiwa.plot([q])
end
