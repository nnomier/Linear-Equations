function [X] = LU_solver(A,B)
% Solves system AX = B for X


%B is represented as [a1;a2;a3]
%P is a square matrix 
tic;

% find LU decomposition
[L,U,P] = decompostion(A);


% apply permutations to solution vector
B = P*B;

% initialize Y matrix
Y = zeros(size(L,1),1);
% solve LY = B
for lv1 = 1:size(L,1)
    Y(lv1,1) = Y(lv1,1) + B(lv1,1);
    for lv2 = 1:lv1-1
        Y(lv1,1) = Y(lv1,1) - L(lv1,lv2)*Y(lv2,1);
    end
end

% initialize X matrix
X = zeros(size(U,1),1);
% solve UX = Y for X
X(size(U,1),1) = Y(size(Y,1),1)/U(size(U,1),size(U,1));
for lv1 = size(U,1)-1:-1:1
    % for rightmost element of the row in the rightmost column
    X(lv1,1) = X(lv1,1) + Y(lv1,1)/U(lv1,lv1);
    for lv2 = size(U,1):-1:(lv1+1)
        % fill the row
        X(lv1,1) = X(lv1,1) - (U(lv1,lv2)*X(lv2,1))/U(lv1,lv1);
    end
end
toc;

fileID = fopen('LU_output.txt','w');
[r,c] = size(X);
original = A;
len = length(X);
fprintf(fileID,'%4s\r\n','Matrix A');
  %original matrix
    for i = 1:len
        for j = 1:len
            fprintf(fileID,'%08.10f  ',double(original(i,j)));
        end
        fprintf(fileID,'\r\n');   
    end
    fprintf(fileID,'%s\r\n','-------------------------------------------------------------------');

   % U
    fprintf(fileID,'%4s\r\n','Matrix U');
    for i = 1:len
        for j = 1:len
            fprintf(fileID,'%08.10f  ',double(U(i,j)));
        end
        fprintf(fileID,'\r\n');   
    end
    fprintf(fileID,'%s\r\n','-------------------------------------------------------------------');
    
     
    %L
    fprintf(fileID,'%4s\r\n','Matrix L');
    for i = 1:len
        for j = 1:len
            fprintf(fileID,'%08.10f  ',double(L(i,j)));
        end
        fprintf(fileID,'\r\n');   
    end
    fprintf(fileID,'%s\r\n','-------------------------------------------------------------------');

    %Y solutions
    fprintf(fileID,'%s\r\n','Y Solutions');
    for i = 1:length(X)
        fprintf(fileID,'%08.10f\r\n',double(Y(i,:)));
    end
    fprintf(fileID,'%s\r\n','-------------------------------------------------------------------');

       
    %X solutions
    fprintf(fileID,'%s\r\n','X Solutions');
    for i = 1:length(X)
        fprintf(fileID,'%08.10f\r\n',double(X(i,:)));
    end
        fprintf(fileID,'%s\r\n','-------------------------------------------------------------------');

        fprintf(fileID,'%s%f\r\n','Execution time :',toc);

    fclose(fileID);
    
display(X);
end
