file = dir('*.png');
len = length(file);
a = '9';

for index = 1:len

    a = imread(file(index).name);
    b = rgb2gray(a);

    imwrite(b,file(index).name);

end
