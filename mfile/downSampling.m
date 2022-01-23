file = dir('*.png');
len = length(file);

for index = 1:len

    a = imread(file(index).name);
    for i = 1:30
        for j = 1:30
            b(i,j,1) = a(3*i,3*j,1);
            b(i,j,2) = a(3*i,3*j,2);
            b(i,j,3) = a(3*i,3*j,3);
        end
    end

    imwrite(b,file(index).name);

end
