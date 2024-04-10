%%%%% 特殊圖形

%%% 長條圖之繪製

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

x = 1:6;					% 月份  	
y = 35*rand(1, 6);  		% 溫度值（假設是介於 0～35 的亂數）
bar(x, y);  
xlabel('月份');			% x 軸的說明文字
ylabel('平均溫度 (^{o}c)');	% y 軸的說明文字
% 下列指令將 x 軸的數目字改成月數
set(gca, 'xticklabel', {'一月','二月','三月', '四月', '五月', '六月'});

%%% 面積圖之繪製

% Example 7

y = rand(10,3)*100;
x = 1:10;
area(x, y);
xlabel('Year');
ylabel('Count')

%%% 扇形圖之繪製

% Example 8

x = [2 3 5 4];
label={'東','南','西','北'};
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
label = {'春耕', '夏耘', '秋收', '冬藏'};
pie3(x, explode, label);

%%% 針頭圖之繪製

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

%%% 階梯圖之繪製

% Example 15

t = 0:0.4:4*pi;
y = cos(t).*exp(-t/5);
stairs(t, y);

% Example 16

t = 0:0.4:4*pi;
y = cos(t).*exp(-t/5);
stairs(t, y);
hold on				% 保留舊圖形
stem(t, y);			% 疊上針頭圖
hold off

%%% 實心圖之繪製

% Example 17

t = 0:0.4:4*pi;
y = sin(t).*exp(-t/5);
fill(t, y, 'b');		% 'b'為藍色

% Example 18

t = 0:0.4:4*pi;
y = sin(t).*exp(-t/5);
fill(t, y, 'y');			% 'y' 為黃色
hold on				% 保留舊圖形
stem(t, y, 'b');		% 疊上藍色針頭圖
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

%%% 向量場圖之繪製

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
%colormap('default')			% 顏色改回預設值 

%%% 等高線圖之繪製

% Example 23

z = peaks;
contour(z, 30);		% 畫出 30 條等高線
%colormap(zeros(1,3));	% 以黑色呈現

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
contour(x, y, z);		% 使用三個輸入
%colormap(zeros(1,3));		% 以黑色呈現

% Example 28

[x, y, z] = peaks;
meshc(x, y, z);
axis tight

% Example 29

[x, y, z] = peaks;
contour3(x, y, z, 30);
axis tight

% Example 30

t = linspace(0, 2*pi, 61);		% 角度的格子點
r = 0:0.05:1;				% 長度的格子點
[tt, rr] = meshgrid(t, r);		% 產生二維的格子點
[xx, yy] = pol2cart(tt, rr);		% 將極座標轉換至直角座標
zz = xx + sqrt(-1)*yy;			% 複數表示，亦可寫成 zz=rr.*exp(sqrt(-1)*tt);
ff = abs(zz.^3-1);			% 曲面的函數
contour(xx, yy, ff, 50);		% 畫出等高線
axis image

% Example 31

t = linspace(0, 2*pi, 61);	% 角度的格子點
r = 0:0.05:1;			% 長度的格子點
[tt, rr] = meshgrid(t, r);	% 產生二維的格子點
[xx, yy] = pol2cart(tt, rr);	% 將極座標轉換至直角座標
zz = xx + sqrt(-1)*yy;		% 複數表示，亦可寫成 zz=rr.*exp(sqrt(-1)*tt);
ff = abs(zz.^3-1);		% 曲面的函數
h = polar([0 0], [0 1]);	% 產生在極座標上的一條直線
delete(h);			% 移除上述圖形，但留下極座標圖軸
hold on
contour(xx, yy, ff, 50);	% 畫出等高線
hold off

% Example 32

t = linspace(0, 2*pi, 61);		% 角度的格子點
r = 0:0.05:1;				% 長度的格子點
[tt, rr] = meshgrid(t, r);		% 產生二維的格子點
zz=rr.*exp(sqrt(-1)*tt);        % 複數表示
xx=real(zz);
yy=imag(zz);
ff = abs(zz.^3-1);			% 曲面的函數值
h = polar([0 0], [0 1]);		% 產生在極座標上的一條直線
delete(h);				% 移除上述圖形，但留下極座標圖軸
hold on
contour(xx, yy, ff, 20);		% 等高線
surf(xx, yy, ff);			% 曲面圖
hold off
view(-19, 22);				% 設定觀測角度
