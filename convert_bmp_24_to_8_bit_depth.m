% First convert 10_L.bmp in all folders to 010_L.bmp

%for i=1:10 % number of subjects
 %   cd(strcat('s',num2str(i)));
 cd('s2');
    for j=1:10
        a=imread(strcat('0',num2str(j),'_L.bmp')); % Unlike face (m*n vector), this is an m*n*o vector
        [X,map] = rgb2ind(a, 256);
        imwrite(X,map,strcat(num2str(j),'.bmp'));
        b=imread(strcat(num2str(j),'.bmp')); % Like face (m*n vector)
        disp(size(b));
    end
    cd ..
%end
