for i=1:40
    cd(strcat('s',num2str(i)));
    a=imread('1.pgm');
    imshow(a);
    inp=input('s','s');
    cd ..
end
