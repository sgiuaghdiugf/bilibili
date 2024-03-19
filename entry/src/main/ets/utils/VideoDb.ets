import data_rdb from '@ohos.data.rdb' //倒入模块
import { video } from '../videomodel/VideoInfo'

// 定义存储配置信息
const STORE_CONFIG = {name: "video.db"}
const TAB_USER = "video"
const CREATE_TABLE_CODE = "CREATE TABLE IF NOT EXISTS "+TAB_USER+" (" // 创建表的 SQL 语句
+ "id INTEGER PRIMARY KEY AUTOINCREMENT, " // 定义id字段为主键
+ "img TEXT, "
+ "avatar TEXT, "
+ "play TEXT, "
+ "barrage TEXT, "
+ "title TEXT, "
+ "up TEXT, "
+ "long TEXT, "
+ "publish TEXT, "
+ "fansCount TEXT, "
+ "videoCount TEXT, "
+ "time TEXT, "
+ "nowLook TEXT, "
+ "like INTEGER, "
+ "coinCount INTEGER, "
+ "collectCount INTEGER, "
+ "forwardCount INTEGER, "
+ "comment TEXT ) "

// 创建数据表
export function createTable(context) {
  // 获取数据库存储
  data_rdb.getRdbStore(context, STORE_CONFIG, 1, function (err, rdbStore) {
    // 执行创建表的 SQL 语句
    rdbStore.executeSql(CREATE_TABLE_CODE)
    // rdbStore.executeSql("drop table video");
    // console.log('create table done.') // 输出日志
  })
}

// 创建名为 insertData 的函数，并返回任意类型的值
export function insertData(context, list: video[]): any {
  // 通过 data_rdb.getRdbStore 方法获取一个 Promise
  const promise = data_rdb.getRdbStore(context, STORE_CONFIG, 1);
  // 使用 Promise 的 then 方法处理异步操作
  return promise.then(async (rdbStore) => {
    // 遍历传入的 list 数组
    for (let i: number = 0; i < list.length; i++) {
      // 获取当前元素对象
      const obj = list[i];
      // 根据对象属性创建新的 item 对象
      const item = { img: obj.img, avatar: obj.avatar, play: obj.play, barrage: obj.barrage, title: obj.title, up: obj.up, long: obj.long, publish: obj.publish, fansCount: obj.fansCount, videoCount: obj.videoCount, time: obj.time, nowLook: obj.nowLook, like: obj.like, coinCount: obj.coinCount, collectCount: obj.collectCount, forwardCount: obj.forwardCount, comment: obj.comment };
      // 在 rdbStore 中插入数据
      rdbStore.insert(TAB_USER, item, (err, rowId) => {
        if (err) {
          console.error(`${i + 1} ${item.nowLook} Failed to insert data. Code:${err.code}, message:${err.message}`);
          return;
        }
        console.info(`Succeeded in inserting data. rowId:${rowId}`);
      });
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
    const sql: string = "select * from " + TAB_USER + " where title like ? " +
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
        const id = resultSet.getString(resultSet.getColumnIndex("id"));
        const img = resultSet.getString(resultSet.getColumnIndex("img"));
        const avatar = resultSet.getString(resultSet.getColumnIndex("avatar"));
        const play = resultSet.getString(resultSet.getColumnIndex("play"));
        const barrage = resultSet.getString(resultSet.getColumnIndex("barrage"));
        const title = resultSet.getString(resultSet.getColumnIndex("title"));
        const up = resultSet.getString(resultSet.getColumnIndex("up"));
        const long = resultSet.getString(resultSet.getColumnIndex("long"));
        const publish = resultSet.getString(resultSet.getColumnIndex("publish"));
        const fansCount = resultSet.getString(resultSet.getColumnIndex("fansCount"));
        const videoCount = resultSet.getString(resultSet.getColumnIndex("videoCount"));
        const time = resultSet.getString(resultSet.getColumnIndex("time"));
        const nowLook = resultSet.getString(resultSet.getColumnIndex("nowLook"));
        const like = resultSet.getString(resultSet.getColumnIndex("like"));
        const coinCount = resultSet.getString(resultSet.getColumnIndex("coinCount"));
        const collectCount = resultSet.getString(resultSet.getColumnIndex("collectCount"));
        const forwardCount = resultSet.getString(resultSet.getColumnIndex("forwardCount"));
        const comment = resultSet.getString(resultSet.getColumnIndex("comment"));
        resultSet.goToNextRow();
        // 构建数据对象
        const data = {id, img, avatar, play, barrage, title, up, long, publish, fansCount, videoCount, time, nowLook, like, coinCount, collectCount, forwardCount, comment};
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