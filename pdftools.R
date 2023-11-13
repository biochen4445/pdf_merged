library(pdftools)

# 1. split pdf
pdf_subset('./CMUH110-REC3-222_臨床試驗結案_終止_撤案申請書.pdf', #選擇要處理的PDF檔
           pages = c(1,2), # 選擇要保留的頁面
           output = "./tmp.pdf" # 輸出檔案名稱
           )

# 2. combine pdf
pdf_combine(c("./tmp.pdf", #選擇要處理的PDF檔順序一
              "./CMUH110結案申請書_簽名.pdf"), #選擇要處理的PDF檔順序二
            output = "CMUH110-REC3-222_臨床試驗結案_終止_撤案申請書_簽名.pdf" # 輸出檔案名稱
            )

# remove tmp
file.remove("./tmp.pdf")
