file = dir('*.png');
len = length(file);

for index = 1:len

    a = imread(file(index).name);
    b = a;
    sft = 5;
    sft_b = 90-sft;
    for i = 1:sft_b
        for j = 1:sft_b
            b(i,j,1) = a(i+sft,j+sft,1);
            b(i,j,2) = a(i+sft,j+sft,2);
            b(i,j,3) = a(i+sft,j+sft,3);
        end
        for j = (sft_b+1):90
            b(i,j,1) = 0;%a(i+sft,j-sft_b,1);
            b(i,j,2) = 0;%a(i+sft,j-sft_b,2);
            b(i,j,3) = 0;%a(i+sft,j-sft_b,3);
        end
    end
    for i = (sft_b+1):90
        for j = 1:sft_b
            b(i,j,1) = a(i-sft_b,j+sft,1);
            b(i,j,2) = a(i-sft_b,j+sft,2);
            b(i,j,3) = a(i-sft_b,j+sft,3);
        end
        for j = (sft_b+1):90
            b(i,j,1) = 0;%a(i-sft_b,j-sft_b,1);
            b(i,j,2) = 0;%a(i-sft_b,j-sft_b,2);
            b(i,j,3) = 0;%a(i-sft_b,j-sft_b,3);
        end
    end

    imwrite(b,file(index).name);

end
