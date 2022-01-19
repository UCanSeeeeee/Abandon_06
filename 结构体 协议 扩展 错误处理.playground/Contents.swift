// 定义枚举的自描述方法
enum Lang {
    case java
    case python
    case go
    case ruby
    func desc() {
        switch self{
        case .python:
            print("机器学习必备")
        case .java:
            print("老牌经典语言")
        case .go:
            print("并发你是第一")
        default:
            print("很不错的语言")
        }
    }
}
let mylang = Lang.python
mylang.desc()

// 结构体 作为值传递对象
struct LoginForm {
    var username : String
    var password : String
    var id : String
}
let user1 = LoginForm(username: "1", password: "2", id: "3")
print(user1.self)

import Darwin


// 协议 扩展
// 定义一个协议（多数据库产品模式）
protocol IDatebase{
    var dbname:String {get set}
    func exeSql(sql:String) -> Int
    mutating func upgrade(dbname:String)
}

//PostgreSql 类
class PostgreSql:IDatebase{
    var dbname: String = "postgre"
    func exeSql(sql: String) -> Int {
        print("Postgre执行Sql:",sql)
        return 100
    }
    func upgrade(dbname:String)  {
        self.dbname = dbname
    }
}
// MySql
class MySql : IDatebase {
    var dbname: String = "mysql"
    func exeSql(sql: String) -> Int {
        print("MySql执行Sql:",sql)
        return 200
    }
    func upgrade(dbname: String) {
        self.dbname = dbname
    }
}

let db1 = PostgreSql()
var result1 = db1.exeSql(sql:"SELECT * FROM TABLES")
db1.upgrade(dbname: "PostgreSql 12.4")
print(db1.dbname)

let db2 = MySql()
var result2 = db1.exeSql(sql:"DESC TABLES")
db2.upgrade(dbname: "MySql 8.0.21")
print(db2.dbname)

// 拓展
extension PostgreSql {
    func batchExeSql(sql:[String]) -> Int {
        print("批处理Sql",sql)
        return 300
    }
}
let db3 = PostgreSql()
db3.batchExeSql(sql: ["BEGIN TRANSACTION ...","UPDATE TABLE1 SET"])
// 错误处理

// 定义错误枚举
enum DatabaseError: Error {
    case db_error
    case sql_error
    case network_error
}
//定义一个抛例外的方法
func exeSqlCom(sql:String?) throws -> Int {
    if sql == nil {
        throw DatabaseError.sql_error
    }
    return 1
}
// 例外捕捉
do {
    try exeSqlCom(sql: nil)
} catch DatabaseError.sql_error {
    print("sql出错")
} catch {
    print(error)
}
// try?例外捕捉
let db_result = try? exeSqlCom(sql: nil)
print(db_result)
