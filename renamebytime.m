function renamebytime(file_path, file_extension)
    if nargin == 1
        file_extension = '.JPG';
    end

    nowfolder = [file_path, '\*', file_extension];
    img = dir(nowfolder);
    
    for i = 1:length(img)
        % Get the origin name and create the new name.
        origin_name = img(i).name;
        date = datetime(img(i).date, 'InputFormat', 'dd-MMMM-yyyy HH:mm:ss', 'Locale', 'zh_CN');
        filename = char(datetime(date, 'Format', 'MMdd_HHmmss'));
        new_name = [filename, '.JPG'];
       
        % Check if filename repeats
        a = 1;
        while isfile(new_name)
            new_name = [filename, '_', a, '.JPG'];
            a = a + 1;
        end

        % '!'的意思是调用系统函数，32是ASCII码值，表示空格
        eval(['!rename' 32 origin_name 32 new_name]);

    end
end