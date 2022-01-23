file = dir('*.png');
len = length(file);
a = '9';

for index = 1:len
    %oldname = file(index).name;
    %oldnamesplit = strsplit(oldname,'.');
    %new = strcat(oldnamesplit(1),'.',oldnamesplit(2),'.',oldnamesplit(3),'.',oldnamesplit(4),a,'.',oldnamesplit(5));
    %newname = new{1};

    a = imread(file(index).name);

    minr = min(min(a(:,:,1)));
    minb = min(min(a(:,:,2)));
    ming = min(min(a(:,:,3)));
    fc_r = 256/(double(max(max(a(:,:,1)))) - double(minr));
    fc_g = 256/(double(max(max(a(:,:,2)))) - double(minb));
    fc_b = 256/(double(max(max(a(:,:,3)))) - double(ming));

    for i = 1:90
        for j = 1:90
            a(i,j,1) = round((a(i,j,1)-minr) * fc_r);
            a(i,j,2) = round((a(i,j,2)-minb) * fc_g);
            a(i,j,3) = round((a(i,j,3)-ming) * fc_b);
        end
    end
    imwrite(a,file(index).name);

end
