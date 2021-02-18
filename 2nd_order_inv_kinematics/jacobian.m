function Ja = jacobian(q)
% q is the vector of joint variables
c1 = cos(q(1));
s1 = sin(q(1));
c2 = cos(q(2));
s2 = sin(q(2));
%d3 = c;
c12 = c1*c2-s1*s2;
s12 = s1*c2+s2*c1;
%Jacobian calulated using differential kinematic equations.
Ja = [-0.5*s12-0.5*s1, -0.5*s12, 0, 0; 0.5*c12+0.5*c1, 0.5*c12, 0, 0; 0, 0, -1, 0; 1, 1, 0, 1];
%JI = inv(Ja); %Inverse Jacobian
end