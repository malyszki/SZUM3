u = [3;1];
L = 5;
Rr = L*(u(1)+u(2))/(u(1)+u(2));

r = 0.05;

X = [r/(2*L) -r/(2*L); r/2 r/2];

P = X*u;
w = P(1);
v = P(2);

theta = 0;
x = 0;
y = 0;

x2=x+(L*cos(theta));
y2=y+(L*sin(theta));
        
x3=x+(L*cos(theta-pi/2));
y3=y+(L*sin(theta-pi/2));


for i=0:200

    
    plot([x x2],[y y2],'k',[x x3],[y y3],'k',x,y,'-o')
    xlim([-40 40])
    ylim([-40 40])
    grid on
    drawnow
    
    A = [cos(theta)*v;sin(theta)*v;w];
    
    x = x + A(1);
    
    y = y + A(2);
    
    theta = theta +A(3);
    
   
    
    k1 = [x - (sin(theta)*L/2); y+(cos(theta)*L/2)];
    k2 = [x + (sin(theta)*L/2); y - (cos(theta)*L/2)];
    
    x2=x+(L*cos(theta+pi/2));
    y2=y+(L*sin(theta+pi/2));
    
        
    x3=x+(L*cos(theta-pi/2));
    y3=y+(L*sin(theta-pi/2));
    
end