#!/bin/python3.6

print ('[Create privoxy.config]')

with open('config', 'r') as file:
    filedata = file.read()


with open('config.txt', 'w') as file:
    file.write(filedata)
    with open('checked1old.txt', 'r') as file2:
        for line in file2:
            file.write('Forward / '+line)
