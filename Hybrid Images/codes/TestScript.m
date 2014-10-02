close all;
clear all;
clc;

% not allowed - fspecial(),imfilter(), filter2(), conv2(), nlfilter(), colfilt(), corr2(),etc.
%---------------------------------------------------------------------------
Size = 15 ;
Sigma = 5 ;
Mask = MyGauss (Sigma, Size) ;
ImageIn = imread('dog.bmp') ;
[m n k] = size(ImageIn) ;
for p=1:k
    ImageCorr(:,:,p) = MyCorr (ImageIn(:,:,p), Mask) ;
    ImageConv(:,:,p) = MyConv (ImageIn(:,:,p), Mask) ;
end

%---------------------------------------------------------------------------
% Displaying correlation and convolution
%---------------------------------------------------------------------------
figure 
set(gcf,'name','Original Image');
imshow(ImageIn) ;                               % Original Image
figure
set(gcf,'name','Correlated Image');
imshow(uint8(ImageCorr)) ;                       % Correlated image
figure
set(gcf,'name','Convolved Image');
imshow(uint8(ImageConv)) ;              % Convolved Image


%------------------------ CAT - DOG ---------------------------------------------------
Image1 = imread('cat.bmp') ;
Image2 = imread('dog.bmp') ;  
figure
set(gcf,'name','Image Pairs (Cat - Dog)');
subplot(1,2,1);
imshow(Image1) ;
subplot(1,2,2);
imshow(Image2) ;
HybridImage = Hybrid(Image1, Image2, 1/(2*pi*50), 1/(2*pi*5)) ;
MyGaussPyramid(HybridImage) ;

%----------------------- MARILYN - EINSTEIN ----------------------------------------------------
Image1 = imread('marilyn.bmp') ;
Image2 = imread('einstein.bmp') ;  
figure
set(gcf,'name','Image Pairs (Marilyn - Einstein)');
subplot(1,2,1);
imshow(Image1) ;
subplot(1,2,2);
imshow(Image2) ;
HybridImage = Hybrid(Image1, Image2, 1/(2*pi*50), 1/(2*pi*3)) ;
MyGaussPyramid(HybridImage) ;

%--------------------- FISH - SUBMARINE ------------------------------------------------------
Image1 = imread('fish.bmp') ;
Image2 = imread('submarine.bmp') ;  
figure
set(gcf,'name','Image Pairs (Fish - Submarine)');
subplot(1,2,1);
imshow(Image1) ;
subplot(1,2,2);
imshow(Image2) ;
HybridImage = Hybrid(Image1, Image2, 1/(2*pi*50), 1/(2*pi*6)) ;
MyGaussPyramid(HybridImage) ;

%--------------------- BICYCLE - MOTORCYCLE ------------------------------------------------------
Image1 = imread('bicycle.bmp') ;
Image2 = imread('motorcycle.bmp') ;  
figure
set(gcf,'name','Image Pairs (Bicycle - Motorcycle)');
subplot(1,2,1);
imshow(Image1) ;
subplot(1,2,2);
imshow(Image2) ;
HybridImage = Hybrid(Image1, Image2, 1/(2*pi*20), 1/(2*pi*3)) ;
MyGaussPyramid(HybridImage) ;

%--------------------- BIRD - PLANE ------------------------------------------------------
Image1 = imread('bird.bmp') ;
Image2 = imread('plane.bmp') ;  
figure
set(gcf,'name','Image Pairs (Bird - Plane)');
subplot(1,2,1);
imshow(Image1) ;
subplot(1,2,2);
imshow(Image2) ;
HybridImage = Hybrid(Image1, Image2, 1/(2*pi*40), 1/(2*pi*10)) ;
MyGaussPyramid(HybridImage) ;
%---------------------------------------------------------------------------





%---------------------------------------------------------------------------
% These sample images have been taken from the internet
%---------------------------------------------------------------------------

%-------------------- GIRL - WOMAN -------------------------------------------------------
Image1 = imread('image1.png') ;
Image2 = imread('image2.png') ; 
Image2 = Image2(1:size(Image1,1),1:size(Image1,2),1:size(Image1,3)) ;
figure
set(gcf,'name','Image Pairs (Girl - Woman)');
subplot(1,2,1);
imshow(Image1) ;
subplot(1,2,2);
imshow(Image2) ;
HybridImage = Hybrid(Image1, Image2, 1/(2*pi*2.5), 1/(2*pi*4.5)) ;
MyGaussPyramid(HybridImage) ;


%---------------------- UMBRELLA - WATERMELON -----------------------------------------------------
Image1 = imread('image3.png') ;
Image2 = imread('image4.png') ; 
Image2 = Image2(1:size(Image1,1),1:size(Image1,2),1:size(Image1,3)) ;
figure
set(gcf,'name','Image Pairs (Umbrella - Watermelon)');
subplot(1,2,1);
imshow(Image1) ;
subplot(1,2,2);
imshow(Image2) ;
HybridImage = Hybrid(Image1, Image2, 1/(2*pi*3), 1/(2*pi*6)) ;
MyGaussPyramid(HybridImage) ;
%---------------------------------------------------------------------------




