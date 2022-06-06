clear;clc;close all;
I= importdata('E.txt');   
x= importdata('E-x.txt');  
y= importdata('E-y.txt');  
I_f=flipud(fliplr(I));

figure
 imshow(I_f,[],'XData',y,'YData',x,'colormap',jet);
 axis on;
c=colorbar;
colorbar
FS=18;
colorbar('FontSize',FS);
xlabel('X(¦Ìm)','FontSize',FS);
ylabel('Y(¦Ìm)','FontSize',FS);
set(gca,'FontSize',FS);
set(gca,'Xtick',-100:0.2:100);
set(gca,'Ytick',-100:0.2:100);

figure
x0=1;
x1=201;
y0=101.64;
y1=101.64;
IMx=I(y0:y1,x0:x1);
plot(IMx);
xlabel('X(¦Ìm)','FontSize',FS);
ylabel('Intensity','FontSize',FS);
set(gca,'FontSize',FS);

figure
x0=100;
x1=100;
y0=1;
y1=201;
xim=x(x0:x1);
yim=x(y0:y1);
IMy=I(y0:y1,x0:x1);
plot(IMy);%title('improfile(Y)');
xlabel('Y(¦Ìm)','FontSize',FS);
ylabel('Intensity','FontSize',FS);
set(gca,'FontSize',FS);
