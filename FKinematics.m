% DH=[q1 d1 0 -90];
% FKinematics(DH)
% %forward kinematics using DH parameter DH(theta,d,a,alpha)


function Tr = FKinematics(DH)
    first=1;
    last=size(DH,1);
 for i=first:last
    t=DH(i,1);
    d=DH(i,2);
    a=DH(i,3);
    al=DH(i,4); 
    T(:,:,i)=[cos(t)     -sin(t)*cosd(al)      sin(t)*sind(al)    a*cos(t);
              sin(t)      cos(t)*cosd(al)     -cos(t)*sind(al)    a*sin(t);
                0           sind(al)            cosd(al)             d;
                0               0                       0           1];
 
 end
 Tr=eye(4);
for i=first:last
    Tr=Tr*T(:,:,i);
end
end

