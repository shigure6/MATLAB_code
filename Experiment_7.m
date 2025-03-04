
% =================================================
%CiUg5rC05Y2wOiDniYjmnYPmiYDmnIkgwqkgQWtpZVNoaWd1cmUgMjAyNQolIOiBlOezu+aWueW8jzogamltdGFuXzIwMDRAb3V0bG9vay5jb20KJSDniYjmnYPlo7DmmI7vvJrmnKzku6PnoIHku4XpmZDkuo7kuKrkurov6aG555uu5L2/55So77yM56aB5q2i6L2s6L29Cg==
% =================================================


syms x;
% 定义符号变量 x

% 计算第一个积分
f1 = x * sin(x^2);
int_f1 = int(f1, x);  % 计算不定积分
diff_f1 = diff(int_f1, x);  % 对不定积分进行微分验证

% 计算第二个积分
f2 = 1 / (1 + cos(x));
int_f2 = int(f2, x);  % 计算不定积分
diff_f2 = diff(int_f2, x);  % 对不定积分进行微分验证

% 计算第三个积分
f3 = 1 / (exp(x) + 1);
int_f3 = int(f3, x);  % 计算不定积分
diff_f3 = diff(int_f3, x);  % 对不定积分进行微分验证

% 计算第四个积分
f4 = asin(x);
int_f4 = int(f4, x);  % 计算不定积分
diff_f4 = diff(int_f4, x);  % 对不定积分进行微分验证

% 计算第五个积分
f5 = sec(x)^3;
int_f5 = int(f5, x);  % 计算不定积分
diff_f5 = diff(int_f5, x);  % 对不定积分进行微分验证

% 输出结果
disp('第一个积分的结果：');
disp(int_f1);
disp('第一个积分微分验证结果：');
disp(diff_f1);

disp('第二个积分的结果：');
disp(int_f2);
disp('第二个积分微分验证结果：');
disp(diff_f2);

disp('第三个积分的结果：');
disp(int_f3);
disp('第三个积分微分验证结果：');
disp(diff_f3);

disp('第四个积分的结果：');
disp(int_f4);
disp('第四个积分微分验证结果：');
disp(diff_f4);

disp('第五个积分的结果：');
disp(int_f5);
disp('第五个积分微分验证结果：');
disp(diff_f5);

%%

% 定义 x 的范围
x1 = linspace(0, pi, 1000);  % 在 [0, pi] 范围内生成 1000 个点
x2 = linspace(0, 1, 1000);   % 在 [0, 1] 范围内生成 1000 个点
x3 = linspace(0, 2*pi, 1000); % 在 [0, 2*pi] 范围内生成 1000 个点

% 定义函数并计算定积分
f1 = @(x) sin(x) ./ x; 
int_f1 = trapz(x1, f1(x1));  % 使用 trapz 计算第一个积分

f2 = @(x) x.^x; 
int_f2 = trapz(x2, f2(x2));  % 使用 trapz 计算第二个积分

f3 = @(x) exp(x) .* sin(2*x); 
int_f3 = trapz(x3, f3(x3));  % 使用 trapz 计算第三个积分

f4 = @(x) exp(-x.^2); 
int_f4 = trapz(x2, f4(x2));  % 使用 trapz 计算第四个积分

% 输出结果
disp('第一个定积分的结果：');
disp(int_f1);

disp('第二个定积分的结果：');
disp(int_f2);

disp('第三个定积分的结果：');
disp(int_f3);

disp('第四个定积分的结果：');
disp(int_f4);

%%

% 定义 t 的范围
t = linspace(0, 2*pi, 1000);  % 生成 1000 个点来逼近积分

% 椭圆的参数化形式
x = 3 * cos(t);  
y = 2 * sin(t);

% 计算 dx/dt 和 dy/dt
dx_dt = -3 * sin(t);
dy_dt = 2 * cos(t);

% 计算周长的积分
L = trapz(t, sqrt(dx_dt.^2 + dy_dt.^2));  % 使用 trapz 计算定积分

% 输出结果
disp('椭圆的周长为：');
disp(L);

%%



%%

% 1. 计算无穷积分 ∫ e^(-x^2) / (1 + x^4) dx, x 从 -∞ 到 ∞
f1 = @(x) exp(-x.^2) ./ (1 + x.^4);
int_f1 = integral(f1, -Inf, Inf);  % 使用 integral 函数计算无穷积分

% 2. 计算有限积分 ∫ tan(x) / sqrt(x) dx, x 从 0 到 1
f2 = @(x) tan(x) ./ sqrt(x);
int_f2 = integral(f2, 0, 1);  % 使用 integral 函数计算有限积分

% 3. 计算有限积分 ∫ sin(x) / sqrt(1 - x^2) dx, x 从 0 到 1
f3 = @(x) sin(x) ./ sqrt(1 - x.^2);
int_f3 = integral(f3, 0, 1);  % 使用 integral 函数计算有限积分

% 输出结果
disp('第一个广义积分的结果：');
disp(int_f1);

disp('第二个广义积分的结果：');
disp(int_f2);

disp('第三个广义积分的结果：');
disp(int_f3);

%%
%%
%计算常微分方程的解
%计算常微分方程的解

syms y(x) a;
% 1. 求解 y'' - 3y' = 2e^{2x}sin(x)
eq1 = diff(y, x, 2) - 3*diff(y, x) == 2*exp(2*x)*sin(x);
sol1 = dsolve(eq1);  % 求解方程

% 2. 求解 y'' + a^2 y = sin(x), a > 0
eq2 = diff(y, x, 2) + a^2*y == sin(x);
sol2 = dsolve(eq2);  % 求解方程

% 3. 求解 y y'' - (y')^2 = -1
eq3 = y*diff(y, x, 2) - (diff(y, x))^2 == -1;
sol3 = dsolve(eq3);  % 求解方程

% 4. 求解 y^3 dx + 2(x^2 - x y^2) dy = 0, y|_{x=1} = 1
eq4 = y^3 + 2*(x^2 - x*y^2)*diff(y, x) == 0;
sol4 = dsolve(eq4, y(1) == 1);  % 求解方程，并使用初值条件


% 输出所有解
disp('第一个微分方程的解：');
disp(sol1);

disp('第二个微分方程的解：');
disp(sol2);

disp('第三个微分方程的解：');
disp(sol3);

disp('第四个微分方程的解：');
disp(sol4);

%%
%第五个方程

% 定义微分方程
f = @(x, y) [y(2); exp(x) + cos(x) - y(1)];  % y(1) 是 y, y(2) 是 y'

% 初始条件 y(0) = 1, y'(0) = 1
initial_conditions = [1; 1];  

% 设定求解区间
xspan = [0, 10];  % 假设求解区间为 [0, 10]

% 使用 ode45 求解微分方程
[x, y] = ode45(f, xspan, initial_conditions);

% 绘制解的图像
plot(x, y(:,1));
xlabel('x');
ylabel('y');
title('Numerical solution of y'''' + y = e^x + cos(x)');
grid on;

% 输出结果
disp('数值解的部分结果：');
disp([x, y]);

%%

syms y(x);

% 定义微分方程 (1 + x^2)y'' = 2xy y'
eq = (1 + x^2) * diff(y, x, 2) == 2*x*y*diff(y, x);

% 转化为一阶方程组
f = @(x, y) [y(2); (2*x*y(1)*y(2))/(1 + x^2)];

% 初始条件
initial_conditions = [1; 3];

% 求解区间缩小至 [0, 2] 或其他较小区间
xspan = [0, 2];

% 使用 ode15s 求解（专门处理刚性问题）
opts = odeset('RelTol', 1e-6, 'AbsTol', 1e-6);  % 提高容差来处理刚性问题
[x_numeric, y_numeric] = ode15s(f, xspan, initial_conditions, opts);

% 解析解（如果符号计算无法求解，我们直接忽略）
try
    sol_analytic = dsolve(eq, 'y(0) = 1', 'Dy(0) = 3');
    f_analytic = matlabFunction(sol_analytic);  % 将解析解转化为函数
    y_analytic_values = f_analytic(x_numeric);
    figure;
    plot(x_numeric, y_numeric(:, 1), 'r-', 'DisplayName', '数值解 (ode15s)');
    hold on;
    plot(x_numeric, y_analytic_values, 'b--', 'DisplayName', '解析解');
    xlabel('x');
    ylabel('y');
    title('解析解与数值解的比较');
    legend;
    grid on;
catch
    % 如果无法求解解析解，直接绘制数值解
    figure;
    plot(x_numeric, y_numeric(:, 1), 'r-', 'DisplayName', '数值解 (ode15s)');
    xlabel('x');
    ylabel('y');
    title('数值解');
    grid on;
end







