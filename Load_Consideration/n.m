function N = n(Q)
Q=Q';
q=Q(1:4);
q_dot=Q(5:8);
ml2 = 25;
ml4 = 5;
ml3 = 10;
l2 = 0.25;
a1 = 0.5;
a2 = 0.5;
Fm1 = 0.0001;
Fm2 = Fm1;
Fm3 = 0.01;
Fm4 = 0.005;
K = -ml2*a1*l2*sin(q(2))-ml3*a1*a2*sin(q(2))-ml4*a1*a2*sin(q(2));
c11 = K*(q_dot(2));
c12 = K*(q_dot(1)+q_dot(2));
c21 = -K*q_dot(1);
C = [c11,c12,0,0;c21,0,0,0;0,0,0,0;0,0,0,0];
Fv = diag([Fm1,Fm2,Fm3,Fm4]);
g = [0;0;ml4*9.8;0];
N = (C+Fv)*q_dot'+g;
end

