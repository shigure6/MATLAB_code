
% =================================================
%CiUg5rC05Y2wOiDniYjmnYPmiYDmnIkgwqkgQWtpZVNoaWd1cmUgMjAyNQolIOiBlOezu+aWueW8jzogamltdGFuXzIwMDRAb3V0bG9vay5jb20KJSDniYjmnYPlo7DmmI7vvJrmnKzku6PnoIHku4XpmZDkuo7kuKrkurov6aG555uu5L2/55So77yM56aB5q2i6L2s6L29Cg==
% =================================================


% 计算表达式的值
x = (sin(deg2rad(48)) + sqrt(7)) / (1 + log(15 - 2i));  % x的值
y = abs(1 + 3i) / (1 + exp(2));  % y的值
z = x^2 + y^2;  % z的值

% 输出结果
disp(['x = ', num2str(x)]);
disp(['y = ', num2str(y)]);
disp(['z = ', num2str(z)]);


% 提取实部和虚部
x_real = real(x);
x_imag = imag(x);
y_real = real(y);
y_imag = imag(y);
z_real = real(z);
z_imag = imag(z);

% 创建三维图形
figure;
plot3([0, x_real], [0, y_real], [0, z_real], '-o', 'MarkerSize', 10, 'LineWidth', 2);
hold on;
plot3([0, x_imag], [0, y_imag], [0, z_imag], '-o', 'MarkerSize', 10, 'LineWidth', 2);

% 设置图形的标签
xlabel('实部');
ylabel('虚部');
zlabel('值');
title('x, y, z 的三维可视化');
legend('实部', '虚部');
grid on;


% % 可视化
% figure;
% bar([real(x), real(y), real(z)]);  % 仅显示实部
% hold on;
% bar([imag(x), imag(y), imag(z)], 'FaceColor', 'r');  % 仅显示虚部，使用红色
% set(gca, 'xticklabel', {'x', 'y', 'z'});
% ylabel('值');
% title('表达式 x, y, z 的可视化');
% legend('实部', '虚部');

%%

% 构建矩阵A
A = [1, 2, 3, 10; 4, 5, 6, 12; 7, 8, 9, 14];

% (1) 构建矩阵B，选择A的第1行和第3行第1、3、4列
B = A([1, 3], [1, 3, 4]);

% (2) 修改A的第2行至第1、3、4列为B的元素
A(2, [1, 3, 4]) = B(2, :);

% (3) 将A的每个元素加30，并交换第1行和第3行
A = A + 30;  % 每个元素加30
A([1, 3], :) = A([3, 1], :);  % 交换第1行和第3行

% 输出修改后的矩阵A
disp('修改后的矩阵A:');
disp(A);

%%

% (1) 创建一个 4x5 的零矩阵，单位矩阵和元素全为1的矩阵
zero_matrix = zeros(4, 5);  % 4x5 的零矩阵
identity_matrix = eye(5);   % 5x5 的单位矩阵
ones_matrix = ones(4, 5);   % 4x5 的元素全为1的矩阵

disp('零矩阵:');
disp(zero_matrix);
disp('单位矩阵:');
disp(identity_matrix);
disp('元素全为1的矩阵:');
disp(ones_matrix);

% (2) 使用直接建立矩阵的方式，生成矩阵 d
d = [0 1 3; 0 1 4; 0 1 5];  % 直接定义矩阵d
disp('矩阵d:');
disp(d);


%%

% 计算 y = sin(x) * cos(x) 的值
x_values = [0.2, 0.4, 0.6, 0.8];
y_values = sin(x_values) .* cos(x_values);  % 使用元素乘法

disp('x 值和对应的 y 值:');
disp(table(x_values', y_values', 'VariableNames', {'x', 'y'}));

%%

% 1. 如何访问数组中的元素？
% 创建一个数组
a = [10, 20, 30, 40, 50];  % 示例数组

% 假设我们需要访问第 i 个元素的前一个元素
i = 3;  % 假设我们要访问第3个元素的前一个元素
element = a(i-1);  % 获取第2个元素，即20

% 显示结果
disp(['第 ', num2str(i), ' 个元素的前一个元素是: ', num2str(element)]);

% 2. 如何输出显示字符型变量？
% 创建一个字符型变量
str = 'Hello, MATLAB!';

% 使用 disp 输出字符型变量
disp('使用 disp 输出字符型变量：');
disp(str);

% 使用 fprintf 输出字符型变量，并格式化输出
fprintf('使用 fprintf 输出字符型变量：%s\n', str);



% 数组元素的访问：使用 a(i-1) 来访问数组 a 中第 i 个元素的前一个元素。并通过 disp 函数输出结果。
% 字符型变量的输出：
% 使用 disp(str) 直接输出字符型变量 str。
% 使用 fprintf 格式化输出字符型变量，并在输出时添加额外的信息。

