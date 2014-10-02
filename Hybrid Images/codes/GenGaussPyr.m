function HalfImg = GenGaussPyr (ImageIn)
    [m,n] = size(ImageIn) ;
    
    Mask = MyGauss(0.5, 3) ;
    C = ImageIn ;
    C = MyConv( C, Mask) ;
    
    [m,n] = size(C) ;
    
    temp1 = C(:,1) ;
    
    for j=3:2:n
        temp1 = horzcat(temp1, C(:,j)) ;
    end
    
    temp2 = temp1(1,:) ;
    
    for j=3:2:m
        temp2 = vertcat(temp2, temp1(j,:)) ;
    end
    
    HalfImg = temp2 ;
    
    [m,n] = size(HalfImg) ;
    
end