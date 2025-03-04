
% =================================================
%CiUg5rC05Y2wOiDniYjmnYPmiYDmnIkgwqkgQWtpZVNoaWd1cmUgMjAyNQolIOiBlOezu+aWueW8jzogamltdGFuXzIwMDRAb3V0bG9vay5jb20KJSDniYjmnYPlo7DmmI7vvJrmnKzku6PnoIHku4XpmZDkuo7kuKrkurov6aG555uu5L2/55So77yM56aB5q2i6L2s6L29Cg==
% =================================================

% 定义复数 z
z = 1 + 2i;

% 调用 complex_operations 函数
[exp_val, log_val, sin_val, cos_val] = complex_operations(z);

% 显示结果
disp('指数:');
disp(exp_val);
disp('对数:');
disp(log_val);
disp('正弦:');
disp(sin_val);
disp('余弦:');
disp(cos_val);

%%

% 输入 m1, m2 和 theta 的值
m1 = input('请输入 m1 的值: ');
m2 = input('请输入 m2 的值: ');
theta = input('请输入 θ 的值 (度): ');

% 调用 solve_physics_system 函数
[a1, a2, N1, N2] = solve_physics_system(m1, m2, theta);

% 显示结果
disp(['a1 = ', num2str(a1)]);
disp(['a2 = ', num2str(a2)]);
disp(['N1 = ', num2str(N1)]);
disp(['N2 = ', num2str(N2)]);


%%

% 寻找所有两位数的绝对素数
absolute_primes = [];  % 存储结果

for num = 10:99
    if is_prime(num)  % 先检查原数字是否为素数
        digits = num2str(num);  % 获取数字的字符串表示
        permutations = unique(perms(digits), 'rows');  % 获取所有数字的排列组合
        
        % 检查所有排列是否都是素数
        is_absolute_prime = true;
        for i = 1:size(permutations, 1)
            perm_num = str2double(permutations(i, :));  % 将排列转换为数字
            if ~is_prime(perm_num)
                is_absolute_prime = false;
                break;
            end
        end
        
        % 如果所有排列都是素数，则添加到结果中
        if is_absolute_prime
            absolute_primes = [absolute_primes, num];
        end
    end
end

% 输出所有的两位绝对素数
disp('所有两位绝对素数：');
disp(absolute_primes);


%%

% 定义一个 x 数组
x = 1:0.1:5;  % 从1到5，以0.1为间隔

% 调用 fx 函数
y = fx(x);

% 显示结果
disp('f(x)的结果：');
disp(y);

%%

% 计算 y 的值
y1 = f1(40) / (f1(30) + f1(20));

% 显示结果
disp('y1 的值为：');
disp(y1);

% 计算 y 的值
y2 = f2(40);  % 这里是 n=40

% 显示结果
disp('y2 的值为：');
disp(y2);


