%%%%% 字元與字串

%%% 字元與字串的基本概念 

% Example 1

sentence = 'Draft beer, not people'	% 建立字串變數 sentence

% Example 2

str1 = 'I like MATLAB,';		% 建立字串變數 str1
str2 = ' JavaScript, and C++!';		% 建立字串變數 str2
str3 = [str1 str2]			% 直接橫列並排字串變數 str1 及 str2，
					% 以建立一個新字串變數 str3
                    
% Example 3
    
sentence = 'I''ve got a date!'	% 重覆「'」的使用   

% Example 4

sentence = 'I''ve got a date!';
length(sentence)	% 計算字串變數 sentence 的長度     

% Example 5

sentence = 'I''ve got a date!';
sentenceAscii = double(sentence)	% 檢視 sentence 的 ASCII 碼     

% Example 6

sentence = 'I''ve got a date!';
sentenceAscii = double(sentence);
sentence2 = char(sentenceAscii)		% 將 ASCII 碼轉回字串形式    

% Example 7

sentence = 'I''ve got a date!';
whos sentence	% 檢視工作空間內變數 sentence 佔用記憶體大小


% Example 8

chinese = '今日事，今日畢';
abs(chinese)	% 檢驗中文內碼

% Example 9

chinese = '今日事，今日畢';  
x = chinese+1

% Example 10

str = 'x = [1 2 3]; y = x.^2';  
eval(str)

% Example 11

clear all		                   % 清除所有變數
for i = 3:6    
	eval(['x', int2str(i) , '= magic(' , int2str(i) , ') ; ']);  
end  
whos x*

% Example 12

chinese = '今日事，今日畢';
out1 = class(chinese)	% out1 的值是回傳值 "char"，代表變數 chinese 是字串變數
x = chinese+1;
out2 = ischar(x)	% out2 的值是 0，代表變數 x 不是一個字串變數

%%% 一個變數來儲存多個字串 

% Example 13

departments = ['ee  '; 'cs  '; 'econ']	% 注意「[]」、「;」及空白字元的使用

% Example 14

departments = char('ee', 'cs', 'econ')	% 注意「()」及「,」的使用

% Example 15

departments = char('ee', 'cs', 'econ');
dept1 = departments(1,:);	% (1,:)代表第一列的元素  
dept2 = deblank(dept1);		% 使用 deblank 指令來移除尾部的空白字元   	
len1 = length(dept1)		% 顯示變數 dept1 的長度   
len2 = length(dept2)		% 顯示變數 dept2 的長度

% Example 16

cellData = {'ee', 'cs', 'econ'};	% 以異質陣列 celldata 來儲存多個字串
dept = cellData{3}			% 印出第三個字串（必須使用大括號）

% Example 17

departments = char('ee', 'cs', 'econ');
cellData = cellstr(departments);
leng = length(cellData{2})	% 顯示異質陣列 cellData 第二個元素長度

% Example 18

dept1 = char('ee', 'cs', 'econ');	% dept1 是一個字元陣列
cellData = cellstr(dept1);		% 將 dept1 轉成一個異值陣列 cellData
dept2 = char(cellData);			% 將 cellData 轉換成字元陣列 dept2
isequal(dept1, dept2)			% 測試 dept1 和 dept2 是否相等

%%% 字串的比較、尋找、代換、分解與結合

% Example 19

str1 = 'today';  
str2 = 'tomorrow';  
str3 = 'today';  
out1 = strcmp(str1, str2)	% 比較兩字串 str1 和 str2
out2 = strcmp(str1, str3)	% 比較兩字串 str1 和 str3

% Example 20

str1 = 'today';  
str2 = 'tomorrow';  
strncmp(str1, str2, 2)	% 比較 str1 及 str2 兩字串的前 2 個字元

% Example 21

A = {'台北', '台中', '高雄'};	% 建立字串異質陣列 A  
B = {'台北', '台南', '花蓮'};	% 建立字串異質陣列 B  
out1 = strcmp(A, B)		% 比較字串異質陣列 A 與 B 的每個元素是否相同
out2 = strncmp(A, B, 1)		% 比較字串異質陣列 A 與 B 的每個元素的的第一個字元是否相同

% Example 22

string = '我最喜歡的運動是網球';  
pattern = '網球';  
position = findstr(string, pattern)

% Example 23

string = '我最喜歡的運動是網球';
pattern = '網球';
pattern2 = '蝦球';
newString = strrep(string, pattern, pattern2)

% Example 24

input_string = 'ee cs econ stat me';  
remainder = input_string;  
parsed = '';		% 建立一空字元陣列  
while (any(remainder))  
	[chopped, remainder] = strtok(remainder);  
	parsed = strvcat(parsed, chopped);  
end  
parsed

% Example 25

fid = fopen('big5.txt');	
line = fgetl(fid)		% 讀取一列檔案內容並印出  
fclose(fid);
leng=length(line)		% 顯示字串變數長度

% Example 26

fid = fopen('big5.txt');	
line = fgetl(fid);		% 讀取一列檔案內容
fclose(fid);
double(line)			% 顯示字串內碼

% Example 27

fid = fopen('big5.txt');
line = fgetl(fid);			% 讀取一列檔案內容
fclose(fid);
line2 = native2unicode(line, 'big5')	% 使用 native2unicode 將被拆開的中文字結合在一起
leng = length(line2)			% 顯示字串長度

%%% 字串、數值與陣列的轉換

% Example 28

x = 13462;
y = int2str(x)	% 將整數型態的資料轉換成字串資料
length(y)	% 檢視 y 的長度

% Example 29

str1 = num2str(pi)		% 實數轉為字串，預設有效位數是 4 位
str2 = num2str(pi, 10)	% 增加小數以下有效位數到 10 位

% Example 30

x = 0:0.1:2*pi;  
y = sin(x);  
plot(x,y)   
str = ['\leftarrow (', num2str(2.5), ', ', num2str(sin(2.5)),  ')'];   
text(2.5, sin(2.5), str)

% Example 31

x = 1026;
y = dec2hex(x)

% Example 32

A = [1 2 1; 3 5 6 ];  
B = mat2str(A)		% 將矩陣 A 轉成字串 B   
A2 = eval(B);		% 再將字串 B 轉回矩陣 A2
isequal(A, A2)		% 測試 A 和 A2 是否相等

% Example 33

str = '圓周率';
newString = sprintf('「%s」是 %g', str, pi)

% Example 34

str = '2 4.7 5.2';
mat = sscanf(str, '%f')
