function file2=main_total(file1)                                        % e.g. '109_6.tif';
%% BUILD FINGERPRINT TEMPLATE DATABASE
%build_db(10,8);        %THIS WILL TAKE ABOUT 15 MINUTES
%build_sim();
load('db.mat');
load('sim.mat');

%% EXTRACT FEATURES FROM AN ARBITRARY FINGERPRINT
und=strfind(file1, '_');                                                % Position of underscore
dot=strfind(file1, '.');                                                % Position of dot
ind=(mod(str2double(file1(1:und-1)),100)-1)*8+str2double(file1(und+1)); % Convert filename to index
file1_sub=file1(1:und-1);
file1_img=file1(und+1:dot-1);

%% OFFER MATCHED FINGERPRINTS
[max_ele, ind]=max(S(ind, :));

f=figure;
set(f, 'name', 'Matching the Fingerprint', 'numbertitle', 'off');
subplot(121); 
imshow(strcat('Database\DB1_B\',file1));title(strcat(file1_sub, '\_', file1_img, '.tif matches ...'),'FontWeight','bold','Fontsize',16,'color','red');

file2_sub=num2str(100+fix((ind-1)/8)+1);
file2_img=num2str(mod(ind-1,8)+1);
file2=[file2_sub '_' file2_img '.tif'];

subplot(122);
if (max_ele>0.28);
    imshow(strcat('Database\DB1_B\',file2));title(strcat(file2_sub, '\_', file2_img, '.tif'),'FontWeight','bold','Fontsize',16,'color','red');
else
    imshow(strcat('Database\DB1_B\',file1));title('No match found','FontWeight','bold','Fontsize',16,'color','red');
end
