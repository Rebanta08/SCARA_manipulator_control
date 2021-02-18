out = sim('second_order');
A = out.get('cie');
V = A.data;
figure(1);
subplot(4,1,1);
plot(t,V(:,1));
%ylim([-0.0001 0.0001]);
grid on;
title('x-error');
subplot(4,1,2);
plot(t,V(:,2));
%ylim([-0.0001 0.0001]);
grid on;
title('y-error');
subplot(4,1,3);
plot(t,V(:,3));
%ylim([-0.35 0.05]);
grid on
title('z-error');
subplot(4,1,4);
plot(t,V(:,4));
%ylim([-0.002 0.002]);
grid on;
title('Phi-error');

C = out.get('cie1');
W = C.data;
figure(2);
subplot(4,1,1);
plot(t,W(:,1));
%ylim([-0.0001 0.0001]);
grid on;
title('x-vel-error');
subplot(4,1,2);
plot(t,W(:,2));
%ylim([-0.0001 0.0001]);
grid on;
title('y-vel-error');
subplot(4,1,3);
plot(t,W(:,3));
%ylim([-0.35 0.05]);
grid on
title('z-vel-error');
subplot(4,1,4);
plot(t,W(:,4));
%ylim([-0.002 0.002]);
grid on;
title('Phi-vel-error');


B = out.get('cij');
U = B.data;
figure(3);
subplot(4,1,1);
plot(t,U(:,1));
grid on;
title('q1');
subplot(4,1,2);
plot(t,U(:,2));
grid on;
title('q2');
subplot(4,1,3);
plot(t,U(:,3));
grid on
title('d3');
subplot(4,1,4);
plot(t,U(:,4));
grid on;
title('q4');

D = out.get('cik');
X = D.data;
figure(4);
subplot(4,1,1);
plot(t,X(:,1));
grid on;
title('q1 dot');
subplot(4,1,2);
plot(t,X(:,2));
grid on;
title('q2 dot');
subplot(4,1,3);
plot(t,X(:,3));
grid on
title('d3 dot');
subplot(4,1,4);
plot(t,X(:,4));
grid on;
title('q4 dot');
