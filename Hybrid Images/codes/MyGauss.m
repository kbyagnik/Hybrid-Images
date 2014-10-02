function GaussMask = MyGauss (Sigma, Size)
%     GaussMask = zeros(Size(1,1),Size(1,2)) ;
%     Mid(1) = ceil(Size(1,1)/2)
%     Mid(2) = ceil(Size(1,2)/2)
    
    GaussMask = zeros(Size,Size) ;
    Mid = ceil(Size/2) ;
    
    for i=1:Size
        for j=1:Size
            GaussMask(i,j) = exp(-( ( (i-Mid)^2 ) + ( (j-Mid)^2 ) ) / (2*(Sigma^2) ) ) ;
        end
    end
    GaussMask = GaussMask ./ sum(GaussMask(:)) ;
        
end