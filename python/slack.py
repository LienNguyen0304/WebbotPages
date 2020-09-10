# -*- coding: utf-8 -*-
import requests, json, time

WEB_HOOK_URL = "https://hooks.slack.com/services/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"
time.sleep(51)
requests.post(WEB_HOOK_URL, data = json.dumps({
    'text': u'Notifycation From Python.',  #通知内容
    'username': u'Bakira-Tech-Python-Bot',  #ユーザー名
    'icon_emoji': u':smile_cat:',  #アイコン
    'link_names': 1,  #名前をリンク化
}))
