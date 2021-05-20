import gspread
import json
import webbrowser
import time

#ServiceAccountCredentials：Googleの各サービスへアクセスできるservice変数を生成します。
from oauth2client.service_account import ServiceAccountCredentials

#2つのAPIを記述しないとリフレッシュトークンを3600秒毎に発行し続けなければならない
scope = ['https://spreadsheets.google.com/feeds','https://www.googleapis.com/auth/drive']

#認証情報設定
#ダウンロードしたjsonファイル名をクレデンシャル変数に設定（秘密鍵、Pythonファイルから読み込みしやすい位置に置く）
credentials = ServiceAccountCredentials.from_json_keyfile_name('eugene-spreadsheet-test-3164f7225e11.json', scope)

#OAuth2の資格情報を使用してGoogle APIにログインします。
gc = gspread.authorize(credentials)

#共有設定したスプレッドシートキーを変数[SPREADSHEET_KEY]に格納する。
SPREADSHEET_KEY = '13IhRwmb3SXMAf0XF1XOO3COxpltfsCBYqnQX1LoFbVI'

#共有設定したスプレッドシートのシート1を開く
worksheet = gc.open_by_key(SPREADSHEET_KEY).worksheet('Permission_URL')

#A1セルの値を受け取る
#import_value = int(worksheet.acell('A1').value)

#A1セルの値に100加算した値をB1セルに表示させる
#export_value = import_value+100
#worksheet.update_acell('A2', export_value)

#print(worksheet)
#print(import_value)
#print(worksheet.acell('A2').value)

# Save all columns, column data into all_list
#all_list = worksheet.get_all_values()

# Save specifi row into all_row
# all_row = worksheet.row_values(1)

# Save specific col into all_col
# all_col = worksheet.col_values(3)
cell = worksheet.find('URL')
print(cell.row,cell.col)
cell_data = worksheet.col_values(cell.col)
i = 1
for formdata in cell_data:
    if formdata == "URL":
        continue
    print(i, formdata, sep='--')
    i = i + 1
    # webbrowser.open(formdata)
    # time.sleep(15)
