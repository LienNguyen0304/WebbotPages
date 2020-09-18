import requests, bs4

res = requests.get('file:///C:/Users/Eugene/Downloads/%E6%93%8D%E4%BD%9C%E3%83%AD%E3%82%B0.html')
res.raise_for_status()
