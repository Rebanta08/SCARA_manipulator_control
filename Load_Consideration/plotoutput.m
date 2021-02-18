out = sim('dynamicmodel');

A = out.get('pos_e');
V = A;
figure(1);
subplot(4,1,1);
plot(t,V(1,:));
%ylim([-0.0001 0.0001]);
grid on;
title('q1-error');
subplot(4,1,2);
plot(t,V(2,:));
%ylim([-0.0001 0.0001]);
grid on;
title('q2-error');
subplot(4,1,3);
plot(t,V(3,:));
%ylim([-0.35 0.05]);
grid on
title('d3-error');
subplot(4,1,4);
plot(t,V(4,:));
%ylim([-0.002 0.002]);
title('q4-error');

out = sim('dynamicmodel');
C = out.get('vel_e');
W = C;
figure(2);
subplot(4,1,1);
plot(t,W(1,:));
%ylim([-0.0001 0.0001]);
grid on;
title('qdot1-error');
subplot(4,1,2);
plot(t,W(2,:));
%ylim([-0.0001 0.0001]);
grid on;
title('qdot2-error');
subplot(4,1,3);
plot(t,W(3,:));
%ylim([-0.35 0.05]);
grid on
title('qdot3-error');
subplot(4,1,4);
plot(t,W(4,:));
%ylim([-0.002 0.002]);
grid on;
title('qdot4-error');

B = out.get('q');
U = B;
figure(3);
subplot(4,1,1);
plot(t,U(1,:));
grid on;
title('q1');
subplot(4,1,2);
plot(t,U(2,:));
grid on;
title('q2');
subplot(4,1,3);
plot(t,U(3,:));
grid on
title('d3');
subplot(4,1,4);
plot(t,U(4,:));
grid on;
title('q4');

D = out.get('q_dot');
Y = D;
figure(4);
subplot(4,1,1);
plot(t,Y(1,:));
grid on;
title('q1 dot');
subplot(4,1,2);
plot(t,Y(2,:));
grid on;
title('q2 dot');
subplot(4,1,3);
plot(t,Y(3,:));
grid on
title('d3 dot');
subplot(4,1,4);
plot(t,Y(4,:));
grid on;
title('q4 dot');