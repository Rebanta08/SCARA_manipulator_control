function [s,s_dot,s_dot_dot,t] = trajectory(sf,si,tf,ti)
t = 0:0.001:4;
acc = (5*abs(sf-si))/(((tf+ti)^2)-4*ti*tf);
tc = (tf+ti)/2 - 0.5*sqrt((((tf+ti)^2)*acc-4*(sf-si+acc*ti*tf))/acc);
for i = 1:length(t)
    if (t(i)<=ti)
        s(i)=0;
        s_dot(i)=0;
        s_dot_dot(i)=0;
    elseif (t(i)>ti && t(i)<=tc)
        s(i) = si + 0.5*acc*(t(i)-ti)^2;
        s_dot(i) = acc*(t(i)-ti);
        s_dot_dot(i) = acc;
    elseif (t(i)>tc && t(i)<=tf-tc+ti)
        s(i) = si + acc*(tc-ti)*((t(i)-ti)-(tc-ti)/2);
        s_dot(i) = acc*(tc-ti);
        s_dot_dot(i)=0;
    elseif (t(i)<tf && t(i)>tc)
        s(i) = sf - 0.5*acc*(tf-t(i))^2;
        s_dot(i) = acc*(tc-ti)-acc*(t(i)-ti-tf+tc);
        s_dot_dot(i) = -acc;
    else
        s(i) = sf;
        s_dot(i) = 0;
        s_dot_dot(i) = 0;
    end
end
end
        
        
        
        
