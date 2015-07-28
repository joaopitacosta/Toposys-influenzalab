       
    % Created by Joao Pita Costa on June 2014
   
    function W= mclean2(D)
% This function provides a distance matrix W adjacent points identified,  
%  given an input matrix of observations P
    
    %clear
    clc 
    % read mahal square matrix as a matrix myData type n x 4
    
    W=D;
    k=length(W);
   
   c=0; 
   for c=1:k-1;
       W(c,c+1)=0;
       c=c+1;
   end
       
   c=0; 
   for c=2:k;
      W(c,c-1)=0;
       c=c+1;
   end
   
   % writeup
   dlmwrite('\output\mahalclean.txt',W,' ');
   
    end
   