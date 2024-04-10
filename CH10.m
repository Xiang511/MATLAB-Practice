%%%%% �r���P�r��

%%% �r���P�r�ꪺ�򥻷��� 

% Example 1

sentence = 'Draft beer, not people'	% �إߦr���ܼ� sentence

% Example 2

str1 = 'I like MATLAB,';		% �إߦr���ܼ� str1
str2 = ' JavaScript, and C++!';		% �إߦr���ܼ� str2
str3 = [str1 str2]			% ������C�ñƦr���ܼ� str1 �� str2�A
					% �H�إߤ@�ӷs�r���ܼ� str3
                    
% Example 3
    
sentence = 'I''ve got a date!'	% ���Сu'�v���ϥ�   

% Example 4

sentence = 'I''ve got a date!';
length(sentence)	% �p��r���ܼ� sentence ������     

% Example 5

sentence = 'I''ve got a date!';
sentenceAscii = double(sentence)	% �˵� sentence �� ASCII �X     

% Example 6

sentence = 'I''ve got a date!';
sentenceAscii = double(sentence);
sentence2 = char(sentenceAscii)		% �N ASCII �X��^�r��Φ�    

% Example 7

sentence = 'I''ve got a date!';
whos sentence	% �˵��u�@�Ŷ����ܼ� sentence ���ΰO����j�p


% Example 8

chinese = '����ơA���鲦';
abs(chinese)	% ���礤�夺�X

% Example 9

chinese = '����ơA���鲦';  
x = chinese+1

% Example 10

str = 'x = [1 2 3]; y = x.^2';  
eval(str)

% Example 11

clear all		                   % �M���Ҧ��ܼ�
for i = 3:6    
	eval(['x', int2str(i) , '= magic(' , int2str(i) , ') ; ']);  
end  
whos x*

% Example 12

chinese = '����ơA���鲦';
out1 = class(chinese)	% out1 ���ȬO�^�ǭ� "char"�A�N���ܼ� chinese �O�r���ܼ�
x = chinese+1;
out2 = ischar(x)	% out2 ���ȬO 0�A�N���ܼ� x ���O�@�Ӧr���ܼ�

%%% �@���ܼƨ��x�s�h�Ӧr�� 

% Example 13

departments = ['ee  '; 'cs  '; 'econ']	% �`�N�u[]�v�B�u;�v�Ϊťզr�����ϥ�

% Example 14

departments = char('ee', 'cs', 'econ')	% �`�N�u()�v�Ρu,�v���ϥ�

% Example 15

departments = char('ee', 'cs', 'econ');
dept1 = departments(1,:);	% (1,:)�N��Ĥ@�C������  
dept2 = deblank(dept1);		% �ϥ� deblank ���O�Ӳ����������ťզr��   	
len1 = length(dept1)		% ����ܼ� dept1 ������   
len2 = length(dept2)		% ����ܼ� dept2 ������

% Example 16

cellData = {'ee', 'cs', 'econ'};	% �H����}�C celldata ���x�s�h�Ӧr��
dept = cellData{3}			% �L�X�ĤT�Ӧr��]�����ϥΤj�A���^

% Example 17

departments = char('ee', 'cs', 'econ');
cellData = cellstr(departments);
leng = length(cellData{2})	% ��ܲ���}�C cellData �ĤG�Ӥ�������

% Example 18

dept1 = char('ee', 'cs', 'econ');	% dept1 �O�@�Ӧr���}�C
cellData = cellstr(dept1);		% �N dept1 �ন�@�Ӳ��Ȱ}�C cellData
dept2 = char(cellData);			% �N cellData �ഫ���r���}�C dept2
isequal(dept1, dept2)			% ���� dept1 �M dept2 �O�_�۵�

%%% �r�ꪺ����B�M��B�N���B���ѻP���X

% Example 19

str1 = 'today';  
str2 = 'tomorrow';  
str3 = 'today';  
out1 = strcmp(str1, str2)	% �����r�� str1 �M str2
out2 = strcmp(str1, str3)	% �����r�� str1 �M str3

% Example 20

str1 = 'today';  
str2 = 'tomorrow';  
strncmp(str1, str2, 2)	% ��� str1 �� str2 ��r�ꪺ�e 2 �Ӧr��

% Example 21

A = {'�x�_', '�x��', '����'};	% �إߦr�겧��}�C A  
B = {'�x�_', '�x�n', '�Ὤ'};	% �إߦr�겧��}�C B  
out1 = strcmp(A, B)		% ����r�겧��}�C A �P B ���C�Ӥ����O�_�ۦP
out2 = strncmp(A, B, 1)		% ����r�겧��}�C A �P B ���C�Ӥ��������Ĥ@�Ӧr���O�_�ۦP

% Example 22

string = '�ڳ̳��w���B�ʬO���y';  
pattern = '���y';  
position = findstr(string, pattern)

% Example 23

string = '�ڳ̳��w���B�ʬO���y';
pattern = '���y';
pattern2 = '���y';
newString = strrep(string, pattern, pattern2)

% Example 24

input_string = 'ee cs econ stat me';  
remainder = input_string;  
parsed = '';		% �إߤ@�Ŧr���}�C  
while (any(remainder))  
	[chopped, remainder] = strtok(remainder);  
	parsed = strvcat(parsed, chopped);  
end  
parsed

% Example 25

fid = fopen('big5.txt');	
line = fgetl(fid)		% Ū���@�C�ɮפ��e�æL�X  
fclose(fid);
leng=length(line)		% ��ܦr���ܼƪ���

% Example 26

fid = fopen('big5.txt');	
line = fgetl(fid);		% Ū���@�C�ɮפ��e
fclose(fid);
double(line)			% ��ܦr�ꤺ�X

% Example 27

fid = fopen('big5.txt');
line = fgetl(fid);			% Ū���@�C�ɮפ��e
fclose(fid);
line2 = native2unicode(line, 'big5')	% �ϥ� native2unicode �N�Q��}������r���X�b�@�_
leng = length(line2)			% ��ܦr�����

%%% �r��B�ƭȻP�}�C���ഫ

% Example 28

x = 13462;
y = int2str(x)	% �N��ƫ��A������ഫ���r����
length(y)	% �˵� y ������

% Example 29

str1 = num2str(pi)		% ����ର�r��A�w�]���Ħ�ƬO 4 ��
str2 = num2str(pi, 10)	% �W�[�p�ƥH�U���Ħ�ƨ� 10 ��

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
B = mat2str(A)		% �N�x�} A �ন�r�� B   
A2 = eval(B);		% �A�N�r�� B ��^�x�} A2
isequal(A, A2)		% ���� A �M A2 �O�_�۵�

% Example 33

str = '��P�v';
newString = sprintf('�u%s�v�O %g', str, pi)

% Example 34

str = '2 4.7 5.2';
mat = sscanf(str, '%f')
