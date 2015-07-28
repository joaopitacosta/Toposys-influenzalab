function [E] = collapse(D,P,k)
%
% Use of the function 
%  [E] = collapse(D,P,k)
%  (not P and D must both be euclidean roughly)
%  D - original distance matrix
%  P - original point set
%  k - percentage
%  dist - handle to distance function
%

%%

m = size(D,1);


centroid = mean(P,1);
R = pdist2(centroid,P);

[r1 I] = sort(R);
ind = floor(k*length(I));


%% compute new distance
X = min(D(I(1:ind),:),[],1);

F = [D, X';X 0 ];

%% pull out relavant bits
h = [sort(I(ind+1:end)) m+1];
[T,S] = meshgrid(h,h);
E = F(sub2ind([m+1,m+1], T(:),S(:)));
E = reshape(E,length(h),length(h))
