
    % Created by Joao Pita Costa on June 2014
   
    function DM = mahal2(data)
% This function builds the mahalanobis/euclidean metric, given as square matrices DM and DE, and provides the 
% graphical representation of those matrices as well as the covariant matrix 

clc

P=data
P(isnan(P))=0;

Y=cov(P');
DM=pdist2(P,P,'mahalanobis');
DE=pdist2(P,P);
%DH=pdist2(P,P,'hamming');

dlmwrite('\output\mahal.txt',DM,' ');

figure, imagesc(Y), title('Covariance matrix') 
figure, imagesc(DM), title('Mahalanobis distance')
figure, imagesc(DE), title('Euclidean distance')
%figure, imagesc(DH), title('Hamming distance')

%[Z,eigvals] = cmdscale(D);

% K=Z(:,1:2);
% figure, plot(K(:,1),K(:,2),'.'), title('2D plot')
% L=Z(:,1:3);
% figure, plot3(L(:,1),L(:,2),L(:,3),'.'), title('3D plot')

dlmwrite('\output\mahal.txt',DM,' ');