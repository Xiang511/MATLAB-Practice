%%%%% �S��ϧ�

%%% �����Ϥ�ø�s

% Example 1 

x = [1 3 4 5 2];
bar(x);

% Example 2

x = [2 3 4 5 7; 1 2 3 2 1];
bar(x);
 
% Example 3

x = [2 3 4 5 7; 1 2 3 2 1];
bar(x,'stack')

% Example 4

x = [2 3 4 5 7; 1 2 3 2 1];
bar3(x)

% Example 5

x = [2 3 4 5 7; 1 2 3 2 1];
bar3(x, 'group')

% Example 6

x = 1:6;					% ���  	
y = 35*rand(1, 6);  		% �ū׭ȡ]���]�O���� 0��35 ���üơ^
bar(x, y);  
xlabel('���');			% x �b��������r
ylabel('�����ū� (^{o}c)');	% y �b��������r
% �U�C���O�N x �b���ƥئr�令���
set(gca, 'xticklabel', {'�@��','�G��','�T��', '�|��', '����', '����'});

%%% ���n�Ϥ�ø�s

% Example 7

y = rand(10,3)*100;
x = 1:10;
area(x, y);
xlabel('Year');
ylabel('Count')

%%% ���ιϤ�ø�s

% Example 8

x = [2 3 5 4];
label={'�F','�n','��','�_'};
pie(x, label);

% Example 9

x = [0.21, 0.14, 0.38];
pie(x);

% Example 10

x = [2 3 5 4];
explode = [1 1 0 0];
pie(x, explode);

% Example 11

x = [2 3 5 4];
explode = [1 1 0 0];
label = {'�K��', '�L��', '�', '�V��'};
pie3(x, explode, label);

%%% �w�Y�Ϥ�ø�s

% Example 12

t = 0:0.2:4*pi;
y = cos(t).*exp(-t/5);
stem(t, y)

% Example 13

t = 0:0.2:4*pi;
y = cos(t).*exp(-t/5);
stem(t, y, 'fill');

% Example 14

theta = -pi:0.05:pi;
x = cos(theta);
y = sin(theta);
z = abs(cos(3*theta)).*exp(-abs(theta/2));
stem3(x, y, z);

%%% ����Ϥ�ø�s

% Example 15

t = 0:0.4:4*pi;
y = cos(t).*exp(-t/5);
stairs(t, y);

% Example 16

t = 0:0.4:4*pi;
y = cos(t).*exp(-t/5);
stairs(t, y);
hold on				% �O�d�¹ϧ�
stem(t, y);			% �|�W�w�Y��
hold off

%%% ��߹Ϥ�ø�s

% Example 17

t = 0:0.4:4*pi;
y = sin(t).*exp(-t/5);
fill(t, y, 'b');		% 'b'���Ŧ�

% Example 18

t = 0:0.4:4*pi;
y = sin(t).*exp(-t/5);
fill(t, y, 'y');			% 'y' ������
hold on				% �O�d�¹ϧ�
stem(t, y, 'b');		% �|�W�Ŧ�w�Y��
hold off

% Example 19

X = [0 0 1 1];
Y = [0 1 1 0];
Z = [0 1 1 0];
C = [0 0.3 0.6 0.9];
fill3(X, Y, Z, C);
colorbar;

% Example 20

t = (1/16:1/8:1)*2*pi;
x = cos(t);
y = sin(t);
c = linspace(0, 1, length(t));
fill3(x, y, y, c, x, y, x, c);
colorbar;
axis tight; box on;

%%% �V�q���Ϥ�ø�s

% Example 21

[x, y, z] = peaks(20);
[u, v] = gradient(z);
contour(x, y, z, 10);
hold on, quiver(x,y,u,v); hold off
axis image

% Example 22

[x, y] = meshgrid(-2:0.2:2, -1:0.1:1);
z = x.*exp(-x.^2-y.^2);
[u, v, w] = surfnorm(x, y, z);
quiver3(x, y, z, u, v, w);
hold on, surf(x, y, z); hold off
axis equal
%colormap('default')			% �C���^�w�]�� 

%%% �����u�Ϥ�ø�s

% Example 23

z = peaks;
contour(z, 30);		% �e�X 30 �������u
%colormap(zeros(1,3));	% �H�¦�e�{

% Example 24

z = peaks;
contour(z,[0 2 5]);

% Example 25

z = peaks;
[c,handle] = contour(z, 10);
clabel(c, handle);

% Example 26

z = peaks;
contourf(z);

% Example 27

[x,y,z] = peaks;
contour(x, y, z);		% �ϥΤT�ӿ�J
%colormap(zeros(1,3));		% �H�¦�e�{

% Example 28

[x, y, z] = peaks;
meshc(x, y, z);
axis tight

% Example 29

[x, y, z] = peaks;
contour3(x, y, z, 30);
axis tight

% Example 30

t = linspace(0, 2*pi, 61);		% ���ת���l�I
r = 0:0.05:1;				% ���ת���l�I
[tt, rr] = meshgrid(t, r);		% ���ͤG������l�I
[xx, yy] = pol2cart(tt, rr);		% �N���y���ഫ�ܪ����y��
zz = xx + sqrt(-1)*yy;			% �Ƽƪ�ܡA��i�g�� zz=rr.*exp(sqrt(-1)*tt);
ff = abs(zz.^3-1);			% ���������
contour(xx, yy, ff, 50);		% �e�X�����u
axis image

% Example 31

t = linspace(0, 2*pi, 61);	% ���ת���l�I
r = 0:0.05:1;			% ���ת���l�I
[tt, rr] = meshgrid(t, r);	% ���ͤG������l�I
[xx, yy] = pol2cart(tt, rr);	% �N���y���ഫ�ܪ����y��
zz = xx + sqrt(-1)*yy;		% �Ƽƪ�ܡA��i�g�� zz=rr.*exp(sqrt(-1)*tt);
ff = abs(zz.^3-1);		% ���������
h = polar([0 0], [0 1]);	% ���ͦb���y�ФW���@�����u
delete(h);			% �����W�z�ϧΡA���d�U���y�й϶b
hold on
contour(xx, yy, ff, 50);	% �e�X�����u
hold off

% Example 32

t = linspace(0, 2*pi, 61);		% ���ת���l�I
r = 0:0.05:1;				% ���ת���l�I
[tt, rr] = meshgrid(t, r);		% ���ͤG������l�I
zz=rr.*exp(sqrt(-1)*tt);        % �Ƽƪ��
xx=real(zz);
yy=imag(zz);
ff = abs(zz.^3-1);			% ��������ƭ�
h = polar([0 0], [0 1]);		% ���ͦb���y�ФW���@�����u
delete(h);				% �����W�z�ϧΡA���d�U���y�й϶b
hold on
contour(xx, yy, ff, 20);		% �����u
surf(xx, yy, ff);			% ������
hold off
view(-19, 22);				% �]�w�[������
