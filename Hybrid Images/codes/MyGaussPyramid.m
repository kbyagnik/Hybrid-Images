function MyGaussPyramid (ImageIn)
[m,n,k] = size(ImageIn) ;
    
    C = ImageIn ;
    
    l = floor(min(log2(m),log2(n)) ) ;
    sti(1) = 1 ;
    edi(1) = 2^(l-1) ;
    for i=2:l
        sti(i) = edi(i-1) + 1 ;
        edi(i) = edi(i-1) + 2^(l-i) ;
    end
    
    
    figure ;
    set(gcf,'name','Image Gaussian Pyramid');
    subplot( 1 , 2^l ,  [sti(1) edi(1)] ) ;
    imshow(C) ;
    
    for i=2:l
        
        
        [m,n,k] = size(C) ;
        
        temp = GenGaussPyr( C(:,:,1) ) ;
        [m,n,k1] = size(temp) ;
        C1 = zeros(m,n,k) ;
        
        for p=1:k
            C1(:,:,p) = GenGaussPyr( C(:,:,p) ) ;
        end
        
        C1 = uint8(C1) ;
        subplot( 1 , 2^l ,  [sti(i) edi(i)] ) ;
        imshow(C1) ;
        
        C = double(C1) ;
        
    end
       
end