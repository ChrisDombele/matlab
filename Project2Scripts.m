%Problem 2c
figure(1);
w=1;
w0=1.1;
F0=0.5;
m=0.3;
t=0:0.01:2*pi/((1.1-1)/2);
y=((2*F0)/(m.*(w0.^(2)-w.^(2)))).*sin(((w0-w).*t)/2).*sin(((w0+w).*t)/2);
plot(t,y);hold on;
y=((2*F0)/(m.*(w0.^(2)-w.^(2)))).*sin(((w0-w).*t)/2);
plot(t,y,'red');
y=-((2*F0)/(m.*(w0.^(2)-w.^(2)))).*sin(((w0-w).*t)/2);
plot(t,y,'red');
title('Problem 2c');
xlabel('t values');
ylabel('y(t) values');

%Problem 3b
figure(2)
w0=1.1;
F0=0.5;
m=0.3;
t=0:0.01:2*pi/((1.1-1)/2);
y=(F0/(2.*m.*w0)).*t.*sin(w0.*t);
plot(t,y);hold on;
y=(F0/(2.*m.*w0)).*t;
plot(t,y);
y=-(F0/(2.*m.*w0)).*t;
plot(t,y);
title('Problem 3b');
xlabel('t values');
ylabel('y(t) values');

%Problem 4a
figure(3);
w0=1;
m=1;
k=1;
d=1/4;
t=0:0.01:2*pi/((1.1-1)/2);
y=1./(sqrt((m.^2).*(((w0.^2)-(t.^2)).^2)+(d.^2).*(t.^2)));
plot(t,y);hold on;
axis([0 2 0 4.5]);
d=1/2;
y=1./(sqrt((m.^2).*(((w0.^2)-(t.^2)).^2)+(d.^2).*(t.^2)));
plot(t,y);
d=1;
y=1./(sqrt((m.^2).*(((w0.^2)-(t.^2)).^2)+(d.^2).*(t.^2)));
plot(t,y);
d=3/2;
y=1./(sqrt((m.^2).*(((w0.^2)-(t.^2)).^2)+(d.^2).*(t.^2)));
plot(t,y);
d=3;
y=1./(sqrt((m.^2).*(((w0.^2)-(t.^2)).^2)+(d.^2).*(t.^2)));
plot(t,y);
d=[1/4,1/2,1,3/2,3];
wd=sqrt((k/m)-(d.^2)/(2*m.^2));
y=1./(sqrt((m.^2).*(((w0.^2)-(wd.^2)).^2)+(d.^2).*(wd.^2)));
plot(wd,y,'*');
title('Problem 4a,4c');
xlabel('w values');
ylabel('M(w) values');