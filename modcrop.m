function imgs = modcrop(imgs, scale)
%����άͼ���ÿһ��ά�Ȳü���ָ��scale��������
tmpmod=mod(size(imgs,1),scale);
left=fix(tmpmod/2)+1;
right=fix(tmpmod/2)+mod(tmpmod,2);
imgs=imgs(left:size(imgs,1)-right,:,:);
%%
tmpmod=mod(size(imgs,2),scale);
left=fix(tmpmod/2)+1;
right=fix(tmpmod/2)+mod(tmpmod,2);
imgs=imgs(:,left:size(imgs,2)-right,:);
%%
tmpmod=mod(size(imgs,3),scale);
left=fix(tmpmod/2)+1;
right=fix(tmpmod/2)+mod(tmpmod,2);
imgs=imgs(:,:,left:size(imgs,3)-right);


