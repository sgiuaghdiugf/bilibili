import data_rdb from '@ohos.data.rdb' //倒入模块

// 定义存储配置信息
const STORE_CONFIG = {name: "test.db"}
const TAB_USER = "user"
const CREATE_TABLE_CODE = "CREATE TABLE IF NOT EXISTS "+TAB_USER+" (" // 创建表的 SQL 语句
+ "id INTEGER PRIMARY KEY AUTOINCREMENT, " // 定义id字段为主键
+ "name TEXT , " // 定义name字段为文本类型
+ "age TEXT , " // 定义age字段为文本类型
+ "sex TEXT ) " // 定义sex字段为文本类型

// 创建数据表
export function createTable(context) {
  // 获取数据库存储
  data_rdb.getRdbStore(context, STORE_CONFIG, 1, function (err, rdbStore) {
    // 执行创建表的 SQL 语句
    rdbStore.executeSql(CREATE_TABLE_CODE)
    console.info('create table done.') // 输出日志
  })
}

// 创建名为 insertData 的函数，并返回任意类型的值
export function insertData(context, list): any {
  // 通过 data_rdb.getRdbStore 方法获取一个 Promise
  const promise = data_rdb.getRdbStore(context, STORE_CONFIG, 1);
  // 使用 Promise 的 then 方法处理异步操作
  return promise.then(async (rdbStore) => {
    // 初始化一个空数组用于存储数据
    let arr: any = [];
    // 遍历传入的 list 数组
    for (let i: number = 0; i < list.length; i++) {
      // 获取当前元素对象
      const obj = list[i];
      // 根据对象属性创建新的 item 对象
      const item = {
        name: obj.name,
        age: obj.age,
        sex: obj.sex
      };
      // 在 rdbStore 中插入数据
      rdbStore.insert(TAB_USER, item);
    }
    // 返回一个布尔值 true，表示操作成功
    return true;
  });
}

// 创建查询数据分页的函数，返回任意类型，且param 是用于传递查询参数的对象
export function queryDataPage(context, param): any {
  // 获取 RDB Store 的 Promise 对象
  let promise = data_rdb.getRdbStore(context, STORE_CONFIG, 1);

  // 返回 Promise 对象
  return promise.then(async (rdbStore) => {
    // 构建 SQL 查询语句
    const sql: string = "select * from " + TAB_USER + " where name like ? " +
    "order by id asc limit ? OFFSET ?";

    // 获取页面大小和页数
    const pS = param.pageSize;
    const page = param.page;

    // 执行 SQL 查询
    let promisequery = rdbStore.querySql(sql, [param.code, pS, (page - 1) * pS]);

    // 返回查询结果的 Promise 对象。async 关键字用于定义一个返回 Promise 对象的异步函数，可以在函数内部等待Promise对象解决，并且使得函数的执行暂停直到该 Promise 对象完成。
    return promisequery.then(async (resultSet) => {
      // 获取查询结果行数
      const rowCount = resultSet.rowCount;
      let list = [];

      // 遍历查询结果集
      resultSet.goToFirstRow();
      for (let i = 0; i < rowCount; i++) {
        const name = resultSet.getString(resultSet.getColumnIndex("NAME"));
        const age = resultSet.getString(resultSet.getColumnIndex("AGE"));
        const sex = resultSet.getString(resultSet.getColumnIndex("SEX"));
        const id = resultSet.getString(resultSet.getColumnIndex("ID"));
        resultSet.goToNextRow();
        // 构建数据对象
        const data = {
          name,
          id,
          age,
          sex,
        };
        list.push(data);
      }
      // 关闭结果集
      resultSet.close();
      // 返回数据列表
      return list;
    });
  }).catch((err) => {
    console.log("Get RdbStore failed, err: " + err);
  });
}