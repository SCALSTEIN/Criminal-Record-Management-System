function out=load_database_iris()
% We load the database the first time we run the program.

persistent loaded;
persistent w;
if(isempty(loaded))
    v=zeros(76800,100); % 76800 = 320 * 240
    for i=1:10 % number of subjects
        cd(strcat('c',num2str(i)));
        for j=1:10
            a=imread(strcat(num2str(j),'.bmp')); % (m*n vector)
            v(:,(i-1)*10+j)=reshape(a,size(a,1)*size(a,2),1);
        end
        cd ..
    end
    w=uint8(v); % Convert to unsigned 8 bit numbers to save memory. 
end
loaded=1;  % Set 'loaded' to avoid loading the database again. 
out=w;