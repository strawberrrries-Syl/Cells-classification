file = dir('*.png');
len = length(file);
a = '1';
for i = 1:len
    oldname = file(i).name;
    oldnamesplit = strsplit(oldname,'.');


    new = strcat(oldnamesplit(1),'.',oldnamesplit(2),'.',oldnamesplit(3),'.',oldnamesplit(4),a,'.',oldnamesplit(5));
    newname = new{1};
    copyfile(oldname,['../new/' newname]);
end