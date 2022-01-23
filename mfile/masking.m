file = dir('*.png');
len = length(file);

for index = 1:len

    a = imread(file(index).name);
    b = rgb2gray(a);



    gray_min = min(min(b)); %max gray for pic 
    gray_max = max(max(b));
    for i = 1:90
        for j = 1:90
            if b(i,j) - gray_min <=20
                a(i,j,1) = round(double(a(i,j,1)) * 0.7);
                a(i,j,2) = round(double(a(i,j,2)) * 0.7);
                a(i,j,3) = round(double(a(i,j,3)) * 0.7);
            elseif b(i,j) - gray_min <=30
                a(i,j,1) = round(double(a(i,j,1)) * 0.8);
                a(i,j,2) = round(double(a(i,j,2)) * 0.8);
                a(i,j,3) = round(double(a(i,j,3)) * 0.8);
            elseif b(i,j) - gray_min <=60
                a(i,j,1) = round(double(a(i,j,1)) * 0.9);
                a(i,j,2) = round(double(a(i,j,2)) * 0.9);
                a(i,j,3) = round(double(a(i,j,3)) * 0.9);
                
            elseif  gray_max - b(i,j) < 30
                    a(i,j,1) = a(i,j,1);
                    a(i,j,2) = a(i,j,2);
                    a(i,j,3) = a(i,j,3);
            elseif gray_max - b(i,j) < 100
                    a(i,j,1) = round(double(a(i,j,1)) * 1.1);
                    a(i,j,2) = round(double(a(i,j,2)) * 1.1);
                    a(i,j,3) = round(double(a(i,j,3)) * 1.1);
            end
        end
    end

    imwrite(a,file(index).name);

end
