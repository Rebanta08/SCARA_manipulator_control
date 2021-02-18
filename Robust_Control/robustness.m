function w = robustness(E)
t = zeros(4);
I = eye(4);
D = [t;I];
Q = ones(8);
z = D'*Q;
z=z*E;
ro = 30;
e = 0.06;
if(norm(z)<e)
    w = ro*z/e;
else
    w = (ro/norm(z))*z;
end
