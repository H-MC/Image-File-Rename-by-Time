# 輕鬆的大量更改相片檔名
用一個簡單的小程式來修改大量來自不同相機的相片檔名，讓相片可以依照建立時間來排序，大幅減少整理所帶來的不方便。可以推薦給營隊或有大量相片統整需求的人！

## 困境 Problem
2020年還是大三的時候，當上了某營隊的器材組長，由於我們組內需要負責整整6天營期的拍攝工作，記錄下每個時段、每個活動的影像，作為回顧影片素材或是供小隊員們事後紀念等，每項活動的期間我們幾乎同時出動2-3台相機進行紀錄，因此事後整理所有相片常常是個非常繁雜的工作，以此次營隊來說相片總大小接近***40GB***！

而如此龐大的量造成處理過程中常常會遇到許多困難，例如：
1. 不同相機的相片**起始編碼方式不同**，造成彙整時相片排序可能亂跳。(舉例來說在同個時段中「某相機」拍的照片從**IMG_001**開始，但「另一台相機」可能會從**IMG_501**開始)
2. 因為**檔案過多**，若在電腦內選擇依建立日期排序，常常會非常**耗時**且容易造成電腦當機。
3. 目前Google雲端上並沒有依照原拍攝時間排序的功能，所以當上傳雲端供小隊員瀏覽後很有可能造成**排序混亂**，找相片體驗不佳。

<div align=center>
<img src="https://github.com/H-MC/Image-File-Rename-by-Time/blob/main/Figures/Google%20Drive%20Example.png" width="70%">
</div>

## 解決方案 Solution
因此，若將每張相片檔名更改成各自的**拍攝日期及時間**，能夠解決上述的問題，大大的節省處理成本且得到許多好處：
1. 在任何地方皆能輕易有序的排列好照片，無論電腦本地或Google雲端上。
2. 事後尋找或分類照片能更加方便。
3. 小隊員在瀏覽時也能有更好的體驗。

<div align=center>
<img src="https://github.com/H-MC/Image-File-Rename-by-Time/blob/main/Figures/Change%20Filename%20Example.png" width="40%">
</div>

\
所以在這邊以**Python**及**MATLAB**提供簡單的Function([```renamebytime```](https://github.com/H-MC/Image-File-Rename-by-Time/tree/main/Code))，可以輕鬆的把相片檔名改成拍攝時間，給大家參考。(依照處理檔案多寡，可能會需要數秒至數分鐘不等的時間)

**Python：**
```Python
filepath  = r'D:\...'    # 輸入相片檔案位址
extension = '.jpg'      # 輸入檔案格式 (Default: '.JPG')

# 執行函數
renamebytime(filepath, file_extension=extension)
```

**MATLAB：**
```Matlab
filepath  = 'D:\...';   % 輸入相片檔案位址
extension = '.jpg';     % 輸入檔案格式 (Default: '.JPG')

% 執行函數
renamebytime(filepath, extension)
```

## 結論 Conclusion
以往前幾屆的相片彙整都是所有的資料雜亂無章的分布在資料夾內，且因為資料量太大，光是進入一個資料夾讀取的時間可能就會花上好久，若是要細分每天的上午、下午和晚上時段的相片，絕對是項瑣碎又消耗精神跟視力的工作，有時還會將照片歸錯檔。\
這雖然是個簡單的function，不過實際執行起來很輕鬆的就將相片依照時間分段，也很簡單的就可以細分成每日的早、午、晚資料夾，這樣每個資料夾內的檔案就不會這麼多，更方便整理和尋找特定照片，推薦給營隊或是類似有大量處理照片需求的人！
