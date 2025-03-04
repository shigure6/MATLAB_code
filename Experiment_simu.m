% =================================================
%CiUg5rC05Y2wOiDniYjmnYPmiYDmnIkgwqkgQWtpZVNoaWd1cmUgMjAyNQolIOiBlOezu+aWueW8jzogamltdGFuXzIwMDRAb3V0bG9vay5jb20KJSDniYjmnYPlo7DmmI7vvJrmnKzku6PnoIHku4XpmZDkuo7kuKrkurov6aG555uu5L2/55So77yM56aB5q2i6L2s6L29Cg==
% =================================================


% 设置仿真选项
out = sim('Experiment_9.slx', 'SaveOutput', 'on', 'OutputSaveName', 'out');

% 获取 timeseries 数据
ts = out.ScopeData{1}.Values; 

% 提取时间和响应数据
time = ts.Time; 
response = ts.Data;

% 显示时间和响应数据的大小
disp(size(time));
disp(size(response));

% 确保时间和响应数据的长度一致
if length(time) == length(response)
    % 继续进行分析，计算超调量、上升时间、峰值时间和稳态误差
    steady_state_value = response(end);  % 最终值，假设为稳态值
    peak_value = max(response);  % 最大值
    overshoot = (peak_value - steady_state_value) / steady_state_value * 100;

    % 上升时间：响应值从10%到90%稳态值的时间
    rise_start = find(response >= 0.1 * steady_state_value, 1, 'first');
    rise_end = find(response >= 0.9 * steady_state_value, 1, 'first');
    rise_time = time(rise_end) - time(rise_start);

    % 峰值时间：最大值对应的时间
    peak_time = time(find(response == peak_value, 1));

    % 稳态误差：最终值与期望值的差异，假设期望值为1（单位阶跃输入）
    desired_value = 1;
    steady_state_error = abs(steady_state_value - desired_value);

    % 显示结果
    fprintf('超调量: %.2f%%\n', overshoot);
    fprintf('上升时间: %.2f秒\n', rise_time);
    fprintf('峰值时间: %.2f秒\n', peak_time);
    fprintf('稳态误差: %.4f\n', steady_state_error);
else
    disp('时间和响应数据的长度不一致！');
end
