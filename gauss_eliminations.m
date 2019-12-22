function gauss_eliminations(a,b)

matA = a;
matB = b;
[m,c]=size(a);
j=1; %j th column
k=1;%k th row
n=1;% n th pivoting row
z=2;% Row operation always starts from 2
% Forward Elimination
% Shifting Loop for column operation
tic
for i=1:c-1
    %% Partial Pivoting
    [x MErow]=max(double( (abs(a(j:m,i)) ))) ;
    % x is the hightest element of i th column
    % MErow is the iteration of getting Maximum element
    MErow=MErow+j-1; % Maximum element is in the MErow th row
    a([j MErow],:)=a([MErow j],:);
    b([j MErow],:)=b([MErow j],:);
    %% Making each desired column component zero
for r=z:m
    % Checking if any Lower triangle is Already Zero or not
    if a(r,j)==0
        % If any is zero left the entire row as it is and skip the step
        a(r,:)=a(r,:);b(r,:)=b(r,:);
    else
        b(r,:)=((a(r,j)/a(k,j))*b(n,:))-b(r,:);
        a(r,:)=((a(r,j)/a(k,j))*a(n,:))-a(r,:);
    end 
end
k=k+1;% Changing row after completion of inner loop
n=n+1;% Changing the pivoting row
z=z+1;% Setting a new condition for inner loop
j=j+1;% Changing column after completion of inner loop
end
%% Performing Back Substitution
y=linsolve(a,b)

executionTime = toc;


% writhing to file
fileID = fopen('Gauss_elimination_Output.txt','w');

fprintf(fileID,'%4s\r\n',' Matrix A');
[v,g]=size(matA);

for i = 1:v
        for j = 1:g
            fprintf(fileID,'%08.10f  ',double(matA(i,j)));
        end
        fprintf(fileID,'\r\n');   
    end
    fprintf(fileID,'%s\r\n','-------------------------------------------------------------------');

fprintf(fileID,'%4s\r\n',' Matrix B');
[v,g]=size(matB);

for i = 1:v
        for j = 1:g
            fprintf(fileID,'%08.10f  ',double(matB(i,j)));
        end
        fprintf(fileID,'\r\n');   
    end
    fprintf(fileID,'%s\r\n','-------------------------------------------------------------------');


% solution y
[q w] = size(y);
 fprintf(fileID,'%s\r\n','Solutions');
    for i = 1:q
        fprintf(fileID,'%08.10f\r\n',double(y(i,:)));
    end
    fprintf(fileID,'%s\r\n','-------------------------------------------------------------------');

fprintf(fileID,'%s%f\r\n','Execution time :',executionTime);    









end