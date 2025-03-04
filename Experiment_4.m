
% =================================================
%CiUg5rC05Y2wOiDniYjmnYPmiYDmnIkgwqkgQWtpZVNoaWd1cmUgMjAyNQolIOiBlOezu+aWueW8jzogamltdGFuXzIwMDRAb3V0bG9vay5jb20KJSDniYjmnYPlo7DmmI7vvJrmnKzku6PnoIHku4XpmZDkuo7kuKrkurov6aG555uu5L2/55So77yM56aB5q2i6L2s6L29Cg==
% =================================================


% 定义函数 f(x, y)
f = @(x, y) 1 ./ sqrt((1 - x).^2 + y.^2) + 1 ./ sqrt((1 + x).^2 + y.^2);

% 创建一个网格
[X, Y] = meshgrid(-2:0.01:2, -2:0.01:2);
Z = f(X, Y);

% 1. 绘制三维图
figure;
mesh(X, Y, Z);
title('三维图');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;

% figure;
% 
% % 正方形投影
% subplot(2, 2, 1);  % 2行2列，第1个位置
% surf(X, Y, Z);
% view(2);  % 设置视角为正上方
% title('正方形投影');
% xlabel('x');
% ylabel('y');
% colorbar;
% 
% % 圆形投影
% subplot(2, 2, 2);  % 2行2列，第2个位置
% theta = linspace(0, 2*pi, 100);
% r = 2;
% [Xcircle, Ycircle] = pol2cart(theta, r);  % 将极坐标转为直角坐标
% Zcircle = f(Xcircle, Ycircle);
% plot3(Xcircle, Ycircle, Zcircle, 'b');
% title('圆形投影');
% xlabel('x');
% ylabel('y');
% zlabel('z');
% grid on;
% 
% % 六边形投影
% subplot(2, 2, 3);  % 2行2列，第3个位置
% theta_hex = linspace(0, 2*pi, 7); % 六个角
% Xhex = r * cos(theta_hex);
% Yhex = r * sin(theta_hex);
% Zhex = f(Xhex, Yhex);
% plot3(Xhex, Yhex, Zhex, 'r');
% title('六边形投影');
% xlabel('x');
% ylabel('y');
% zlabel('z');
% grid on;
% 
% % 三角形投影
% subplot(2, 2, 4);  % 2行2列，第4个位置
% Xtriangle = [-r, 0, r];
% Ytriangle = [-r, r, -r];
% Ztriangle = f(Xtriangle, Ytriangle);
% plot3(Xtriangle, Ytriangle, Ztriangle, 'g');
% title('三角形投影');
% xlabel('x');
% ylabel('y');
% zlabel('z');
% grid on;



%%

% 创建一个 2x2 的子图窗口
figure;

% 绘制正方形
subplot(2, 2, 1); % 在第一个子图
x_square = [-1 1 1 -1 -1]; % 正方形的 x 坐标，最后加上第一个点闭合
y_square = [-1 -1 1 1 -1]; % 正方形的 y 坐标，最后加上第一个点闭合
plot(x_square, y_square, 'b-', 'LineWidth', 2); % 绘制正方形
axis equal;
title('正方形');

% 绘制圆形
subplot(2, 2, 2); % 在第二个子图
theta = linspace(0, 2*pi, 100); % 角度
x_circle = cos(theta); % 圆形的 x 坐标
y_circle = sin(theta); % 圆形的 y 坐标
plot(x_circle, y_circle, 'r-', 'LineWidth', 2); % 绘制圆形
axis equal;
title('圆形');

% 绘制六边形
subplot(2, 2, 3); % 在第三个子图
x_hexagon = cos(linspace(0, 2*pi, 7)); % 六边形的 x 坐标
y_hexagon = sin(linspace(0, 2*pi, 7)); % 六边形的 y 坐标
plot(x_hexagon, y_hexagon, 'g-', 'LineWidth', 2); % 绘制六边形
axis equal;
title('六边形');

% 绘制三角形
subplot(2, 2, 4); % 在第四个子图
x_triangle = [0 1 -1 0]; % 三角形的 x 坐标，最后加上第一个点闭合
y_triangle = [1 0 0 1]; % 三角形的 y 坐标，最后加上第一个点闭合
plot(x_triangle, y_triangle, 'm-', 'LineWidth', 2); % 绘制三角形
axis equal;
title('三角形');



%%
% 3. 绘制螺旋线
figure;
t = linspace(0, 4*pi, 100);
x = cos(t);
y = sin(t);
z = t;
plot3(x, y, z, 'b');
title('螺旋线');
xlabel('x');
ylabel('y');
zlabel('z');
grid on;


