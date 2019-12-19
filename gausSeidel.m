function gausSeidel( A, b, x, iterationsMax, tol )


fileID = fopen('GausSeidelOutput.txt','w');

x=x';
xValues = [ x];

n=size(x,1);
normVal=Inf; 

%% Algorithm: Gauss Seidel Method



%check for divergence
for i = 1:n
    sum = 0;
    for j = 1:i-1
        sum = sum + abs(A(i,j));
    end
    
    for j = i+1:n
       sum = sum + abs(A(i,j));
    end
    if( abs(A(i,i)) < sum)
        fprintf(fileID, 'The Matrix is not strictly diagonally dominant at row %i , it may diverge\n', i);
        break;
    end
 end

 %start the timer  
tic;

%initialize arrays used to print to file

xForFile = [];
errorForFile=[];
timeForFile=[];


%initialize iterator to zero
itr = 0;



while normVal>tol && itr <= iterationsMax
    x_old=x;
    
    for i=1:n %iterate for each x value
        
        sigma=0;
        
        for j=1:i-1  %calculate the new value of x before x
                sigma=sigma+A(i,j)*x(j);
                end
        
        for j=i+1:n   %calculate the new value of x after x
                sigma=sigma+A(i,j)*x_old(j);
        end
        
        if( A(i,i) == 0)
            fprintf(fileID, 'Error Occurred becuase The Diagonal has a value of zero\n');
        end
        x(i)=(1/A(i,i))*(b(i)-sigma); 
    end
    
    itr=itr+1;
 
    normVal=norm(x_old-x);
    toc;
 
    xValues = [xValues x];
    xForFile = [ xForFile; x'];
    timeForFile=[timeForFile; toc];
    errorForFile = [errorForFile; normVal];
    
   
    
end

fprintf(fileID, 'iteration no \t');

for(i=1:n)
    fprintf(fileID, '    x%d \t\t\t', i);
end
fprintf(fileID, 'time \t\t error\n');

sz = length(timeForFile);
for i=1:sz
   fprintf(fileID, '%d\t\t',i); 
   printX( i, xForFile, fileID, n);
   fprintf(fileID, '%.5f\t\t%.5f \n', timeForFile(i),  errorForFile(i) );
end

len = length(xValues);
   
for i = 1:n 
    figure(i);
    plot( xValues(i,:) );
end

    
if( itr == iterationsMax )
    fprintf(fileID, 'the iterations passed the given Maximum iterations, may diverge\n');
end


fprintf( fileID,'x : %f ',x);
end




function printX( i, x_arr_for_file, fileID , n )

for j=1:n
   fprintf( fileID, '%.6f\t\t', x_arr_for_file(i,j)); 
end
end