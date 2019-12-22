function gauss_Jordan(a)

  augmented = a;
[m,n]=size(a);
% execution time 
tic
for j=1:m-1
    for z=2:m
        if a(j,j)==0
            t=a(1,:);a(1,:)=a(z,:);
            a(z,:)=t;
        end
    end
    for i=j+1:m
          if(a(j,j)==0)
          f = msgbox('error:division by zero');
          return
          end
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end

for j=m:-1:2
    for i=j-1:-1:1
         if(a(j,j)==0)
          f = msgbox('error:division by zero');
          return
          end
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end

for s=1:m
    if(a(s,s)==0)
      f = msgbox('error:division by zero');
      return
    end
    
    a(s,:)=a(s,:)/a(s,s);
    x(s)=a(s,n);
end
executionTime = toc;
% a
% double(x')
fileID = fopen('Gauss_Jordan_Output.txt','w');

fprintf(fileID,'%4s\r\n','Augmented Matrix ');
%len = length(augmented);
[v,g]=size(augmented);

for i = 1:v
        for j = 1:g
            fprintf(fileID,'%08.10f  ',double(augmented(i,j)));
        end
        fprintf(fileID,'\r\n');   
    end
    fprintf(fileID,'%s\r\n','-------------------------------------------------------------------');
% solution x
[q w] = size(x);
 fprintf(fileID,'%s\r\n','X Solutions');
    for i = 1:q
        fprintf(fileID,'%08.10f\r\n',double(x(i,:)));
    end
    fprintf(fileID,'%s\r\n','-------------------------------------------------------------------');

fprintf(fileID,'%s%f\r\n','Execution time :',executionTime);    
    
    
end