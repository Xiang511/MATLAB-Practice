%%%%% ����}�C

%%% �إ߲���}�C 

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
C = [A B]			% �N����}�C A �� B ���k�ñ�

% Example 4

A{1,1} = 'this is the first cell.';
A{1,2} = [5+j*6, 4+j*5];
A{2,1} = [1 2 3; 4 5 6; 7 8 9];
A{2,2} = {'Tim'; 'Chris'};
cellplot(A)	% �H�ϧΪ��覡��ܲ���}�C A ��������ƫ��A

% Example 5

A{1,1} = 'this is the first cell.';
A{1,2} = [5+j*6, 4+j*5];
A{2,1} = [1 2 3; 4 5 6; 7 8 9];
A{2,2} = {'Tim'; 'Chris'};
celldisp(A)			% ��ܲ���}�C A �U�Ӻc����������ڤ��e

% Example 6

A = {'James Bond', [1 2;3 4;5 6]; pi, magic(5)};
A{:}	% ��ܲ���}�C A �������c������

%%% ����}�C�����e����

% Example 7

B = {'James Bond', [1 2;3 4;5 6]; pi, magic(5)};	% ���إߤ@�Ӳ���}�C B
F = B{1,2}		% ���β���}�C B ���� 1 ��C�B�� 2 ���檺����      
G = B{1,2}(3,1)		% �Y�n���β��Ȱ}�C�������������c�����A�i�H����  Content Indexing ����k�A�A�����[�W�@��x�}�����ުk

% Example 8

B = {'James Bond', [1 2;3 4;5 6]; pi, magic(5)}		% ���إߤ@�Ӳ���}�C B
H = B(2, :)		% �N B �]�w�� B ���ĤG��C
B(:, 2) = []	% �R������}�C B ���ĤG����Ҧ�����

% Example 9

F = {[2 3 5], [1 3 4], 'Timmy', 'Annie'};
plot(F{1:2});		% F{1:2} ���V �u[2 3 5], [1 3 4]�v�A�]�� plot(F{1:2}) �N������ plot([2 3 5], [1 3 4])�C

% Example 10

[D{1:2}] = max(rand(5));
celldisp(D);

%%% ��L�������O

% Example 11

B = {'James Bond', [1 2;3 4;5 6]; pi, magic(5)}
M = B(:)
N = reshape(B,1,4)

% Example 12

E = cell(4, 3)		% �ƥ��t�m�@�� 4��3 �Ū�����}�C

% Example 13

C = {[1,2,3]; 'This is a test.'};
iscell(C)

% Example 14

A = [1 2 3;4 5 6];	% �إߪ��@�ӼƭȰ}�C A
C = num2cell(A)		% �N�ƭȰ}�C A �ন����}�C C

% Example 15

A = [1 2 3;4 5 6];		% �إߪ��@�ӼƭȰ}�C A
D = num2cell(A, 1)		% 1 �N��u��C�Q���Ρv

% Example 16

A = [1 2 3;4 5 6];		% �إߪ��@�ӼƭȰ}�C A
E = num2cell(A, 2)		% 2 �N��u����Q���Ρv

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

dirInfo = dir(matlabroot);			% �C�X MATLAB ���ڥؿ����U�ظ�T
n = length(dirInfo);				% �ɮפΥؿ����Ӽ�
[fileAndDir{1:n}] = deal(dirInfo.name);		% fileAndDir �]�t�U�ɮפΥؿ��W��
dirs = fileAndDir([dirInfo.isdir])		% dirs �]�t�U�ؿ��W��