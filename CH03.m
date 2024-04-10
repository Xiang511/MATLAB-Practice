%%%%% 二維平面繪圖

%%% 基本的繪圖指令

% Example 1

x = linspace(0, 2*pi);		% 在 0 到 2*pi 間，等分取 100 個點  
y = sin(x);			% 計算 x 的正弦函數值  
plot(x, y);			% 進行二維平面描點作圖  

% Example 2

x = linspace(0, 2*pi);				% 在 0 到 2*pi 間，等分取 100 個點  
plot(x, sin(x), x, cos(x), x, sin(x)+cos(x));	% 進行多條曲線描點作圖 

% Example 3

x = linspace(0, 2*pi);		% 在 0 到 2π 間，等分取 100 個點  
plot(x, sin(x), 'o', x, cos(x), 'x', x, sin(x)+cos(x), '*');  

% Example 4

y = peaks;					% 產生一個 49×49 的矩陣  
plot(y);							% 對矩陣 y 的每一個行向量作圖 

% Example 5

x = peaks;  
y = x';		% 求矩陣 x 的轉置矩陣 x'  
plot(x, y);	% 取用矩陣 x 的每一行向量，與對應矩陣 y 的每一個行向量作圖

% Example 6

x = randn(30);	% 產生 30×30 的亂數（正規分佈）矩陣
z = eig(x);		% 計算 x 的「固有值」（或稱「特徵值」）
plot(z, 'o')  
grid on			% 畫出格線 

% Example 7

x = linspace(0, 8*pi);	% 在 0 到 8π 間，等分取 100 個點
semilogx(x, sin(x));	% 使 x 軸為對數刻度，並對其正弦函數作圖

% Example 8

x = linspace(0, 2*pi);	% 在 0 到 2π 間，等分取 100 個點  
y1 = sin(x);  
y2 = exp(-x);  
plotyy(x, y1, x, y2);	% 畫出兩個刻度不同的 y 軸，分別是 y1, y2  

%%% 圖形的控制

% Example 9

x = 0:0.5:4*pi;		% x 向量的起始與結束元素為 0 及 4π， 0.5 
                        % 為各元素相差值
y = sin(x);
plot(x, y, 'k:diamond')	% 其中「k」代表黑色，「：」代表點線，而
                        % 「diamond 」則指定菱形為曲線的線標
                       
% Example 10

x=0:0.5:4*pi;
h=plot(x, sin(x));		% Plot a sin curve
set(h, 'marker', 'o');		% Set marker to 'o'
set(h, 'markerSize', 15);	% Set marker size to 15
set(h, 'lineWidth', 5);		% Set line width to 5
set(h, 'lineStyle', ':');	% Set line style to dot
set(h, 'markerEdgeColor', 'g');	% Set marker edge color to green
set(h, 'markerFaceColor', 'y');	% Set marker face color to yellow

% Example 11

x=0:0.5:4*pi;
plot(x, sin(x), 'marker', 'o', 'markerSize', 15, 'lineWidth', 5, 'lineStyle', ':', 'markerEdgeColor', 'g', 'markerFaceColor', 'y');

%%% 圖軸的控制

% Example 12

x = 0:0.1:4*pi;                     % x 向量的起始與結束元素為 0 及 
                                    % 4π、0.1 為各元素相差值  
y = sin(x);  
plot(x, y);  
axis([-inf, inf, 0, 1]);	    % 畫出正弦波 y 軸介於 0 
                 		    % 和 1 的部份

% Example 13

x = 0:0.1:4*pi;  
plot(x, sin(x)+sin(3*x))   
set(gca, 'ytick', [-1 -0.3 0.1 1]);	% 在 y 軸加上格線點
grid on					% 加上格線 

% Example 14

x = 0:0.1:4*pi;  
plot(x, sin(x)+sin(3*x))  
set(gca, 'ytick', [-1 -0.3 0.1 1])  
set(gca, 'yticklabel', {'極小','臨界值','崩潰值','極大'})  
grid on						% 加上格線

% Example 15

x = 0:0.1:4*pi;
subplot(2, 2, 1); plot(x, sin(x));		% 此為左上角圖形
subplot(2, 2, 2); plot(x, cos(x));		% 此為右上角圖形    	
subplot(2, 2, 3); plot(x, sin(x).*exp(-x/5));	% 為左下角圖形
subplot(2, 2, 4); plot(x, x.^2);		% 此為右下角圖形 

% Example 16

t = 0:0.1:2*pi;  
x = 3*cos(t);  
y = sin(t);  
subplot(2, 2, 1); plot(x, y); axis normal  
subplot(2, 2, 2); plot(x, y); axis square  
subplot(2, 2, 3); plot(x, y); axis equal  
subplot(2, 2, 4); plot(x, y); axis equal tight 

%%% 加入說明文字

% Example 17

subplot(1,1,1);  
x = 0:0.1:2*pi;  
y1 = sin(x);  
y2 = exp(-x);  
plot(x, y1, '--*', x, y2, ':o');  
xlabel('t = 0 to 2\pi');  
ylabel('values of sin(t) and e^{-x}')  
title('Function Plots of sin(t) and e^{-x}');  
legend('sin(t)','e^{-x}');  

% Example 18

x = 0:0.1:2*pi;  
plot(x, sin(x), x, cos(x));   
text(pi/4, sin(pi/4),'\leftarrow sin(\pi/4) = 0.707');  
text(5*pi/4, cos(5*pi/4),'cos(5\pi/4) = -0.707\rightarrow', 'HorizontalAlignment', 'right');  

%%% 其他平面繪圖指令

% Example 19

x = linspace(0,2*pi,30);	 % 在 0 到 2π 間，等分取 30 個點  
y = sin(x);  
e = y*0.2;  
errorbar(x,y,e)				  % 圖形上加上誤差範圍 e   

% Example 20

fplot('sin(1/x)', [0.02 0.2]);      % [0.02 0.2]是繪圖範圍  

% Example 21

theta = linspace(0, 2*pi);    
r = cos(4*theta);   
polar(theta, r);	% 進行極座標繪圖  	

% Example 22

colordef none
theta = linspace(0, 4*pi, 10001);
r=cos(4*theta);
x=r.*cos(theta);
y=r.*sin(theta);
comet(x, y, 0.04);
colordef white

% Example 23

t = linspace(0, 2*pi, 101);
r=1+cos(4*t);
subplot(121); plot(t, r, 'marker', '.'); xlabel('\theta'); ylabel('r(\theta)'); grid on
set(gca, 'xlim', [min(t), max(t)]);
yLim1=get(gca, 'ylim');
circleH1=line(nan, nan, 'marker', 'o', 'color', 'r');
lineH1=line(nan, nan, 'color', 'r');
subplot(122);
h=polar(t, r); set(h, 'marker', '.');
grid on
circleH2=line(nan, nan, 'marker', 'o', 'color', 'r');
angleH=line(nan, nan, 'color', 'r');
lineH2=line(nan, nan, 'color', 'm');
z=r.*exp(sqrt(-1)*t);
x=real(z); y=imag(z);

for i=1:length(t)
	fprintf('Press any key to continue...'); pause; fprintf('\n');
	set(circleH1, 'xdata', t(i), 'ydata', r(i));
	set(lineH1, 'xdata', t(i)*[1 1], 'ydata', [yLim1(1), r(i)]);
	set(circleH2, 'xdata', x(i), 'ydata', y(i));
	len=norm([x(i), y(i)]);
	set(angleH, 'xdata', [0, cos(t(i))], 'ydata', [0, sin(t(i))]);
	set(lineH2, 'xdata', [0 x(i)], 'ydata', [0, y(i)]);
end

% Example 24

t = linspace(0, 2*pi, 1001);
for i=1:5
	subplot(2,5,i);
	polar(t, cos(i*t));
	title(sprintf('r=cos(%d\\theta)', i));
end
for i=1:5
	subplot(2,5,5+i);
	polar(t, sin(i*t));
	title(sprintf('r=sin(%d\\theta)', i));
end

% Example 25

t = linspace(0, 2*pi, 1001);
for i=1:5
	subplot(2,5,i);
	polar(t, 1+cos(i*t));
	title(sprintf('r=1+cos(%d\\theta)', i));
end
for i=1:5
	subplot(2,5,5+i);
	polar(t, 1+sin(i*t));
	title(sprintf('r=1+sin(%d\\theta)', i));
end

% Example 26

t = linspace(0, 2*pi, 1001);
for i=1:5
	subplot(2,5,i);
	polar(t, 1+cos(i*t));
	title(sprintf('r=1+cos(%d\\theta)', i));
end
for i=1:5
	subplot(2,5,5+i);
	polar(t, 1+sin(i*t));
	title(sprintf('r=1+sin(%d\\theta)', i));
end

% Example 27


t=linspace(0, 2*pi, 1001);
x=cos(t);
y=sin(2*t);
plot(x,y);


for i=1:5
	for j=1:5
		subplot(5, 5, i+(j-1)*5);
		x=cos(i*t);
		y=sin(j*t);
		plot(x, y); axis image
		title(sprintf('m=%d, n=%d\n', i, j));
	end
end

% Example 28

t = linspace(0, 2*pi, 101);
m=1; n=2;
x=cos(m*t);
y=sin(n*t);
subplot(221); plot(t, x, 'marker', '.'); xlabel('t'); ylabel('x(t)'); grid on
set(gca, 'xlim', [min(t), max(t)]);
yLim1=get(gca, 'ylim');
circleH1=line(nan, nan, 'marker', 'o', 'color', 'r');
lineH1=line(nan, nan, 'color', 'r');
subplot(223); plot(t, y, 'marker', '.'); xlabel('t'); ylabel('y(t)'); grid on
set(gca, 'xlim', [min(t), max(t)]);
yLim2=get(gca, 'ylim');
circleH2=line(nan, nan, 'marker', 'o', 'color', 'r');
lineH2=line(nan, nan, 'color', 'r');
subplot(122); plot(x, y, 'marker', '.'); xlabel('x(t)'); ylabel('y(t)'); grid on
axis image
circleH3=line(nan, nan, 'marker', 'o', 'color', 'r');

for i=1:length(t)
	fprintf('Press any key to continue...'); pause; fprintf('\n');
	set(circleH1, 'xdata', t(i), 'ydata', x(i));
	set(lineH1, 'xdata', t(i)*[1 1], 'ydata', [yLim1(1), x(i)]);
	set(circleH2, 'xdata', t(i), 'ydata', y(i));
	set(lineH2, 'xdata', t(i)*[1 1], 'ydata', [yLim2(1), y(i)]);
	set(circleH3, 'xdata', x(i), 'ydata', y(i));
end

% Example 29

x = randn(10000, 1);	% 產生 10000 個正規分佈亂數  
hist(x, 25);		% 繪出直方圖，顯示 x 資料的分佈情況和統計特性，
			% 數字 25 代表資料依大小分堆的堆數，即是直方圖內長條的個數
            
% Example 30

n=100000;
bin=100;
subplot(211); hist( rand(n, 1), bin);
subplot(212); hist(randn(n, 1), bin);

% Example 31
n=100000;
subplot(231); x=rand(n, 1); hist(x, 100);
subplot(232); x=rand(n, 1); hist(x.^3, 100);
subplot(233); x=rand(n, 1); hist(nthroot(x, 3), 100);
subplot(234); x=randn(n, 1); hist(x, 100);
subplot(235); x=randn(n, 1); hist(x.^3, 100);
subplot(236); x=randn(n, 1); hist(nthroot(x, 3), 100);

% Example 32

x = randn(5000, 1);  
rose(x);	% x 資料大小為角度，x 資料個數為距離，
			% 進行繪製類似玫瑰花瓣的極座標質方圖  

% Example 33

theta = linspace(0, 2*pi, 50);
rho = sin(0.5*theta);
[x, y] = pol2cart(theta, rho);	% 由極座標轉換至直角座標
compass(x, y);			% 畫出以原點為向量起始點的羅盤圖

% Example 34

clear j
theta = linspace(0, 2*pi, 50);  
compass(sin(0.5*theta).*exp(j*theta));

% Example 35

theta = linspace(0, 4*pi, 30);  
rho = 10;  
[x, y] = pol2cart(theta, rho);	% 由極座標轉換至直角座標  
feather(x, y);	% 繪製羽毛圖
axis image
