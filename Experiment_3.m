
% =================================================
%CiUg5rC05Y2wOiDniYjmnYPmiYDmnIkgwqkgQWtpZVNoaWd1cmUgMjAyNQolIOiBlOezu+aWueW8jzogamltdGFuXzIwMDRAb3V0bG9vay5jb20KJSDniYjmnYPlo7DmmI7vvJrmnKzku6PnoIHku4XpmZDkuo7kuKrkurov6aG555uu5L2/55So77yM56aB5q2i6L2s6L29Cg==
% =================================================


% T6

% 计算矩阵 A 的平方根（矩阵平方根）
sqrt_A_matrix = sqrtm(A);

% 按元素计算矩阵 A 的平方根
sqrt_A_elementwise = sqrt(A);

% 显示结果
disp('矩阵 A 的平方根（使用 sqrtm）：');
disp(sqrt_A_matrix);

disp('矩阵 A 的元素平方根（使用 sqrt）：');
disp(sqrt_A_elementwise);



%% T5
% 定义矩阵 A 和常数向量 b
A = [1/2, 1/3, 1/4;
     1/3, 1/5, 1/6;
     1/4, 1/5, 1/6];
b = [0.95; 0.67; 0.52];

% 求解方程组 A * x = b
x = A \ b;
disp('方程组的解：');
disp(x);

% 修改 b 向量的第三个元素
b_modified = [0.95; 0.67; 0.53];

% 重新求解方程组
x_modified = A \ b_modified;
disp('修改第三个元素后的解：');
disp(x_modified);

% 比较修改前后的变化
disp('解的变化：');
disp(x_modified - x);

% 计算矩阵 A 的条件数
cond_A = cond(A);
disp('矩阵 A 的条件数：');
disp(cond_A);

% 分析矩阵 A 的条件数（越大的条件数，矩阵越不稳定，容易受到数值误差影响）



%% T3

% 生成一个 5x5 的矩阵
A = [-29 6 18 0 0; 
      0 0 0 0 0; 
      0 0 0 0 0; 
      0 0 0 0 0;
      0 0 0 0 0];

% 计算行列式
det_A = det(A);

% 计算迹（矩阵对角线元素的和）
trace_A = trace(A);

% 计算秩（矩阵的秩）
rank_A = rank(A);

% 计算矩阵的范数（使用Frobenius范数）
norm_A = norm(A, 'fro');

% 输出结果
disp('行列式：');
disp(det_A);

disp('迹：');
disp(trace_A);

disp('秩：');
disp(rank_A);

disp('范数：');
disp(norm_A);



%% T4

% 给定矩阵 A (修改为 3x3 方阵)
A = [-29 6 18; 
     20 5 12;
      -8 8 5];  % 添加一个元素使其成为 3x3 方阵

% 计算特征值和特征向量
[eig_values, eig_vectors] = eig(A);

% 输出特征值和特征向量
disp('特征值：');
disp(diag(eig_values));  % 提取对角线上的特征值

disp('特征向量：');
disp(eig_vectors);


%%  T1

% 定义矩阵
E = rand(3,3);  % 3x3 随机矩阵
R = rand(3,2);  % 3x2 随机矩阵
O = zeros(2,3); % 2x3 零矩阵
S = rand(2,2);  % 2x2 随机矩阵

% 计算 A^2
A = [E, R; O, S];
A_squared = A * A;  % 计算 A 的平方

% 验证结果
result = [E, R+R*S; O, S^2];  % 你需要验证这个公式是否成立
disp(A_squared);
disp(result);


%% T2

% 生成 5 阶希尔伯特矩阵
H5 = hilbert_matrix(5);

% 生成 5 阶帕斯卡矩阵
P5 = pascal_matrix(5);

% 计算希尔伯特矩阵的行列式值 Hh
Hh = det(H5);

% 计算帕斯卡矩阵的行列式值 Hp
Hp = det(P5);

% 计算希尔伯特矩阵的条件数 Th
Th = cond(H5);

% 计算帕斯卡矩阵的条件数 Tp
Tp = cond(P5);

% 显示结果
disp('5阶希尔伯特矩阵的行列式值 Hh：');
disp(Hh);

disp('5阶帕斯卡矩阵的行列式值 Hp：');
disp(Hp);

disp('5阶希尔伯特矩阵的条件数 Th：');
disp(Th);

disp('5阶帕斯卡矩阵的条件数 Tp：');
disp(Tp);

% 判断哪个矩阵性能更好（条件数越小，性能越好）
if Th < Tp
    disp('希尔伯特矩阵性能更好（条件数较小）。');
else
    disp('帕斯卡矩阵性能更好（条件数较小）。');
end

% 定义希尔伯特矩阵函数
function H = hilbert_matrix(n)
    H = zeros(n); % 初始化一个 n×n 的零矩阵
    for i = 1:n
        for j = 1:n
            H(i,j) = 1 / (i + j - 1); % 填充矩阵元素
        end
    end
end

% 定义帕斯卡矩阵函数
function P = pascal_matrix(n)
    P = zeros(n); % 初始化一个 n×n 的零矩阵
    for i = 1:n
        for j = 1:n
            P(i,j) = nchoosek(i + j - 2, j - 1); % 填充矩阵元素（二项式系数）
        end
    end
end

