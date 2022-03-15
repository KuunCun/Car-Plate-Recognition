% ANA PROGRAMDA KULLANILACAK VERİTABANI İÇİN GÖRSEL MATERYALLER OLUŞTURMA ARACI
clear all;
clc;

[file,path]=uigetfile({'*.jpg;*.jpeg;*.bmp;*.png;*.tif'},'Choose an image');
s=[path,file];
im=imread(s); %Düzenlenecek resim seçilip okunur

im = rgb2gray(im); %Gri tona çevrilir
im=im2bw(im); %Siyah-Beyaz şeklinde logical değeredöüştürür
im = imresize(im, [42 24]); %Yeniden boyutlandırılır

figure,imshow(im);
imwrite(im,'5s.bmp'); %Resim bu ad ile kaydedilir