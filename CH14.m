%%%%% MATLAB的運算元

%%% 數學運算元

% Example 1

a = [1 2; 3 4];
b = a+1
c = 1./a

%%% 關係運算元 

% Example 2

a = [1 2; 3 4];
b = [1 3; 2 4];
c = a>b

% Example 3

a = [1 2; 3 4];
c = a>2

% Example 4

a = [10 20; 30 40];
b = [10 30; 20 40];
c = a>=b;
d = a(c)

% Example 5

x = [0 1 2; 0 0 3];
index = find(x)

% Example 6

x = magic(3);
[idx1, idx2] = find(x>5)

% Example 7

x = magic(5);
x(find(7<x & x<11))

%%% 邏輯運算元

% Example 8

a = [1 2 0 3 4 2 0];
b = [0 2 3 5 4 0 0];
andResult = a & b	% AND 運算
orResult = a | b	% OR 運算
notResult = ~a		% NOT 運算

% Example 9

a = [0 1 2 3];
result1 = all(a)
retult2 = any(a)
result3 = any(a<0)

% Example 10

a = [1 2 3; 4 5 6];
output = all(a>2)

%%% 位元運算元

% Example 11

bitor(10, 4)
bitshift(18, 1)    

%%% 集合運算元

% Example 12

x = [1 2 3 4 5 6];
y = [1 1 5 5 9 9 9];
union_result = union(x, y)		% 聯集
intersect_result = intersect(x, y)	% 交集
setdiff_result = setdiff(x, y)		% 差集
setxor_result = setxor(x, y)		% XOR 運算
setuniq_result = unique(y)		% 取相異元素
ismember_result = ismember(9, y)	% 元素 9 是否屬於集合 y
