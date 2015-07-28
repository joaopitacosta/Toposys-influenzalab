    % Created by Joao Pita Costa on June 2014
   
function C = percentage2(M)
% Import matrix N nx1 of number of participants 
%  and matrix P nx4 of ILI cases
%
% Example: C = percentage2(data), , where data is the input matrix of absolute values and total number, of dimension mx(n+1) 
% and C is the output matrix of percentages with dimension mxn 

N=M(:,1);
P=M(:,2:5);

% cleaning up
N(isnan(N))=0;
P(isnan(P))=0;

% Obtain percentage
M=[N,N,N,N]
C=P./M

C(isnan(C))=0;

end
