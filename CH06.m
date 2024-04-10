%%%%% �T������ø��

%%% �H�q�v�覡���Ͱʵe

% Example 1 

clear M					% �M���q�v��Ưx�} M
n = 50;					% ��� 50 �ӵe��
figure('Renderer','zbuffer');		% Only used in MS Windows
peaks;
fprintf('����e����...\n');
for i = 1:n
	view([-37.5+i*360/n, 30]);	% �����[������
	M(i) = getframe;		% ����e���A�æs�J�q�v��Ưx�} M  
end
fprintf('����q�v��...\n');
movie(M, 3);				% ����q�v�T��

% Example 2

clear M				% �M���q�v��Ưx�} M
r=linspace(0, 4, 30);		% ��L���b�|
t=linspace(0, 2*pi, 50);	% ��L�����y�Ш���
[rr, tt]=meshgrid(r, t);
xx=rr.*cos(tt);			% ���Ͷ�L�W�� x �y��
yy=rr.*sin(tt);			% ���Ͷ�L�W�� y �y��
zz=peaks(xx,yy);		% ���� peaks �b���y�Ъ����
n = 30;				% ��� 30 �ӵe��
scale = cos(linspace(0, 2*pi, n));
figure('Renderer','zbuffer');	% Only used in MS Windows
fprintf('����e����...\n');
for i = 1:n
	surf(xx, yy, zz*scale(i));		% �e��
	axis([-inf inf -inf inf -8.5 8.5]);	% �T�w�϶b���d��
	box on
	M(i) = getframe;			% ����e���A�æs�J�q�v��Ưx�} M  
end
fprintf('����q�v��...\n');
movie(M, 5);					% ����q�v 5 ��

% Example 3

clear M				% �M���q�v��Ưx�} M
load clown.mat
image(X); colormap(map);	% �e�X�p���y
n = 30;				% ��� 30 �ӵe��
scale = cos(linspace(0, 2*pi, n));
fprintf('����e����...\n');
for i = 1:n
	colormap(((i-1)*(1-map)+(n-i)*map)/(n-1));	% ���ܦ�L�x�}
	M(i) = getframe;			% ����e���A�æs�J�q�v��Ưx�} M  
end
fprintf('����q�v��...\n');
movie(M, -5);					% ����q�v 5 ��

%%% �H����覡���Ͱʵe

% Example 4

x = 0:0.1:8*pi;
h = plot(x, sin(x).*exp(-x/5), 'EraseMode', 'xor');
axis([-inf inf -1 1]);			% �]�w�϶b���d��
grid on					% �e�X��u
tic
for i = 1:5000
	y = sin(x-i/50).*exp(-x/5);
	set(h, 'ydata', y);		% �]�w�s�� y �y��
	drawnow				% �ߧY�@��
end
toc

% Example 5

x = 0:0.1:8*pi;
plot(x, cos(x), 'color', 'r', 'lineWidth', 10);
h = line(x, sin(x).*exp(-x/5), 'EraseMode', 'xor', 'color', 'b', 'lineWidth', 10);
axis([-inf inf -1 1]);			% �]�w�϶b���d��
grid on					% �e�X��u
for i = 1:5000
	y = sin(x-i/50).*exp(-x/5);
	set(h, 'ydata', y);		% �]�w�s�� y �y��
	drawnow				% �ߧY�@��
end

% Example 6

x = 0:0.1:8*pi;
for i = 1:5000
    plot(x, sin(x-i/50).*exp(-x/5));
    axis([-inf inf -1 1]);
    grid on
    drawnow
end