function [equations,init,method] = readFile(fileID)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

        
        equations = {};
        init=[];
        

%         fileID = fopen(file);
        
        numberOfEquations = fscanf(fileID,'%d');
        Line = 1;
        method=0;
        type = fgetl(fileID);
        if(strcmp(type,'Gaussian-elimination'))
            method=1;
        elseif (strcmp(type,'Gauss-Jordan'))
            method=2;
        elseif (strcmp(type,'LU-decomposition'))
            method=3;
        elseif (strcmp(type,'Gauss-Seidel'))
            method=4;
        end
        fprintf('number of equations is %d',numberOfEquations);
        fprintf('method is %s',type);
        fprintf('method number is %d',method);
        
        while ~feof(fileID)
            Line = Line + 1;
            if Line <= numberOfEquations+1
                tline = fgetl(fileID);
                equations{Line-1} = tline;
            else
            for i=1:numberOfEquations
                initialValue= fscanf(fileID,'%d');
                fprintf('initial value is =%d',initialValue);
                init=[init initialValue];
            end
                display(init);
            end        
        end
        display('size is');
        display(size(init));
%         if(method==4)
%             lastString=fgetl(fileID);
%             display(lastString);
% %             for i=1:numberOfEquations
% %                 initalValue= fscanf(fileID,'%d');
% %                 fprintf('initial value is =%d',initialValue);
% %                 init{i}=initialValue;
% %             end
%         end
        fclose(fileID);
%         display(init);
        display(equations);


        %might want to do this , setting the text area with the data found 
      %  set(handles.input_equations_textArea,'String',equations);
   
    
end
