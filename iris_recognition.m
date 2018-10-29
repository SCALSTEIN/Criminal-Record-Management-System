function file2=iris_recognition(file1) %e.g. 's1/6.bmp';
%% Iris recognition

%% Loading the database into matrix w
w=load_database_iris();

%% Initializations

sl=strfind(file1, '/');                                             % Position of slash
dot=strfind(file1, '.');                                            % Position of dot
ri=(str2double(file1(2:sl-1))-1)*10+str2double(file1(sl+1:dot-1));  % Convert filename to index
r=w(:,ri);                                                          % r contains the image we later on will use to test the algorithm
v=w(:,[1:ri-1 ri+1:end]);                                           % v contains the rest of the 99 images. 

N=20;                                                               % Number of signatures used for each image.
%% Subtracting the mean from v
O=uint8(ones(1,size(v,2))); 
m=uint8(mean(v,2));                 % m is the mean of all images.
vzm=v-uint8(single(m)*single(O));   % vzm is v with the mean removed. 

%% Calculating eignevectors of the correlation matrix
% We are picking N of the 100 eigeniris.
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
%  Now, we run the algorithm and see if we can correctly recognize the iris. 
f=figure;
set(f, 'name', 'Matching the Iris', 'numbertitle', 'off');
subplot(121); 
disp_r=imread(strcat('c', file1(2:sl-1), '\0', file1(sl+1:dot-1), '_L.bmp')); % To display test image
imshow(reshape(disp_r,240,320, 3));title(strcat(file1, ' matches ...'),'FontWeight','bold','Fontsize',16,'color','red');

subplot(122);
p=r-m;                              % Subtract the mean
s=single(p)'*V;
z=[];
cand='';
for i=1:size(v,2)
    z=[z,norm(cv(i,:)-s,2)];
    if(rem(i,20)==0)
        cand=imread(strcat('c', num2str(ceil((i/10))), '\0', '10_L.bmp'));
        imshow(reshape(cand,240,320, 3));
    drawnow;
    end
end

[a,i]=min(z);
subplot(122);

if mod(i,10)>=str2double(file1(sl+1:dot-1)) % test image occurs before matched train data
    i=i+1;
end

subject=num2str(ceil((i/10)));
img_part='';
if mod(i,10)~=0
    img_part=num2str(mod(i,10));
else
    img_part='10';
end

file2=strcat('s', subject, '/', img_part, '.bmp');

disp_match=imread(strcat('c', subject, '\0', img_part, '_L.bmp')); % To store train image

imshow(reshape(disp_match,240,320, 3));title(file2,'FontWeight','bold','Fontsize',16,'color','red');
