%%%%% �T������ø��

%%% �򥻥���ø�ϫ��O

% Example 1 

z = [0 2 1; 3 2 4; 4 4 4; 7 6 8];
mesh(z);
xlabel('X �b = column index');	% X �b��������r
ylabel('Y �b = row index');	% Y �b��������r
%colormap(zeros(1,3));		% �H�¦�e�{

% Example 2

z = [0 2 1; 3 2 4; 4 4 4; 7 6 8];
mesh(z);
xlabel('X �b = column index');	% X �b��������r
ylabel('Y �b = row index');	% Y �b��������r

for i=1:size(z,1)
	for j=1:size(z,2)
		h=text(j, i, z(i,j), num2str(z(i, j)));		% �Хܦ�������
		set(h, 'hori', 'center', 'vertical', 'bottom', 'color', 'r');	% ���ܦ�m���C��
	end
end

%colormap(zeros(1,3));		% �H�¦�e�{

% Example 3

x = 3:6;
y = 5:9;
[xx, yy] = meshgrid(x, y);		% xx �M yy ���O�x�}  
zz = xx.*yy;				% �p���ƭ� zz�A�]�O�x�}
subplot(2,2,1); mesh(xx);
title('xx'); axis tight
subplot(2,2,2); mesh(yy);
title('yy'); axis tight
subplot(2,2,3); mesh(xx, yy, zz);
title('zz �� xx �� yy �@��'); axis tight

% Example 4

x = linspace(-2, 2, 25);	% �b x �b [-2,2] ������ 25 �I  
y = linspace(-2, 2, 25);	% �b y �b [-2,2] ������ 25 �I  
[xx, yy] = meshgrid(x, y);	% xx �M yy ���O 25��25 ���x�}  
zz = xx.*exp(-xx.^2-yy.^2);	% �p���ƭȡAzz �]�O 25��25 ���x�}
mesh(xx, yy, zz);		% �e�X��������� 
%colormap(zeros(1,3));		% �H�¦�e�{  

% Example 5

x = linspace(-2, 2, 25);		% �b x �b [-2,2] ������ 25 �I  
y = linspace(-2, 2, 25);		% �b y �b [-2,2] ������ 25 �I  
[xx,yy] = meshgrid(x, y);		% xx �M yy ���O 25��25 ���x�}  
zz = xx.*exp(-xx.^2-yy.^2);		% zz �]�O 25��2 ���x�}  
surf(xx, yy, zz);				% �e�X���馱����  
colormap('default')				% �C���^�w�]�� 

% Example 6

[x, y, z] = peaks;  
meshz(x,y,z);  
axis tight;

% Example 7

[x, y, z] = peaks;
waterfall(x,y,z);
axis tight;

% Example 8

[x, y, z] = peaks;
meshc(x, y, z);
axis tight;

% Example 9

t = linspace(0,20*pi, 501);	% �b 0 �� 20*pi ������ 501 �I  
plot3(t.*sin(t), t.*cos(t), t);	% �e�X tsin(t),tcos(t),t �����u 

% Example 10

t = linspace(0, 10*pi, 501);
plot3(t.*sin(t), t.*cos(t), t, t.*sin(t), t.*cos(t), -t);	% �P�ɵe������u

% Example 11

[x, y] = meshgrid(-2:0.1:2);  
z = y.*exp(-x.^2-y.^2);  
plot3(x, y, z); 

% Example 12

x = 6*rand(100,1)-3;		% x ������ [-3, 3] �� 100 �I�ü�  
y = 6*rand(100,1)-3;		% y ������ [-3, 3] �� 100 �I�ü�  
z = peaks(x, y);			% z �� peaks ���O���ͪ� 100 �I��X  
[X, Y] = meshgrid(-3:0.1:3);  
Z = griddata(x, y, z, X, Y, 'cubic');	% �� cubic ���t�k�i�椺�t  
meshc(X, Y, Z);
hold on
plot3(x, y, z, '.', 'MarkerSize', 16);	% �ޥX 100 �Ө���  
hold off
axis tight

% Example 13

subplot(2,2,1);
ezmesh('sin(x)/x*sin(y)/y');
subplot(2,2,2);
ezsurf('sin(x*y)/(x*y)');
subplot(2,2,3);
ezmeshc('sin(x)/x*sin(y)/y');
subplot(2,2,4);
ezsurfc('sin(x*y)/(x*y)');

%%% ����ϧλP�϶b���򥻧ޥ�

% Example 14

[x,y,z] = peaks;
mesh(x,y,z);
hidden off 
axis tight

% Example 15

peaks;  
colormap('default');		% �C���^�w�]��  
view([0,-30]);  

% Example 16

[X, Y, Z] = peaks;
Z(10:20,10:20) = nan;	% �N Z �x�}���@�����N���� nan
surf(X, Y, Z);
axis tight

%%% �����C�⪺����

% Example 17

peaks;
colormap(rand(64,3));
colorbar;

% Example 18

peaks;
colormap cool; 
colorbar

% Example 19

[X, Y, Z] = peaks;
surf(X, Y, Z, gradient(Z));
axis tight;
colormap hot

% Example 20

[X, Y, Z] = peaks;
surf(X, Y, Z, del2(Z));
axis tight;
colormap hot

% Example 21

colormap copper
subplot(3, 1, 1); rgbplot(colormap);
brighten(colormap, 0.5)
subplot(3, 1, 2); rgbplot(colormap);
brighten(colormap, -0.8)
subplot(3, 1, 3); rgbplot(colormap);

% Example 22

Z = peaks(50);
C(:, :, 1) = rand(50);	% C(:,:,1) �N�� R�]Red�A����^�����q
C(:, :, 2) = rand(50);	% C(:,:,2) �N�� G�]Green�A���^�����q
C(:, :, 3) = rand(50);	% C(:,:,3) �N�� B�]Blue�A�Ŧ�^�����q
surf(Z, C);
axis tight

% Example 23

surfl(peaks);			% �����ϥ[�W����  
axis tight
colormap(pink);
shading interp
