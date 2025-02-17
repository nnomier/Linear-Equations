function [L,U,P] = decompostion(A)
% initialize
U = A;
%function eye constructs an identity matrix of same size as A
P = eye(size(A)); 

% L is identity matrix to start
L = zeros(size(A));
I = eye(size(A));

% operation to obtain L & U matrix
for lv1 = 1:size(A,1)-1     % reference row
    % find index of max value in column
    [~,index] = max(double(abs(U(lv1:size(A,1),lv1))));
    

    if (index == 1)
        % pivot correct, continue
    else
        index = index + lv1 - 1;    % absolute index

        % record row swaps in P
        temp_row = P(lv1,:);
        P(lv1,:) = P(index,:);
        P(index,:) = temp_row;
        
        % perform row swap on U
        tmp_row = U(lv1,:);
        U(lv1,:) = U(index,:);
        U(index,:) = tmp_row;
         

        % perform row swap on L
        tmp_row = L(lv1,:);
        L(lv1,:) = L(index,:);
        L(index,:) = tmp_row;
        
      

    end

    for lv2 = (lv1+1):size(A,1)     % row to subtract from
        
        if(U(lv2,lv1) == 0)
            % already 0, no need to perform Gaussian Elimination
        else
            % L matrix is created from the I matrix with conjugate operations
            % of the operations done on the U matrix
            L(lv2,lv1) = U(lv2,lv1)./U(lv1,lv1);
            % U matrix created by Gaussian elimination
            U(lv2,:) = U(lv2,:) - (U(lv2,lv1)./U(lv1,lv1).*U(lv1,:));
        end
    end

end

% turn into standard L matrix
L = L + I;
display(L);
display(U);
end