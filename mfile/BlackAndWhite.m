file = dir('*.png');
len = length(file);

for index = 1:len

    a = imread(file(index).name);
    b = rgb2gray(a);



    gray_min = min(min(b)); %max gray for pic 
    gray_max = max(max(b));
    for i = 1:90
        for j = 1:90
            if b(i,j) - gray_min <=80
                a(i,j,1) = 0;
                a(i,j,2) = 0;
                a(i,j,3) = 0;
            else
                a(i,j,1) = 255;
                a(i,j,2) = 255;
                a(i,j,3) = 255;
            end
        end
    end

    imwrite(a,file(index).name);

end
