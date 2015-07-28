
    % Created by Joao Pita Costa on August 2014
   
    function complexcheck2(D,r)
% This function provides the graphical representation of the complex   
% correspondent to a given distance matrix M for an input scale r 

clc

%r=0.5;
[a,b]=find(D<r);
figure, imagesc(D<r)

[Y,eigvals] = cmdscale(D);
X=Y(:,1:3);
figure, plot3(X(:,1),X(:,2),X(:,3),'.'), title('3D plot')

%figure, plot3(P(a,1),P(a,2),P(a,3),'.'), title('3D plot')
%figure, plot3(P(b,1),P(b,2),P(b,3),'.'), title('3D plot')
figure, line([D(a,1),D(b,1)]',[D(a,2),D(b,2)]',[D(a,3),D(b,3)]'), title('complex')
hold on

    end

