%%%%% �x�}���B�z�P�B��

%%% �x�}�����ީΤU�� 

% Example 1

A = [4 10 1 6 2; 8 2 9 4 7; 7 5  7 1 5; 0 3 4 5 4; 23 13 13 0 3];
A(2,3) - A(12)

% Example 2

A = [4 10 1 6 2; 8 2 9 4 7; 7 5  7 1 5; 0 3 4 5 4; 23 13 13 0 3];
B = A(4:5, 2:3)
B = A([9 14; 10 15])

% Example 3

A = [4 10 1 6 2; 8 2 9 4 7; 7 5  7 1 5; 0 3 4 5 4; 23 13 13 0 3];
B = A(1:5, 5)       % B = A(1:end, end)
B = A(:, 5)         % B = A(:, end)

% Example 4

A = [4 10 1 6 2; 8 2 9 4 7; 7 5  7 1 5; 0 3 4 5 4; 23 13 13 0 3];
A(2, :) = []		% �R�� A �x�}���ĤG�C

% Example 5

A = [4 10 1 6 2; 7 5  7 1 5; 0 3 4 5 4; 23 13 13 0 3];
A(:, [2 4 5]) = []	% �R�� A �x�}���ĤG�B�|�B������

% Example 6

A = [4 1; 7 7; 0 4; 23 13];
B = [A 1./A]		% 1./A �O�x�} A �C�Ӥ������˼�

% Example 7

B = [0 1 2 3; 2 3 4 5; 5 6 7 8; 7 8 9 0];
d = diag(B)		% ���X�x�} B ���﨤�u����

% Example 8

B = [0 1 2 3; 2 3 4 5; 5 6 7 8; 7 8 9 0];
C = reshape(B, 2, 8)		% �N�x�} B �Ʀ� 2��8 ���s�x�} C

%%% �S��γ~�x�}

% Example 9

H=hilb(4)

% Example 10

M = magic(5)      
fprintf('�����`�M�G'); sum(M)			% M ���C�@�Ӫ����`�M
fprintf('��C�`�M�G'); sum(M, 2)			% M ���C�@�Ӿ�C�`�M
fprintf('�﨤�u�`�M�G'); sum(diag(M))		% M ���﨤�u�`�M
fprintf('�Ϲ﨤�u�`�M�G'); sum(diag(fliplr(M)))	% M ���Ϲ﨤�u�`�M

% Example 11

x1 = rand(10000, 1);
x2 = randn(10000, 1);
subplot(2,1,1); hist(x1, 40); title('���ä��G');
subplot(2,1,2); hist(x2, 40); title('�������G');
set(findobj(gcf, 'type', 'patch'), 'EdgeColor', 'w');	% ����u���զ�

%%% �x�}���ƾǹB�� 

% Example 12

A = [12 34 56 20];
B = [1 3 2 4];
C = A + B

% Example 13

A = [1; 2];  
B = [3, 4, 5];  
C = A*B   

% Example 14

A = magic(3);
B = A^2

% Example 15

A = [12; 45];
B = [2; 3];
C = A.*B				% �`�N�u*�v�e�����y�I
D = A./B				% �`�N�u/�v�e�����y�I
E = A.^2				% �`�N�u^�v�e�����y�I

% Example 16

i = sqrt(-1);			% �����
z = [1+i, 2; 3, 1+2i];
w = z'				% �@�m��m�]�`�N z �᭱����޸��^

% Example 17

i = sqrt(-1);			% �����
z = [1+i, 2; 3, 1+2i];
w = z.'				% �����m�]�`�N z �᭱���y�I�γ�޸��^

% Example 18

a = [3 4];
x = norm(a, 1)
y = norm(a, 2)
z = norm(a, inf)

% Example 19

A = [1 2 3; 4 5 6; 7 8 9];
norm(A, 2)

% Example 20

x = [3 5 8 1 4];
[sorted, index] = sort(x)	% ��x�} x �������i��Ƨ�

% Example 21

x = magic(5);
[colMax, colMaxIndex] = max(x)

% Example 22

x = magic(5);
[colMax, colMaxIndex] = max(x);
[maxValue, maxIndex] = max(colMax);
fprintf('Max value = x(%d, %d) = %d\n', ...
	colMaxIndex(maxIndex), maxIndex, maxValue);

%%% �x�}��������ƫ��A

% Example 23

clear all			% �M���Ҧ��u�@�Ŷ����ܼ�
x_double = magic(10);
x_single = single(x_double);
x32 = uint32(x_double);
x16 = uint16(x_double);
x8 = uint8(x_double);
whos

% Example 24

fprintf('uint8(300) ='); disp(uint8(300));					% uint8 ���̤j�Ȭ� 255
fprintf('int8(-500) ='); disp(int8(-500));					% int8 ���̤p�Ȭ� -128
