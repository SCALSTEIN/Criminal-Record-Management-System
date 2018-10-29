function file2=face_recognition(file1) %e.g. 's1/6.pgm';
%% Face recognition
% This algorithm uses the eigenface system (based on pricipal component
% analysis - PCA) to recognize faces.

%% Loading the database into matrix w
w=load_database_face();

%% Initializations
% We randomly pick an image from our database and use the rest of the
% images for training. Training is done on 99 pictues. We later
% use the randomly selected picture to test the algorithm.

sl=strfind(file1, '/');                                             % Position of slash
dot=strfind(file1, '.');                                            % Position of dot
ri=(str2double(file1(2:sl-1))-1)*10+str2double(file1(sl+1:dot-1));  % Convert filename to index
r=w(:,ri);                                                          % r contains the image we later on will use to test the algorithm
v=w(:,[1:ri-1 ri+1:end]);                                           % v contains the rest of the 99 images. 
label=0;                                                            % keep track of test image position relative to matched train data

N=20;                                                               % Number of signatures used for each image.
%% Subtracting the mean from v
O=uint8(ones(1,size(v,2)));
m=uint8(mean(v,2));                 % m is the mean of all images.
vzm=v-uint8(single(m)*single(O));   % vzm is v with the mean removed. 

%% Calculating eignevectors of the correlation matrix
% We are picking N of the 100 eigenfaces.
L=single(vzm)'*single(vzm);
[V,D]=eig(L);
V=single(vzm)*V;
V=V(:,end:-1:end-(N-1));            % Pick the eigenvectors corresponding to the 20 largest eigenvalues. 


%% Calculating the signature for each image
cv=zeros(size(v,2),N);
for i=1:size(v,2);
    cv(i,:)=single(vzm(:,i))'*V;    % Each row in cv is the signature for one image.
end


%% Recognition 
%  Now, we run the algorithm and see if we can correctly recognize the face. 
f=figure;
set(f, 'name', 'Matching the Face', 'numbertitle', 'off');
subplot(121); 
imshow(reshape(r,112,92));title(strcat(file1, ' matches ...'),'FontWeight','bold','Fontsize',16,'color','red');

subplot(122);
p=r-m;                              % Subtract the mean
s=single(p)'*V;
z=[];
for i=1:size(v,2)
    z=[z,norm(cv(i,:)-s,2)];
    if(rem(i,20)==0), imshow(reshape(v(:,i),112,92)),end;
    drawnow;
end

[a,i]=min(z);
subplot(122);

if mod(i,10)>=str2double(file1(sl+1:dot-1)) % test image occurs before matched train data
    i=i+1;
    label=1;
end

if mod(i,10)~=0
    file2=strcat('s', num2str(ceil((i/10))), '/', num2str(mod(i,10)), '.pgm');
else
    file2=strcat('s', num2str(ceil((i/10))), '/', '10.pgm');
end

if label==1 % test image occurs before matched train data
    imshow(reshape(v(:,i-1),112,92));title(file2,'FontWeight','bold','Fontsize',16,'color','red');
else
    imshow(reshape(v(:,i),112,92));title(file2,'FontWeight','bold','Fontsize',16,'color','red');
end
