function B = B(q)
ml1 = 25;
ml2 = 25;
ml3 = 10;
ml4 = 5;
Il1 = 5;
Il2 = 5;
Il4 = 1;
Im1 = 0.0001;
Im2 = 0.0001;
Im3 = 0.01;
Im4 = 0.005;
kr1 = 1;
kr2 = 1;
kr3 = 50;
kr4 = 20;
l1 = 0.25;
l2 = 0.25;
a1 = 0.5;
a2 = 0.5;
b11 = Il1+ml1*l1^2+kr1^2*Im1+Il2+ml2*(a1^2+l2^2+2*a1*l2*cos(q(2)))+Im2+ml3*(a1^2+a2^2+2*a1*a2*cos(q(2)))+Il4+Im3+Im4+ml4*(a1^2+a2^2+2*a1*a2*cos(q(2)));
b12 = Il2+ml2*(l2^2+a1*l2*cos(q(2)))+kr2*Im2+ml3*(a2^2+a1*a2*cos(q(2)))+Il4+Im3+Im4+ml3*(a2^2+a1*a2*cos(q(2)));
b13 = -Im3*kr3;
b14 = Il4+Im4*kr4;
b21 = b12;
b22 = Il2+ml2*l2^2+kr2^2*Im2+ml3*a2^2+Il4+Im3+Im4+ml4*a2^2;
b23 = -Im3*kr3;
b24 = Il4+Im4*kr4;
b31 = -Im3*kr3;
b32 = -kr3*Im3;
b33 = ml3+ml4+Im3*kr3^2;
b34 = 0;
b41 = b14;
b42 = b24;
b43 = b34;
b44 = Il4+Im4*kr4^2;
B = [b11,b12,b13,b14;b21,b22,b23,b24;b31,b32,b33,b34;b41,b42,b43,b44];
%B = B*q_dot_dot;
end
