
% =================================================
%CiUg5rC05Y2wOiDniYjmnYPmiYDmnIkgwqkgQWtpZVNoaWd1cmUgMjAyNQolIOiBlOezu+aWueW8jzogamltdGFuXzIwMDRAb3V0bG9vay5jb20KJSDniYjmnYPlo7DmmI7vvJrmnKzku6PnoIHku4XpmZDkuo7kuKrkurov6aG555uu5L2/55So77yM56aB5q2i6L2s6L29Cg==
% =================================================


function y = fx(x)
    % 计算 f(x) = 1 / ((x-2)^2 + 0.1) + 1 / ((x-3)^4 + 0.01)
    y = 1 ./ ((x - 2).^2 + 0.1) + 1 ./ ((x - 3).^4 + 0.01);
end
