function [ G ] = desplazar( I, dX, dY )
    G=zeros(size(I, 1)+dY,...
        size(I, 2)+dX, size(I, 3));
    nX=1:size(I,2);
    nY=1:size(I,1);
    nX=nX+dX;
    nY=nY+dY;
    
    for i=1:size(I,1)
        for j=1:size(I,2)
            if((nY(i)>0)&&(nX(j)>0))
                G(nY(i),nX(j),:) = I(i,j,:);
            end
        end
    end
    
    G=uint8(G);
    
end

