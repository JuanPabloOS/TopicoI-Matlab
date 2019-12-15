function [ G ] = ecualizar(I, Hist, valmax)
    G=zeros(size(I));
    for canal=1:size(I,3)
        valEscal=zeros(valmax+1,1);
        for i=0:valmax
            valEscal(i+1)=round(Hist(canal,i+1,3)*valmax);
        end
        for i=1:size(I,1)
            for j=1:size(I,2)
                G(i,j,canal)=valEscal(I(i,j,canal)+1);
            end
        end
    end
    G=uint8(G);
end