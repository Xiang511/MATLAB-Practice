%%%%% 結構陣列

%%% 結構陣列的建立

% Example 1

clear student			% 清除 student 變數
student.name = '洪鵬翔';	% 加入 name 欄位
student.id = 'mr871912';	% 加入 id 欄位
student.scores = [58, 75, 62];	% 加入 scores 欄位
student				% 秀出結果

% Example 2

clear student			% 清除 student 變數
student.name = '洪鵬翔';	% 加入 name 欄位
student.id = 'mr871912';	% 加入 id 欄位
student.scores = [58, 75, 62];	% 加入 scores 欄位
% 以下是新加入的第二筆資料
student(2).name = '邱中人';
student(2).id = 'mr872510';
student(2).scores = [25, 36, 92];
student				% 秀出結果

% Example 3

student = struct('name', {'張庭碩', '張庭安'}, 'scores', {[50 60], [60 70]});
student(1)		% 顯示 student(1)
student(2)		% 顯示 student(2)

% Example 4

student = struct('name', '張庭安', 'scores', {[50 60], [90 100]});
student(1)		% 顯示 student(1)
student(2)		% 顯示 student(2)

% Example 5

student = struct('name', {'張庭碩', '張庭安'}, 'scores', {[50 60], [60 70]});
student(2).course(1).title = 'Web Programming';
student(2).course(1).credits = 2;
student(2).course(2).title = 'Numerical Method';
student(2).course(2).credits = 3;
student(2).course

%%% 取用及改變結構陣列的資料

% Example 6

clear student		% 清除 student 變數
student(1) = struct('name', 'Banny', 'scores', [85,80,92,78]);
student(2) = struct('name', 'Joey', 'scores', [80,85,90,88]);
student(3) = struct('name', 'Betty', 'scores', [88,82,90,80]);
values = struct2cell(student)

clear student		% 清除 student 變數
student(1) = struct('name', 'Banny', 'scores', [85,80,92,78]);
student(2) = struct('name', 'Joey', 'scores', [80,85,90,88]);
student(3) = struct('name', 'Betty', 'scores', [88,82,90,80]);
student(2).name='Alex';		% 改變第二位學生的姓名
disp(student(2));			% 顯示第二位學生的資料
student(3).scores(2)=100;	% 改變第三位學生的第二次小考成績
disp(student(3));			% 顯示第三位學生的資料

clear student		% 清除 student 變數
student(1) = struct('name', 'Banny', 'scores', [85,80,92,78]);
student(2) = struct('name', 'Joey', 'scores', [80,85,90,88]);
student(3) = struct('name', 'Betty', 'scores', [88,82,90,80]);
score1 = cat(1, student.scores)		% 1 代表上下並排以改變橫列的維度
score2 = cat(2, student.scores)		% 2 代表左右並排以改變直行的維度

clear student		% 清除 student 變數
student(1) = struct('name', 'Banny', 'scores', [85,80,92,78]);
student(2) = struct('name', 'Joey', 'scores', [80,85,90,88]);
student(3) = struct('name', 'Betty', 'scores', [88,82,90,80]);
scoreMat = cat(1, student.scores);		% 1 代表上下並排以改變橫列的維度
average1=mean(scoreMat);
fprintf('四次小考的全班平均：'); disp(average1);
average2=mean(scoreMat');
fprintf('三位學生的小考平均：'); disp(average2);

clear student		% 清除 student 變數
student(1) = struct('name', 'Banny', 'scores', [85,80,92,78]);
student(2) = struct('name', 'Joey', 'scores', [80,85,90,88]);
student(3) = struct('name', 'Betty', 'scores', [88,82,90,80]);
allScores = [student.scores]
allNames = {student.name}

% Example 7

clear student		% 清除 student 變數
student(1) = struct('name', '張庭碩', 'scores', [85, 80]);
student(2) = struct('name', '鍾書蓉', 'scores', [80, 85]);
student(3) = struct('name', '黃念中', 'scores', [88, 82]);
for i = 1:length(student)	% 列印出每個學生的名字  
	fprintf ('student %g: %s\n', i, student(i).name);     
end  

score2 = getfield(student, {2}, 'scores', {1})  % score3 = student(2).scores(1);
student2 = setfield(student, {2}, 'scores', {1}, 75);   % student(2).scores(1)=75; 

% Example 8

myStruct = struct('name', {'Tim', 'Annie'}, 'age', {10, 13});  
[myStruct.name] = deal('Roger', 'Jack');  
fprintf('myStruct(1).name = %s\n', myStruct(1).name);
fprintf('myStruct(2).name = %s\n', myStruct(2).name);

%%% 取用及改變結構陣列的欄位

% Example 9

student = struct('name', 'Roland', 'scores', [80, 90]);
allFields = fieldnames(student)

% Example 10

clear student		% 清除 student 變數
student = struct('name', 'Roland', 'scores', [80, 90]);
student(2).age = 20;	% 加入新欄位
student(1)		% 顯示 student(1)
student(2)		% 顯示 student(2)

% Example 11

student = struct('name', 'Roland', 'scores', [80, 90])
student2 = rmfield(student, 'scores')	% 刪除 scores 欄位

% Example 12

s = struct('name', {'Tim', 'Ann'}, 'scores', {[1 3 5 ],[2 4 6]});
isstruct(s)

% Example 13

s = struct('name', {'Tim', 'Ann'}, 'scores', {[1 3 5 ],[2 4 6]});
fprintf('isfield(s, ''name'') = %d\n', isfield(s, 'name'));
fprintf('isfield(s, ''height'') = %d\n', isfield(s, 'height'));

% Example 14

fields = {'name', 'age'};
values = {'Tim', 9; 'Annie', 6};
s = cell2struct(values, fields, 2);
s(1)			% 印出第一筆資料
s(2)			% 印出第二筆資料

% Example 15

fields = {'name', 'age'};
values = {'Tim', 9; 'Annie', 6};
s = cell2struct(values, fields, 1);
s(1)			% 印出第一筆資料
s(2)			% 印出第二筆資料

% Example 16

dirinfo = dir(matlabroot)	% 字串變數 matlabroot 代表 MATLAB 根目錄
