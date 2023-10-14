clc
clear all
close all

extn = '.bmp';
obj_y = 'C:\Users\Acer\OneDrive\Desktop\speckle_recorded';   %Read the recorded random pattern here
img_y = imread([obj_y extn]);
% img_y=rgb2gray(img_y);
I_0 = double(img_y)/255;
I_2=I_0(13:1012,141:1140);  %Select the desired portion for post processing


% Two point Intensity correlation
I_1=I_2(1:1000,1:1000);  %consider utilizing 1000*1000 pixels for correlation

%Take an average of the random pattern
I_d=0;
I_av=0;

    l_u=0;
for n_r=-350:350,
    l_u=l_u+1;
    l_v=0;
for m_r=-350:350,
    l_v=l_v+1;

Ir_n1=I_1(501+n_r,501+m_r);
I_av=I_av+Ir_n1;   

clear  Ir_n1  Ir_n1;
end
end
 %steps to perform spatial averaging
    l_u=0;
for n_r=-350:350,
    l_u=l_u+1;
    l_v=0;
for m_r=-350:350,
    l_v=l_v+1;

I_r1=I_1(351+n_r:650+n_r,351+m_r:650+m_r);  %selecting a window from the random pattern
I_r2=I_1(501+n_r,501+m_r);     %selecting a single point

I_cor=(I_r1-(I_av/700^2)).*(I_r2-(I_av/700^2));     
I_d=I_d+I_cor;

end
end
clear I_r1 I_r2 I_cor Ir_n1 Ir_n2;
Ic=I_d./(I_av)^2;              %%%Ic is the correlation fringes obtained through the cross-correlation process
figure(1)
imagesc(abs(Ic));
colormap(gray(256));

%%Implement Fourier Fringe analysis

f0=fftshift(fft2(Ic)); %Take 2D Fourier transform of the corr fringes
%here Ic is a 300*300 matrix 
z0=zeros(300);

 %Select the centre;%centering and filtering
%(fx,fy) are frequency pixels(one of the spectrum)
z0(151-s:151+s,151-s:151+s)=f0(fy-s:fy+s,fx-s:fx+s); 
%s is the no. of pixels of the spectrum; vary it according to size of spectrum

%%Inverse Fourier Transform
s0=ifft2(fftshift(z0)); %take inverse Fourier Transform
% figure, imagesc(abs(s0)); %display amplitude
% figure, imagesc(angle(s0));  %display phase


