%%%%% �G������ø��

%%% �򥻪�ø�ϫ��O

% Example 1

x = linspace(0, 2*pi);		% �b 0 �� 2*pi ���A������ 100 ���I  
y = sin(x);			% �p�� x ��������ƭ�  
plot(x, y);			% �i��G�������y�I�@��  

% Example 2

x = linspace(0, 2*pi);				% �b 0 �� 2*pi ���A������ 100 ���I  
plot(x, sin(x), x, cos(x), x, sin(x)+cos(x));	% �i��h�����u�y�I�@�� 

% Example 3

x = linspace(0, 2*pi);		% �b 0 �� 2�k ���A������ 100 ���I  
plot(x, sin(x), 'o', x, cos(x), 'x', x, sin(x)+cos(x), '*');  

% Example 4

y = peaks;					% ���ͤ@�� 49��49 ���x�}  
plot(y);							% ��x�} y ���C�@�Ӧ�V�q�@�� 

% Example 5

x = peaks;  
y = x';		% �D�x�} x ����m�x�} x'  
plot(x, y);	% ���ίx�} x ���C�@��V�q�A�P�����x�} y ���C�@�Ӧ�V�q�@��

% Example 6

x = randn(30);	% ���� 30��30 ���üơ]���W���G�^�x�}
z = eig(x);		% �p�� x ���u�T���ȡv�]�κ١u�S�x�ȡv�^
plot(z, 'o')  
grid on			% �e�X��u 

% Example 7

x = linspace(0, 8*pi);	% �b 0 �� 8�k ���A������ 100 ���I
semilogx(x, sin(x));	% �� x �b����ƨ�סA�ù�䥿����Ƨ@��

% Example 8

x = linspace(0, 2*pi);	% �b 0 �� 2�k ���A������ 100 ���I  
y1 = sin(x);  
y2 = exp(-x);  
plotyy(x, y1, x, y2);	% �e�X��Ө�פ��P�� y �b�A���O�O y1, y2  

%%% �ϧΪ�����

% Example 9

x = 0:0.5:4*pi;		% x �V�q���_�l�P���������� 0 �� 4�k�A 0.5 
                        % ���U�����ۮt��
y = sin(x);
plot(x, y, 'k:diamond')	% �䤤�uk�v�N��¦�A�u�G�v�N���I�u�A��
                        % �udiamond �v�h���w�٧ά����u���u��
                       
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

%%% �϶b������

% Example 12

x = 0:0.1:4*pi;                     % x �V�q���_�l�P���������� 0 �� 
                                    % 4�k�B0.1 ���U�����ۮt��  
y = sin(x);  
plot(x, y);  
axis([-inf, inf, 0, 1]);	    % �e�X�����i y �b���� 0 
                 		    % �M 1 ������

% Example 13

x = 0:0.1:4*pi;  
plot(x, sin(x)+sin(3*x))   
set(gca, 'ytick', [-1 -0.3 0.1 1]);	% �b y �b�[�W��u�I
grid on					% �[�W��u 

% Example 14

x = 0:0.1:4*pi;  
plot(x, sin(x)+sin(3*x))  
set(gca, 'ytick', [-1 -0.3 0.1 1])  
set(gca, 'yticklabel', {'���p','�{�ɭ�','�Y���','���j'})  
grid on						% �[�W��u

% Example 15

x = 0:0.1:4*pi;
subplot(2, 2, 1); plot(x, sin(x));		% �������W���ϧ�
subplot(2, 2, 2); plot(x, cos(x));		% �����k�W���ϧ�    	
subplot(2, 2, 3); plot(x, sin(x).*exp(-x/5));	% �����U���ϧ�
subplot(2, 2, 4); plot(x, x.^2);		% �����k�U���ϧ� 

% Example 16

t = 0:0.1:2*pi;  
x = 3*cos(t);  
y = sin(t);  
subplot(2, 2, 1); plot(x, y); axis normal  
subplot(2, 2, 2); plot(x, y); axis square  
subplot(2, 2, 3); plot(x, y); axis equal  
subplot(2, 2, 4); plot(x, y); axis equal tight 

%%% �[�J������r

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

%%% ��L����ø�ϫ��O

% Example 19

x = linspace(0,2*pi,30);	 % �b 0 �� 2�k ���A������ 30 ���I  
y = sin(x);  
e = y*0.2;  
errorbar(x,y,e)				  % �ϧΤW�[�W�~�t�d�� e   

% Example 20

fplot('sin(1/x)', [0.02 0.2]);      % [0.02 0.2]�Oø�Ͻd��  

% Example 21

theta = linspace(0, 2*pi);    
r = cos(4*theta);   
polar(theta, r);	% �i�淥�y��ø��  	

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

x = randn(10000, 1);	% ���� 10000 �ӥ��W���G�ü�  
hist(x, 25);		% ø�X����ϡA��� x ��ƪ����G���p�M�έp�S�ʡA
			% �Ʀr 25 �N���ƨ̤j�p���諸��ơA�Y�O����Ϥ��������Ӽ�
            
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
rose(x);	% x ��Ƥj�p�����סAx ��ƭӼƬ��Z���A
			% �i��ø�s����������ä�����y�н���  

% Example 33

theta = linspace(0, 2*pi, 50);
rho = sin(0.5*theta);
[x, y] = pol2cart(theta, rho);	% �ѷ��y���ഫ�ܪ����y��
compass(x, y);			% �e�X�H���I���V�q�_�l�I��ù�L��

% Example 34

clear j
theta = linspace(0, 2*pi, 50);  
compass(sin(0.5*theta).*exp(j*theta));

% Example 35

theta = linspace(0, 4*pi, 30);  
rho = 10;  
[x, y] = pol2cart(theta, rho);	% �ѷ��y���ഫ�ܪ����y��  
feather(x, y);	% ø�s�Ф��
axis image
