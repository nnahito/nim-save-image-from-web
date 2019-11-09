import httpclient
import streams

# ここで、保存したいURLを指定する
let url = "https://nnahito.com/images/nna_chara1.png"

var client = newHttpClient()
var response = client.get(url)

# 画像ファイルの保存
var f = newFileStream("test.png", fmWrite)
f.write(response.body)
f.flush()
