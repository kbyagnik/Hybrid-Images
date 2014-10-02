function HybridImage = MyHybrid (Image1, Image2, CutOff1, CutOff2) 
    
    Mask1 = MyGauss(1/(2*pi*CutOff1), 50) ;
    Mask2 = MyGauss(1/(2*pi*CutOff2), 50) ;
    
    [m,n,k] = size(Image1) ;
    
    for z=1:k
        Output1(:,:,z) = double(Image1(:,:,z)) - MyConv(double(Image1(:,:,z)), Mask1) ;
    end
    
%    figure, imshow(uint8(Output1)) ;
    
%     H = fspecial('unsharp')
%     for z=1:k
%         Output1(:,:,z) = 2*double(Image1(:,:,z)) - MyConv(double(Image1(:,:,z)), H) ;
%     end
%     figure, imshow(uint8(Output1)) ;
    
    [m,n,k] = size(Image2) ;
    
    for z=1:k
        Output2(:,:,z) = ( MyConv(double(Image2(:,:,z)), Mask2) ) ;
    end
    
%    figure, imshow(uint8(Output2)) 
        
    HybridImage = uint8(Output1) + uint8(Output2) ;
    
end
