function Ja_dot = jacobian_dot(Q)
% q is the vector of joint variables
q = Q(1:4);
q_d = Q(5:8);
c1 = cos(q(1));
s1 = sin(q(1));
c2 = cos(q(2));
s2 = sin(q(2));
%d3 = c;
c12 = c1*c2-s1*s2;
s12 = s1*c2+s2*c1;
%Jacobian calulated using differential kinematic equations.
Ja_dot = [-0.5*c12*(q_d(1)+q_d(2))-0.5*c1*q_d(1), -0.5*c12*(q_d(1)+q_d(2)), 0, 0; 
      -0.5*s12*(q_d(1)+q_d(2))-0.5*s1*q_d(1), -0.5*s12*(q_d(1)+q_d(2)), 0, 0; 
      0, 0, 0, 0; 
      0, 0, 0, 0];
