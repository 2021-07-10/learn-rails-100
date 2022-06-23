# Active Record Basics

|本期版本|上期版本 
|:---:|:---:
`Thu Jun 23 10:51:24 CST 2022` |

## 命名约定

* 数据库表名：复数，下划线分隔单词（例如 `book_clubs`）
* 模型类名：单数，每个单词的首字母大写（例如 `BookClub`）

## 模式约定

* 外键：使用 `singularized_table_name_id` 形式命名
* 主键：默认情况下，`Active Record` 使用整数字段 `id` 作为表的主键

**可选字段**

* `created_at`：创建记录时，自动设为当前的日期和时间；
* `updated_at`：更新记录时，自动设为当前的日期和时间；
* `lock_version`：在模型中添加乐观锁；
* `type`：让模型使用单表继承；
* `(association_name)_type`：存储多态关联的类型；
* `(table_name)_count`：缓存所关联对象的数量

## 覆盖命名约定

* `table_name`: 指定表名
* `primary_key`: 指定主键