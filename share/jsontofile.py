#!/usr/bin/python3.6

import json
data = json.load(open('proxies.txt'))

i=0
with open('somefile1.txt', 'w') as f:
  while i < len(data):
     str1=data[i]["host"]
     str2=str(data[i]["port"])
     str3=str1+":"+str2
#     print(str3)
     f.write(str3+'\n')
     i +=1
