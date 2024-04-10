%%%%% 程式流程控制

%%% 迴圈指令

% Example 1

x = zeros(1,6);		% 變數 x 是一個 1×6 大小的零矩陣  
for i = 1:6
	x(i) = 1/i;
end
disp(x)			% 顯示 x
format rat		% 使用分數形式來顯式數值
disp(x)			% 顯示 分數形式的 x

% Example 2

h = zeros(6);	% 變數 x 是一個 6×6 大小的零矩陣
for i = 1:6
	for j = 1:6
		h(i,j) = 1/(i+j-1);
	end
end
format rat		% 使用分數形式來顯式所有數值
h			% 顯示 h

% Example 3

format short			% 回到預設形式來顯式所有數值
h=magic(5);
for i = h
	disp(norm(i)^2);     	% 印出每一行的平方和
end

% Example 4

for i = 1:1000
	if prod(1:i) > 1e100
		fprintf('%g! = %e > 1e100\n', i, prod(1:i));
		break;			% 跳出 for 迴圈
	end
end

% Example 5

x = [1 -2 3 -4 5];
posTotal = 0;
for i = 1:length(x)
	if x(i)<0, continue; end	% 若 x(i) 小於零，直接跳到此迴圈的下一個輪迴
	posTotal=posTotal+x(i);
end
posTotal	% 顯示 posTotal 的值

% Example 6

x = zeros(1,6);
i = 1;
while i<=6
	x(i) = 1/i;
	i = i+1;
end
x			% 顯示 x

% Example 7

n = 1;
while prod(1:n) < 1e100
	n = n+1
end
fprintf('%g! = %e > 1e100\n', n, prod(1:n));

%%% 條件指令

% Example 8

x = 0/0;
if isnan(x)
	disp('Warning: NaN detected!');
end

% Example 9

y = [0 3 4 1 6];
for i = 1:length(y)
	if rem(y(i), 2)==0
		fprintf('y(%g) = %g is even.\n', i, y(i));
	else
		fprintf('y(%g) = %g is odd.\n', i, y(i));
	end
end

% Example 10

y = [3 4 5 9 2];
for i = 1:length(y)
	if rem(y(i),3)==0
		fprintf('y(%g)=%g is 3n.\n', i, y(i));
	elseif rem(y(i), 3)==1
		fprintf('y(%g)=%g is 3n+1.\n', i , y(i));
	else
		fprintf('y(%g)=%g is 3n+2.\n', i , y(i));
	end
end

% Example 11

for month = 1:12
	switch month
		case {3,4,5}
			season = 'Spring';
		case {6,7,8}
			season = 'Summer';
		case {9,10,11}
			season = 'Autumn';
		case {12,1,2}
			season = 'Winter';
	end
	fprintf('Month %d ===> %s.\n', month, season);
end

% Example 12

month = {'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Dec', 'Nov', 'Dec'};
for i = 1:length(month)
	switch month{i}
		case {'Mar','Apr','May'}
			season = 'Spring';
		case {'Jun','Jul','Aug'}
			season = 'Summer';
		case {'Sep','Oct','Nov'}
			season = 'Autumn';
		case {'Dec','Jan','Feb'}
			season = 'Winter';
	end
	fprintf('%s is %s.\n', month{i}, season);
end
