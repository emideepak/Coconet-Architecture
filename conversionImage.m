% To extract the vegetation patch and mask out the other terrain classes
close all;
clear all;
clc;

imgg=imread('Nov 8 2018_kmeans.tif');
figure,imshow(imgg(:,:,1:3));
for ii=1:size(imgg,1)
    for jj=1:size(imgg,2)
        if imgg(ii,jj,1)>230
            img1(ii,jj,1)=1;
            img1(ii,jj,2)=1;
            img1(ii,jj,3)=1;
            
        else
            img1(ii,jj,1)=0;
            img1(ii,jj,2)=0;
            img1(ii,jj,3)=0;
        end
    end
end
figure,imshow(img1);
imwrite(img1,['Beforemap.jpg']);
img1=imresize(img1,[1992,1572]);
dd=1;
for ii=1:6:size(img1,1)
    for jj=1:6:size(img1,2)
        imm=img1(ii:ii+5,jj:jj+5,1:3);
        imwrite(imm,['Test/',num2str(dd),'.jpg']);
        dd=dd+1;
    end
end


        

            
            