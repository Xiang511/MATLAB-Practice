%%%%% 三維立體繪圖

%%% 以電影方式產生動畫

% Example 1 

clear M					% 清除電影資料矩陣 M
n = 50;					% 抓取 50 個畫面
figure('Renderer','zbuffer');		% Only used in MS Windows
peaks;
fprintf('抓取畫面中...\n');
for i = 1:n
	view([-37.5+i*360/n, 30]);	% 改變觀測角度
	M(i) = getframe;		% 抓取畫面，並存入電影資料矩陣 M  
end
fprintf('播放電影中...\n');
movie(M, 3);				% 播放電影三次

% Example 2

clear M				% 清除電影資料矩陣 M
r=linspace(0, 4, 30);		% 圓盤的半徑
t=linspace(0, 2*pi, 50);	% 圓盤的極座標角度
[rr, tt]=meshgrid(r, t);
xx=rr.*cos(tt);			% 產生圓盤上的 x 座標
yy=rr.*sin(tt);			% 產生圓盤上的 y 座標
zz=peaks(xx,yy);		% 產生 peaks 在極座標的資料
n = 30;				% 抓取 30 個畫面
scale = cos(linspace(0, 2*pi, n));
figure('Renderer','zbuffer');	% Only used in MS Windows
fprintf('抓取畫面中...\n');
for i = 1:n
	surf(xx, yy, zz*scale(i));		% 畫圖
	axis([-inf inf -inf inf -8.5 8.5]);	% 固定圖軸的範圍
	box on
	M(i) = getframe;			% 抓取畫面，並存入電影資料矩陣 M  
end
fprintf('播放電影中...\n');
movie(M, 5);					% 播放電影 5 次

% Example 3

clear M				% 清除電影資料矩陣 M
load clown.mat
image(X); colormap(map);	% 畫出小丑臉
n = 30;				% 抓取 30 個畫面
scale = cos(linspace(0, 2*pi, n));
fprintf('抓取畫面中...\n');
for i = 1:n
	colormap(((i-1)*(1-map)+(n-i)*map)/(n-1));	% 改變色盤矩陣
	M(i) = getframe;			% 抓取畫面，並存入電影資料矩陣 M  
end
fprintf('播放電影中...\n');
movie(M, -5);					% 播放電影 5 次

%%% 以物件方式產生動畫

% Example 4

x = 0:0.1:8*pi;
h = plot(x, sin(x).*exp(-x/5), 'EraseMode', 'xor');
axis([-inf inf -1 1]);			% 設定圖軸的範圍
grid on					% 畫出格線
tic
for i = 1:5000
	y = sin(x-i/50).*exp(-x/5);
	set(h, 'ydata', y);		% 設定新的 y 座標
	drawnow				% 立即作圖
end
toc

% Example 5

x = 0:0.1:8*pi;
plot(x, cos(x), 'color', 'r', 'lineWidth', 10);
h = line(x, sin(x).*exp(-x/5), 'EraseMode', 'xor', 'color', 'b', 'lineWidth', 10);
axis([-inf inf -1 1]);			% 設定圖軸的範圍
grid on					% 畫出格線
for i = 1:5000
	y = sin(x-i/50).*exp(-x/5);
	set(h, 'ydata', y);		% 設定新的 y 座標
	drawnow				% 立即作圖
end

% Example 6

x = 0:0.1:8*pi;
for i = 1:5000
    plot(x, sin(x-i/50).*exp(-x/5));
    axis([-inf inf -1 1]);
    grid on
    drawnow
end