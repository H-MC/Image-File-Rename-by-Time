import os, glob, datetime

def renamebytime(filepath, file_extension='.JPG'):
    cwd = os.getcwd()
    os.chdir(filepath)
    imgs = glob.iglob(f'{filepath}/*{file_extension}')
    
    for img in imgs:
        origin_name = os.path.basename(img)
        
        date = os.path.getmtime(img) #檔案的建立時間
        datetimeObj = datetime.datetime.fromtimestamp(date)
        new_name = datetimeObj.strftime(f'%m%d_%H%M%S{file_extension}')
        
        a = 1
        while os.path.exists(f'{filepath}/{new_name}'):
            new_name = datetimeObj.strftime(f'%m%d_%H%M%S_{a}{file_extension}')
            a = a + 1
            
        os.rename(origin_name, new_name)
    os.chdir(cwd)