file = dir('*.png');
len = length(file);

for index = 1:len
    

    a = imread(file(index).name);
    b = randn(90).*20;
    
    
    for i = 1:90
        for j = 1:90
            a(i,j,1) = a(i,j,1) + b(i,j);
            a(i,j,2) = a(i,j,2) + b(i,j);
            a(i,j,3) = a(i,j,3) + b(i,j);
        end
    end

    imwrite(a,file(index).name);

end
