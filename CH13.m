%%%%% ���c�}�C

%%% ���c�}�C���إ�

% Example 1

clear student			% �M�� student �ܼ�
student.name = '�x�P��';	% �[�J name ���
student.id = 'mr871912';	% �[�J id ���
student.scores = [58, 75, 62];	% �[�J scores ���
student				% �q�X���G

% Example 2

clear student			% �M�� student �ܼ�
student.name = '�x�P��';	% �[�J name ���
student.id = 'mr871912';	% �[�J id ���
student.scores = [58, 75, 62];	% �[�J scores ���
% �H�U�O�s�[�J���ĤG�����
student(2).name = '�����H';
student(2).id = 'mr872510';
student(2).scores = [25, 36, 92];
student				% �q�X���G

% Example 3

student = struct('name', {'�i�x��', '�i�x�w'}, 'scores', {[50 60], [60 70]});
student(1)		% ��� student(1)
student(2)		% ��� student(2)

% Example 4

student = struct('name', '�i�x�w', 'scores', {[50 60], [90 100]});
student(1)		% ��� student(1)
student(2)		% ��� student(2)

% Example 5

student = struct('name', {'�i�x��', '�i�x�w'}, 'scores', {[50 60], [60 70]});
student(2).course(1).title = 'Web Programming';
student(2).course(1).credits = 2;
student(2).course(2).title = 'Numerical Method';
student(2).course(2).credits = 3;
student(2).course

%%% ���ΤΧ��ܵ��c�}�C�����

% Example 6

clear student		% �M�� student �ܼ�
student(1) = struct('name', 'Banny', 'scores', [85,80,92,78]);
student(2) = struct('name', 'Joey', 'scores', [80,85,90,88]);
student(3) = struct('name', 'Betty', 'scores', [88,82,90,80]);
values = struct2cell(student)

clear student		% �M�� student �ܼ�
student(1) = struct('name', 'Banny', 'scores', [85,80,92,78]);
student(2) = struct('name', 'Joey', 'scores', [80,85,90,88]);
student(3) = struct('name', 'Betty', 'scores', [88,82,90,80]);
student(2).name='Alex';		% ���ܲĤG��ǥͪ��m�W
disp(student(2));			% ��ܲĤG��ǥͪ����
student(3).scores(2)=100;	% ���ܲĤT��ǥͪ��ĤG���p�Ҧ��Z
disp(student(3));			% ��ܲĤT��ǥͪ����

clear student		% �M�� student �ܼ�
student(1) = struct('name', 'Banny', 'scores', [85,80,92,78]);
student(2) = struct('name', 'Joey', 'scores', [80,85,90,88]);
student(3) = struct('name', 'Betty', 'scores', [88,82,90,80]);
score1 = cat(1, student.scores)		% 1 �N��W�U�ñƥH���ܾ�C������
score2 = cat(2, student.scores)		% 2 �N���k�ñƥH���ܪ��檺����

clear student		% �M�� student �ܼ�
student(1) = struct('name', 'Banny', 'scores', [85,80,92,78]);
student(2) = struct('name', 'Joey', 'scores', [80,85,90,88]);
student(3) = struct('name', 'Betty', 'scores', [88,82,90,80]);
scoreMat = cat(1, student.scores);		% 1 �N��W�U�ñƥH���ܾ�C������
average1=mean(scoreMat);
fprintf('�|���p�Ҫ����Z�����G'); disp(average1);
average2=mean(scoreMat');
fprintf('�T��ǥͪ��p�ҥ����G'); disp(average2);

clear student		% �M�� student �ܼ�
student(1) = struct('name', 'Banny', 'scores', [85,80,92,78]);
student(2) = struct('name', 'Joey', 'scores', [80,85,90,88]);
student(3) = struct('name', 'Betty', 'scores', [88,82,90,80]);
allScores = [student.scores]
allNames = {student.name}

% Example 7

clear student		% �M�� student �ܼ�
student(1) = struct('name', '�i�x��', 'scores', [85, 80]);
student(2) = struct('name', '��ѻT', 'scores', [80, 85]);
student(3) = struct('name', '������', 'scores', [88, 82]);
for i = 1:length(student)	% �C�L�X�C�Ӿǥͪ��W�r  
	fprintf ('student %g: %s\n', i, student(i).name);     
end  

score2 = getfield(student, {2}, 'scores', {1})  % score3 = student(2).scores(1);
student2 = setfield(student, {2}, 'scores', {1}, 75);   % student(2).scores(1)=75; 

% Example 8

myStruct = struct('name', {'Tim', 'Annie'}, 'age', {10, 13});  
[myStruct.name] = deal('Roger', 'Jack');  
fprintf('myStruct(1).name = %s\n', myStruct(1).name);
fprintf('myStruct(2).name = %s\n', myStruct(2).name);

%%% ���ΤΧ��ܵ��c�}�C�����

% Example 9

student = struct('name', 'Roland', 'scores', [80, 90]);
allFields = fieldnames(student)

% Example 10

clear student		% �M�� student �ܼ�
student = struct('name', 'Roland', 'scores', [80, 90]);
student(2).age = 20;	% �[�J�s���
student(1)		% ��� student(1)
student(2)		% ��� student(2)

% Example 11

student = struct('name', 'Roland', 'scores', [80, 90])
student2 = rmfield(student, 'scores')	% �R�� scores ���

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
s(1)			% �L�X�Ĥ@�����
s(2)			% �L�X�ĤG�����

% Example 15

fields = {'name', 'age'};
values = {'Tim', 9; 'Annie', 6};
s = cell2struct(values, fields, 1);
s(1)			% �L�X�Ĥ@�����
s(2)			% �L�X�ĤG�����

% Example 16

dirinfo = dir(matlabroot)	% �r���ܼ� matlabroot �N�� MATLAB �ڥؿ�
