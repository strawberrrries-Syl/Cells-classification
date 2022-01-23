file = dir('*.png');
len = length(file);

for index = 1:len

    a = imread(file(index).name);

    for i = 1:90
        for j = 1:90
            if a(i,j,1) > 150 && a(i,j,2) > 150 && a(i,j,3) > 150
                continue;
            elseif a(i,j,1) - a(i,j,2) > a(i,j,2)/4 && a(i,j,1) - a(i,j,3) > a(i,j,3)/4
                a(i,j,1) = a(i,j,1) - round(double(a(i,j,1))/6);
                a(i,j,2) = a(i,j,2) + round(double(a(i,j,1))/3);
                a(i,j,3) = a(i,j,3) + round(double(a(i,j,1))/3);
                %a(i,j,1) = round(double(a(i,j,2)) * 5);
                %a(i,j,2) = round(double(a(i,j,2)) * 4);
                %a(i,j,1) = round(double(a(i,j,2)) * 4);
            end
        end
    end

    imwrite(a,file(index).name);

end
