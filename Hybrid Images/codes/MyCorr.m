function ImageCorr = MyCorr (ImageIn, Mask)
    [M,N] = size(ImageIn) ;
    [P Q] = size(Mask) ;
        
        for i=1:P-1
            ImageIn = vertcat(zeros(1,N), ImageIn, zeros(1,N) ) ;
        end
        [m,n] = size(ImageIn) ;
        for i=1:Q-1
            ImageIn = horzcat(zeros(m,1) , ImageIn, zeros(m,1) ) ;
        end
        
    ImageCorr = zeros(M+P-1, N+Q-1) ;
    
        for m=1:M+P-1
            for n=1:N+Q-1
                temp = (double(ImageIn(m:m+P-1,n:n+Q-1)) .* Mask) ;
                ImageCorr(m,n) = sum(temp(:)) ;
            end
        end
       
    
    % Keeping the dimensions of the image matrix to be same
    ImageCorr = ImageCorr(floor(P/2)+1:floor(P/2)+M, floor(Q/2)+1:floor(Q/2)+N) ;
end