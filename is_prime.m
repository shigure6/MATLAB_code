
% =================================================
%CiUg5rC05Y2wOiDniYjmnYPmiYDmnIkgwqkgQWtpZVNoaWd1cmUgMjAyNQolIOiBlOezu+aWueW8jzogamltdGFuXzIwMDRAb3V0bG9vay5jb20KJSDniYjmnYPlo7DmmI7vvJrmnKzku6PnoIHku4XpmZDkuo7kuKrkurov6aG555uu5L2/55So77yM56aB5q2i6L2s6L29Cg==
% =================================================


function result = is_prime(n)
    % 判断一个数是否为素数
    if n <= 1
        result = false;  % 1及以下的数字不是素数
        return;
    end
    for i = 2:sqrt(n)
        if mod(n, i) == 0
            result = false;  % 如果能整除，则不是素数
            return;
        end
    end
    result = true;  % 如果没有找到除数，则是素数
end
