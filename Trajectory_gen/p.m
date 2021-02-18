p0 = [0,-0.8,0];
p1 = [0,-0.8,0.5];
p2 = [0.5,-0.6,0.5];
p3 = [0.8,0,0.5];
p4 = [0.8,0,0];

ti_1 = 0;
tf_1 = 0.6;
sf_1 = norm(p1-p0,2);
[s_1,s_dot_1,s_dot_dot_1,t] = trajectory(sf_1,0,tf_1,ti_1);
P1 = s_1'.*(p1-p0)/sf_1;
P1_d = s_dot_1'.*(p1-p0)/sf_1;
P1_dd = s_dot_dot_1'.*(p1-p0)/sf_1;

ti_2 = 0.4;
tf_2 = 2.0;
sf_2 = norm(p2-p1,2);
[s_2,s_dot_2,s_dot_dot_2,t] = trajectory(sf_2,0,tf_2,ti_2);
P2 = s_2'.*(p2-p1)/sf_2;
P2_d = s_dot_2'.*(p2-p1)/sf_2;
P2_dd = s_dot_dot_2'.*(p2-p1)/sf_2;

ti_3 = 1.8;
tf_3 = 3.4;
sf_3 = norm(p3-p2,2);
[s_3,s_dot_3,s_dot_dot_3,t] = trajectory(sf_3,0,tf_3,ti_3);
P3 = s_3'.*(p3-p2)/sf_3;
P3_d = s_dot_3'.*(p3-p2)/sf_3;
P3_dd = s_dot_dot_3'.*(p3-p2)/sf_3;

ti_4 = 3.2;
tf_4 = 4;
sf_4 = norm(p4-p3,2);
[s_4,s_dot_4,s_dot_dot_4,t] = trajectory(sf_4,0,tf_4,ti_4);
P4 = s_4'.*(p4-p3)/sf_4;
P4_d = s_dot_4'.*(p4-p3)/sf_4;
P4_dd = s_dot_dot_4'.*(p4-p3)/sf_4;


P = p0+P1+P2+P3+P4;
P_d = P1_d+P2_d+P3_d+P4_d;
P_dd = P1_dd+P2_dd+P3_dd+P4_dd;

figure(1);
plot3(P(:,1),P(:,2),P(:,3));
grid on
title('3D-trajectory');

figure(2);
subplot(3,1,1);
grid on;
plot(t,P(:,1));
title('x-position');
subplot(3,1,2);
plot(t,P(:,2));
title('y-position');
subplot(3,1,3);
plot(t,P(:,3));
title('z-position');

figure(3);
grid on;
subplot(3,1,1);
plot(t,P_d(:,1));
title('x-velocity');
subplot(3,1,2);
plot(t,P_d(:,2));
title('y-velocity');
subplot(3,1,3);
plot(t,P_d(:,3));
title('z-velocity');

figure(4)
grid on;
subplot(3,1,1);
plot(t,P_dd(:,1));
title('x-acceleration')
subplot(3,1,2);
plot(t,P_dd(:,2));
title('y-acceleration')
subplot(3,1,3);
plot(t,P_dd(:,3));
title('z-acceleration')
