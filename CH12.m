%%%%% 異質陣列

%%% 建立異質陣列 

% Example 1

A(1,1) = {'This is the first cell.'};
A(1,2) = {[5+j*6 , 4+j*5]};
A(2,1) = {[1 2 3; 4 5 6; 7 8 9]};
A(2,2) = {{'Tim'; 'Chris'}}

% Example 2

A{1,1} = 'this is the first cell.';
A{1,2} = [5+j*6, 4+j*5];
A{2,1} = [1 2 3; 4 5 6; 7 8 9];
A{2,2} = {'Tim'; 'Chris'}

% Example 3

A = {'James Bond', [1 2;3 4;5 6]; pi, magic(5)}
B = {rand(3), randperm(4); eps, 'NTU'}
C = [A B]			% 將異質陣列 A 及 B 左右並排

% Example 4

A{1,1} = 'this is the first cell.';
A{1,2} = [5+j*6, 4+j*5];
A{2,1} = [1 2 3; 4 5 6; 7 8 9];
A{2,2} = {'Tim'; 'Chris'};
cellplot(A)	% 以圖形的方式顯示異質陣列 A 的內部資料型態

% Example 5

A{1,1} = 'this is the first cell.';
A{1,2} = [5+j*6, 4+j*5];
A{2,1} = [1 2 3; 4 5 6; 7 8 9];
A{2,2} = {'Tim'; 'Chris'};
celldisp(A)			% 顯示異質陣列 A 各個構成元素的實際內容

% Example 6

A = {'James Bond', [1 2;3 4;5 6]; pi, magic(5)};
A{:}	% 顯示異質陣列 A 的全部構成元素

%%% 異質陣列的內容取用

% Example 7

B = {'James Bond', [1 2;3 4;5 6]; pi, magic(5)};	% 先建立一個異質陣列 B
F = B{1,2}		% 取用異質陣列 B 的第 1 橫列、第 2 直行的元素      
G = B{1,2}(3,1)		% 若要取用異值陣列的元素的內部構成單位，可以先用  Content Indexing 的方法，再直接加上一般矩陣的索引法

% Example 8

B = {'James Bond', [1 2;3 4;5 6]; pi, magic(5)}		% 先建立一個異質陣列 B
H = B(2, :)		% 將 B 設定成 B 的第二橫列
B(:, 2) = []	% 刪除異質陣列 B 的第二直行所有元素

% Example 9

F = {[2 3 5], [1 3 4], 'Timmy', 'Annie'};
plot(F{1:2});		% F{1:2} 指向 「[2 3 5], [1 3 4]」，因此 plot(F{1:2}) 就全等於 plot([2 3 5], [1 3 4])。

% Example 10

[D{1:2}] = max(rand(5));
celldisp(D);

%%% 其他相關指令

% Example 11

B = {'James Bond', [1 2;3 4;5 6]; pi, magic(5)}
M = B(:)
N = reshape(B,1,4)

% Example 12

E = cell(4, 3)		% 事先配置一個 4×3 空的異質陣列

% Example 13

C = {[1,2,3]; 'This is a test.'};
iscell(C)

% Example 14

A = [1 2 3;4 5 6];	% 建立的一個數值陣列 A
C = num2cell(A)		% 將數值陣列 A 轉成異質陣列 C

% Example 15

A = [1 2 3;4 5 6];		% 建立的一個數值陣列 A
D = num2cell(A, 1)		% 1 代表「橫列被切割」

% Example 16

A = [1 2 3;4 5 6];		% 建立的一個數值陣列 A
E = num2cell(A, 2)		% 2 代表「直行被切割」

% Example 17

X = [1 2 3 4; 5 6 7 8; 9 10 11 12]
C = mat2cell(X,[1 2],[1 3])

% Example 18

student.name = 'Tim';
student.age = 8;
sCell = struct2cell(student)

% Example 19

S = struct('name',{'Tim','Annie'},'age', {8,5});  
[sCell{1:length(S)}] = deal(S.name)

% Example 20

dirInfo = dir(matlabroot);			% 列出 MATLAB 的根目錄的各種資訊
n = length(dirInfo);				% 檔案及目錄的個數
[fileAndDir{1:n}] = deal(dirInfo.name);		% fileAndDir 包含各檔案及目錄名稱
dirs = fileAndDir([dirInfo.isdir])		% dirs 包含各目錄名稱