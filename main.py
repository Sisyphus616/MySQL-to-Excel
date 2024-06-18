import pandas as pd
import re

'''''''''''''''''''''''''''''''''''''''''''''''
#        在这里更改输入/输出文件名称和路径         #
'''''''''''''''''''''''''''''''''''''''''''''''
sql_file_path = './source/album.sql'    # 替换为您的SQL文件路径
output_file_path = './res/output.xlsx'  # 输出的Excel文件路径

# 读取sql文件内容，转化为字符串sql_content
with open(sql_file_path, 'r', encoding='utf-8') as file:
    sql_content = file.read()

# 字符串查找，返回索引
head_index = sql_content.find("CREATE TABLE") + 14
# 获取表名（用``围起来的）
name = ""; i = head_index;
while sql_content[i]!='`':
    name += sql_content[i]
    i += 1

# 取表头内容，转化为字符串
i += 4; num = 1; content_head = ""
while num!=0:
    if sql_content[i]=='(':
        num += 1
    if sql_content[i]==')':
        num -= 1
    content_head += sql_content[i]
    i += 1

# 转化成列表
content_head = content_head.split(',')
content_new_head = []
for i in range(len(content_head)) :
    if content_head[i][0]!=' ' and content_head[i][0]!='\n':
        continue
    if '`' not in content_head[i][0:5]:
        continue
    content_new_head.append(content_head[i])

# 取出表头
head = []
for c in content_new_head:
    c = c.split(' ')
    head.append(c[2][1:-1])

# 找插入信息
con_index = sql_content.find("INSERT INTO") + 22 + len(name)
con_text = "";i = con_index
while sql_content[i]!=';':
    con_text += sql_content[i]
    i += 1
# 得到列表
con_list = con_text.split('),(')
# 删掉冗余括号
con_list[0] = con_list[0][1:-1]+con_list[0][-1]
con_list[-1] = con_list[-1][0:-1]

# 形成二维列表content
content = []
for c in con_list:
    c = c.split(',')
    leng = len(c)
    while leng>6:   # 处理专辑名中有英文逗号的情况😡
        c[0] += c[1]
        del c[1]
        leng -= 1
    for i in range(len(c)):
        if "'" in c[i]:
            c[i] = c[i][1:-1]
    content.append(c)

# 使用 pandas 创建一个 DataFrame  
df = pd.DataFrame(content, columns=head)    
# 将 DataFrame 写入 Excel 文件  
df.to_excel(output_file_path, index=False)  