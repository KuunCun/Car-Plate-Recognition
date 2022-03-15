% ANA PROGRAMDA KULLANILACAK VERİTABANI DOSYASINI OLUŞTURUR
% letter_numbers KLASÖRÜNDEKİ MATERYALLER VERİTABANI OLARAK KAYDEDİLİR
clc;           
clear;        
close all;  

di=dir('letters_numbers'); %Materyallerimizin bulunduğu dosyadaki elemalar listelenir
st={di.name};
nam=st(3:end); %Dosya isimleri nam adlı vektörde kaydedilir
imgfile=cell(2,length(nam)); %2 satır ve dosya sayımız kadarlık bircellmatrisi üretilir

for i=1:length(nam)
   imgfile(1,i)={imread(['letters_numbers','\',cell2mat(nam(i))])}; %logical görseller cell matrise kaydedilir
   temp=cell2mat(nam(i));
   imgfile(2,i)={temp(1)}; %Dosya ismi cell matrise kaydedilir
end %her dosya için tekrarlanır

save('imgfildata.mat','imgfile'); %Oluşturlan veritabanı dosyamız kaydedilir
clear;
