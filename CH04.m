%%%%% 三維立體繪圖

%%% 基本立體繪圖指令

% Example 1 

z = [0 2 1; 3 2 4; 4 4 4; 7 6 8];
mesh(z);
xlabel('X 軸 = column index');	% X 軸的說明文字
ylabel('Y 軸 = row index');	% Y 軸的說明文字
%colormap(zeros(1,3));		% 以黑色呈現

% Example 2

z = [0 2 1; 3 2 4; 4 4 4; 7 6 8];
mesh(z);
xlabel('X 軸 = column index');	% X 軸的說明文字
ylabel('Y 軸 = row index');	% Y 軸的說明文字

for i=1:size(z,1)
	for j=1:size(z,2)
		h=text(j, i, z(i,j), num2str(z(i, j)));		% 標示曲面高度
		set(h, 'hori', 'center', 'vertical', 'bottom', 'color', 'r');	% 改變位置及顏色
	end
end

%colormap(zeros(1,3));		% 以黑色呈現

% Example 3

x = 3:6;
y = 5:9;
[xx, yy] = meshgrid(x, y);		% xx 和 yy 都是矩陣  
zz = xx.*yy;				% 計算函數值 zz，也是矩陣
subplot(2,2,1); mesh(xx);
title('xx'); axis tight
subplot(2,2,2); mesh(yy);
title('yy'); axis tight
subplot(2,2,3); mesh(xx, yy, zz);
title('zz 對 xx 及 yy 作圖'); axis tight

% Example 4

x = linspace(-2, 2, 25);	% 在 x 軸 [-2,2] 之間取 25 點  
y = linspace(-2, 2, 25);	% 在 y 軸 [-2,2] 之間取 25 點  
[xx, yy] = meshgrid(x, y);	% xx 和 yy 都是 25×25 的矩陣  
zz = xx.*exp(-xx.^2-yy.^2);	% 計算函數值，zz 也是 25×25 的矩陣
mesh(xx, yy, zz);		% 畫出立體網狀圖 
%colormap(zeros(1,3));		% 以黑色呈現  

% Example 5

x = linspace(-2, 2, 25);		% 在 x 軸 [-2,2] 之間取 25 點  
y = linspace(-2, 2, 25);		% 在 y 軸 [-2,2] 之間取 25 點  
[xx,yy] = meshgrid(x, y);		% xx 和 yy 都是 25×25 的矩陣  
zz = xx.*exp(-xx.^2-yy.^2);		% zz 也是 25×2 的矩陣  
surf(xx, yy, zz);				% 畫出立體曲面圖  
colormap('default')				% 顏色改回預設值 

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

t = linspace(0,20*pi, 501);	% 在 0 及 20*pi 中間取 501 點  
plot3(t.*sin(t), t.*cos(t), t);	% 畫出 tsin(t),tcos(t),t 的曲線 

% Example 10

t = linspace(0, 10*pi, 501);
plot3(t.*sin(t), t.*cos(t), t, t.*sin(t), t.*cos(t), -t);	% 同時畫兩條曲線

% Example 11

[x, y] = meshgrid(-2:0.1:2);  
z = y.*exp(-x.^2-y.^2);  
plot3(x, y, z); 

% Example 12

x = 6*rand(100,1)-3;		% x 為介於 [-3, 3] 的 100 點亂數  
y = 6*rand(100,1)-3;		% y 為介於 [-3, 3] 的 100 點亂數  
z = peaks(x, y);			% z 為 peaks 指令產生的 100 點輸出  
[X, Y] = meshgrid(-3:0.1:3);  
Z = griddata(x, y, z, X, Y, 'cubic');	% 用 cubic 內差法進行內差  
meshc(X, Y, Z);
hold on
plot3(x, y, z, '.', 'MarkerSize', 16);	% 晝出 100 個取樣  
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

%%% 立體圖形與圖軸的基本技巧

% Example 14

[x,y,z] = peaks;
mesh(x,y,z);
hidden off 
axis tight

% Example 15

peaks;  
colormap('default');		% 顏色改回預設值  
view([0,-30]);  

% Example 16

[X, Y, Z] = peaks;
Z(10:20,10:20) = nan;	% 將 Z 矩陣的一部分代換為 nan
surf(X, Y, Z);
axis tight

%%% 曲面顏色的控制

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
C(:, :, 1) = rand(50);	% C(:,:,1) 代表 R（Red，紅色）的份量
C(:, :, 2) = rand(50);	% C(:,:,2) 代表 G（Green，綠色）的份量
C(:, :, 3) = rand(50);	% C(:,:,3) 代表 B（Blue，藍色）的份量
surf(Z, C);
axis tight

% Example 23

surfl(peaks);			% 曲面圖加上光源  
axis tight
colormap(pink);
shading interp
