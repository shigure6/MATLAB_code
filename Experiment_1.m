
% =================================================
%CiUg5rC05Y2wOiDniYjmnYPmiYDmnIkgwqkgQWtpZVNoaWd1cmUgMjAyNQolIOiBlOezu+aWueW8jzogamltdGFuXzIwMDRAb3V0bG9vay5jb20KJSDniYjmnYPlo7DmmI7vvJrmnKzku6PnoIHku4XpmZDkuo7kuKrkurov6aG555uu5L2/55So77yM56aB5q2i6L2s6L29Cg==
% =================================================


A = [1 2 3; 4 5 6; 7 8 9];

A

%% 

B = zeros(3,3); % 创建一个 3x3 的零矩阵
B(1,:) = [1 2 3];
B(2,:) = [4 5 6];
B(3,:) = [7 8 9];

B

%% 

C(1,:) = [1 2 3];
C(2,:) = [4 5 6];
C(3,:) = [7 8 9];

C

%% 

S = 0;
n = 1;
for i = 1:1000  % 假设计算前1000项
    if mod(i, 2) == 1
        S = S + 1/n;
    else
        S = S - 1/n;
    end
    n = n + 1;
end
disp(S);

%% 

% 定义 x 和 y 的取值范围
[x, y] = meshgrid(-8:0.1:8, -8:0.1:8);

% 计算 z 的值
z = sin(sqrt(x.^2 + y.^2)) ./ sqrt(x.^2 + y.^2);

% 为避免除以零引起的错误，手动将原点处的值设为 0
z(isnan(z)) = 0;

% 绘制三维曲面
surf(x, y, z);
xlabel('x');
ylabel('y');
zlabel('z');
title('3D Surface Plot of z = sin(sqrt(x^2 + y^2)) / sqrt(x^2 + y^2)');


%% 

% 定义复数矩阵 A 和 B
A = [1, 3, 2, 4; 5, 8, 6, 9] + [0, 0, 0, 0; 0, 0, 0, 0]*i;
B = [1 + 5i, 2 + 6i, 3 + 8i, 1 + 4 + 9*i];

% 计算矩阵乘积 C
C = A .* B;

% 显示结果
disp('Matrix C:');
disp(C);



