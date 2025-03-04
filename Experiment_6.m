
% =================================================
%CiUg5rC05Y2wOiDniYjmnYPmiYDmnIkgwqkgQWtpZVNoaWd1cmUgMjAyNQolIOiBlOezu+aWueW8jzogamltdGFuXzIwMDRAb3V0bG9vay5jb20KJSDniYjmnYPlo7DmmI7vvJrmnKzku6PnoIHku4XpmZDkuo7kuKrkurov6aG555uu5L2/55So77yM56aB5q2i6L2s6L29Cg==
% =================================================

%采用调用函数的形式完成
% 输入员工编号和工作时数
employee_id = input('请输入员工编号: ');
hours = input('请输入该员工工作时数: ');

% 调用计算工资的函数
salary = calculate_salary(hours);

% 输出工资
fprintf('员工 %d 的应发工资为: %.2f 元\n', employee_id, salary);

%%

% 输入月份并判断季节
month = input('请输入月份 (1-12): ');

switch month
    case {3, 4, 5}
        season = '春季';
    case {6, 7, 8}
        season = '夏季';
    case {9, 10, 11}
        season = '秋季';
    case {12, 1, 2}
        season = '冬季';
    otherwise
        season = '无效月份';
end

% 输出季节
disp(['该月份属于: ', season]);

%%

month = input('请输入月份（1-12）：'); % 输入月份

switch month
    case {3, 4, 5}
        disp('春季');
    case {6, 7, 8}
        disp('夏季');
    case {9, 10, 11}
        disp('秋季');
    case {12, 1, 2}
        disp('冬季');
    otherwise
        disp('输入无效，请输入1到12之间的数字');
end

%%

sum = 0;  % 初始化和
i = 1;    % 从1开始

for j = 1:50  % 由于最大值是99，循环 50 次足够
    sum = sum + i;  % 加上当前的奇数
    if sum > 1000
        break;  % 如果和超过 1000，跳出循环
    end
    i = i + 2;  % 下一个奇数
end

% 显示终止时的求和结果以及最后一位计算的整数值
disp(['终止时的求和结果: ', num2str(sum)]);
disp(['最后一位计算的整数值: ', num2str(i - 2)]);

%%

K = 0;  % 初始化总和
for i = 0:63  % 循环从 0 到 63
    K = K + 2^i;  % 每次将 2^i 加到总和 K 中
end

disp(['求和结果 K = ', num2str(K)]);

