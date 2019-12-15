
function [ G ] = correccionRadiom(I, m, valmax)
    G=zeros(size(I));
    k=valmax^(1-m);
    I=double(I);
    valEscal=zeros(valmax+1,1);
    for i = 0:valmax
        valEscal(i+1)=round((i^m)*k);
    end
    
    for i=1:size(I,1) %% cada renglón
        for j=1:size(I,2) %% cada columna
            G(i,j,:)=valEscal(I(i,j,:)+1);
        end
    end
    G=uint8(G);
end