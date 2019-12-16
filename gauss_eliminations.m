a= [1 1 1 1
    1 1 2 2
    1 2 2 1];
b = [0
    0
    0 ];
% syms x y z w
% %Converting Linear Simultaneous Equations to Matrix form
% eqns=[-x+2*y+2*z-3*w==-1,
%     x+2*z+3*w==1,
%     6*x+2*y+2*z+4*w==1,
%     y+z+4*w==2];
% vars=[ x y z w];
% % a is the matrix of co-efficient
% % b is the matrix of constants
% [a,b]=equationsToMatrix(eqns,vars);
% % m is the row
% % c is the column
[m,c]=size(a);
j=1; %j th column
k=1;%k th row
n=1;% n th pivoting row
z=2;% Row operation always starts from 2
% Forward Elimination
% Shifting Loop for column operation
for i=1:c-1
    %% Partial Pivoting
    [x MErow]=max(abs(a(j:m,i)));
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
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% y is the matrix of the required result
% [m,n]=size(a);
% for j=1:m-1
%     for z=j+1:m
%         if a(j,j)==0
%             t=a(j,:);a(j,:)=a(z,:);
%             a(z,:)=t;
%             t1 = b(j);b(j) = b(z);
%             b(j)=t1;
%         end
%     end
%     for i=j+1:m
%         a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
%         b(i) = b(i) - b(j) * (b(i)/a(j,j));
%     end
% end
% b
% %x=zeros(1,m);
% x(m) = b(m)/a(m,m);
% for s=m-1:1
%     c=0;
%     
%     for k=s+1:m
%         c=c+a(s,k)*x(k);
%         
%     end
%     x(s)= (b(s)-c)/a(s,s);
% end
% disp('Gauss elimination method:');
% x