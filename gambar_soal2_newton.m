function gambar_soal2_newton
f = @gamma;
h = 1.0;
x = [1:h:5];
max_x = x(length(x));
for i = 1 : length(x)
    y(i) = f(x(i));
end
xx = [1:0.01:max_x];
yy = interp_newton(x,y,xx);

grid on; hold on;
plot(x,y,'o',xx,yy);
title('Newton Interpolation Soal 2');
end