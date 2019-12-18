function [equations,init,method] = readFile(fileID,handles)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

        equations = [];
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
        
        line1=fgetl(fileID);
        line2=fgetl(fileID);
        set(handles.equation1_textBox,'string',line1);
        set(handles.equation2_textBox,'string',line2);
        
        if(numberOfEquations==3)
         line3=fgetl(fileID);
        set(handles.equation3_textBox,'string',line3);
        elseif(numberOfEquations==4)
        line3=fgetl(fileID);
        set(handles.equation3_textBox,'string',line3);
        line4=fgetl(fileID);
        set(handles.equation4_textBox,'string',line4);
        elseif(numberOfEquations==5)
        line3=fgetl(fileID);
        set(handles.equation3_textBox,'string',line3);
        line4=fgetl(fileID);
        set(handles.equation4_textBox,'string',line4); 
        line5=fgetl(fileID);
        set(handles.equation5_textBox,'string',line5);
        end

        if method==4
         data = textscan(fileID,'%s');
         celldisp(data);
         x0=data{1}{1};
         x1=data{1}{2};
         set(handles.init0,'string',x0);
         set(handles.init1,'string',x1);
             if(numberOfEquations==3)
             x2=data{1}{3};
             set(handles.init2,'string',x2);
             elseif(numberOfEquations==4)
             x2=data{1}{3};
             set(handles.init2,'string',x2);
             x3=data{1}{4};
             set(handles.init3,'string',x3);
             elseif(numberOfEquations==5)
             x2=data{1}{3};
             set(handles.init2,'string',x2);
             x3=data{1}{4};
             x4=data{1}{5};
             set(handles.init3,'string',x3);
             set(handles.init4,'string',x4);
             end
             
        end
           
    set(handles.popupmenu1, 'Value', method);

end
