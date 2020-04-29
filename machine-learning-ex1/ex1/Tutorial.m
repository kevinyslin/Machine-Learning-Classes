a = [1 2 ;3 4; 5 6];
b = [11 12; 13 14; 15 16];
c = [1 1; 2 2];

t = [0:0.01:0.98];
y1 = sin(2*pi*4*t);
plot(t,y1);
y2 = cos(2*pi*4*t);
plot(t,y2);

% Create a graph and hold its value
plot(t,y1);
hold on;
plot(t,y2,'r');
xlabel('time');
ylabel('value');
legend('sin','cos');
title('my plot');
print -dpng 'myplot.png'; %save image

%subplotting
subplot(1,2,1); %creates a 1 x 2 plot, and access the first element
plot(t,y1)
subplot(1,2,2);
plot(t,y2);
axis([0.5 1 -1 1]);

%colored plots
A = magic(5);
imagesc(A);
imagesc(A), colorbar, colormap gray;
imagesc(magic(15)), colorbar, colormap gray; %comma chaining