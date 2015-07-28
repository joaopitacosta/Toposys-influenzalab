
    % Created by Joao Pita Costa on August 2014
   
    function P = duplicates3(perseus)
% This function provides deletes the duplicate rows in a given matrix A,  
% remembering these deleted rows in a matrix r
%
% example: B = duplicates2(A)

clc

perseus(isnan(perseus))=0;
P = unique(perseus, 'rows');

    end

