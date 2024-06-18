## Readme

实现将sql文件中的表格转化为excel表格。目前只支持sql文件中有一个表格。

### 使用方法

在cmd命令行中，输入代码将表格从数据库中导出为sql文件：

```c
mysqldump -u[用户名] -r[密码] [数据库名] --tables [表名] > [路径]
```

例如：

```c
mysqldump -uroot -p123456 test --tables album > F:\album.sql
```

将生成的sql文件保存到工作文件夹的source文件夹中，在main.py文件开头更改文件名、路径名：

```python
'''''''''''''''''''''''''''''''''''''''''''''''
#        在这里更改输入/输出文件名称和路径         #
'''''''''''''''''''''''''''''''''''''''''''''''
sql_file_path = './source/album.sql'    # 替换为您的SQL文件路径
output_file_path = './res/output.xlsx'  # 输出的Excel文件路径
```

执行程序，即可在指定路径中看到生成的表格（默认为工作文件夹下output.xlsx）。

### 可能存在的Bug

若表内容中存在英文逗号，可能会报错。
