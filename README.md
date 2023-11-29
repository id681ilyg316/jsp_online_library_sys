## 本项目实现的最终作用是基于JSP实现的图书管理系统
## 分为1个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 书架管理
 - 办证费用管理
 - 图书借阅
 - 图书归还
 - 图书查询
 - 图书管理
 - 图书类型管理
 - 图书续借
 - 管理员登录
 - 管理员管理
 - 系统设置
 - 读者管理
 - 读者类型管理
## 数据库设计如下：
# 数据库设计文档

**数据库名：** online_library_sys

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [tb_bookcase](#tb_bookcase) |  |
| [tb_bookinfo](#tb_bookinfo) |  |
| [tb_booktype](#tb_booktype) |  |
| [tb_borrow](#tb_borrow) |  |
| [tb_giveback](#tb_giveback) |  |
| [tb_library](#tb_library) |  |
| [tb_manager](#tb_manager) |  |
| [tb_parameter](#tb_parameter) |  |
| [tb_publishing](#tb_publishing) |  |
| [tb_purview](#tb_purview) |  |
| [tb_reader](#tb_reader) |  |
| [tb_readertype](#tb_readertype) |  |

**表名：** <a id="tb_bookcase">tb_bookcase</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | NAME |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |

**表名：** <a id="tb_bookinfo">tb_bookinfo</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | barcode |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  2   | bookname |   varchar   | 70 |   0    |    Y     |  N   |   NULL    |   |
|  3   | typeid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  4   | author |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 作者  |
|  5   | translator |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | ISBN |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | price |   float   | 9 |   2    |    Y     |  N   |   NULL    | 价格  |
|  8   | page |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  9   | bookcase |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  10   | inTime |   date   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  11   | operator |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | del |   tinyint   | 4 |   0    |    Y     |  N   |   0    |   |
|  13   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |

**表名：** <a id="tb_booktype">tb_booktype</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | typename |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类型名称  |
|  3   | days |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="tb_borrow">tb_borrow</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | readerid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | bookid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  4   | borrowTime |   date   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  5   | backTime |   date   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  6   | operator |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | ifback |   tinyint   | 4 |   0    |    Y     |  N   |   0    |   |

**表名：** <a id="tb_giveback">tb_giveback</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | readerid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | bookid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  4   | backTime |   date   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  5   | operator |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="tb_library">tb_library</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | libraryname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | curator |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | tel |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  5   | ADDRESS |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  6   | email |   varchar   | 45 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  7   | url |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 网络地址  |
|  8   | createDate |   date   | 10 |   0    |    Y     |  N   |   NULL    | 创建日期  |
|  9   | introduce |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 介绍  |

**表名：** <a id="tb_manager">tb_manager</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | NAME |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  3   | pwd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |

**表名：** <a id="tb_parameter">tb_parameter</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | cost |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  3   | validity |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="tb_publishing">tb_publishing</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | ISBN |   varchar   | 255 |   0    |    N     |  Y   |       | ISBN号  |
|  2   | pubname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 出版社名称  |

**表名：** <a id="tb_purview">tb_purview</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | ID  |
|  2   | sysset |   tinyint   | 4 |   0    |    Y     |  N   |   0    |   |
|  3   | readerset |   tinyint   | 4 |   0    |    Y     |  N   |   0    |   |
|  4   | bookset |   tinyint   | 4 |   0    |    Y     |  N   |   0    |   |
|  5   | borrowback |   tinyint   | 4 |   0    |    Y     |  N   |   0    |   |
|  6   | sysquery |   tinyint   | 4 |   0    |    Y     |  N   |   0    |   |

**表名：** <a id="tb_reader">tb_reader</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  3   | sex |   varchar   | 4 |   0    |    Y     |  N   |   NULL    | 性别  |
|  4   | barcode |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | vocation |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | birthday |   date   | 10 |   0    |    Y     |  N   |   NULL    | 生日  |
|  7   | paperType |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | paperNO |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | tel |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  10   | email |   varchar   | 45 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  11   | createDate |   date   | 10 |   0    |    Y     |  N   |   NULL    | 创建日期  |
|  12   | operator |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | remark |   text   | 65535 |   0    |    Y     |  N   |   NULL    | 标记备注  |
|  14   | typeid |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="tb_readertype">tb_readertype</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名字  |
|  3   | number |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**运行不出来可以微信 javape 我的公众号：源码码头**
