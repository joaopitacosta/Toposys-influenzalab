   % Created by Joao Pita Costa on June 2014
   
    function [Q] = highdim(Z,n)
% This function provides a distance matrix W adjacent points identified,  
%  given an input matrix of observations P
    
    %clear
    clc 
    % read mahal square matrix as a matrix myData type n x 4

    
% dim=2
%Z=data;
Z(isnan(Z))=0;
highdata=[Z(1:size(Z,1)-1,:), Z(2:size(Z,1),:)];

% dim > 2

if n>2 
      c=3;
      for c = 3:n;
          highdata=[highdata(1:size(highdata,1)-1,:), Z(c:size(Z,1),:)];
          c=c+1;
      end
else
    n
end
    
% output has highdata
Q=highdata
%write 
%dlmwrite('\perseus\data\nl2Ddim.txt',highdata,' ');
    