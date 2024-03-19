//将../utils/userDb 文件中名为 createTable 的函数导出并使用
import {createTable, insertData, queryDataPage} from './userDb'

@Entry // 标记为入口
@Component // 组件声明
struct User { // 用户结构体

  @State list:Array<any> = []  // 定义一个名为list的响应式数组，用于存储数据
  @State keyword:string = ""  // 定义一个名为keyword的响应式字符串，用于存储搜索关键词
  @State page:number = 1  // 定义一个名为page的响应式数字，表示当前页数，默认为1
  @State pageSize:number = 20  // 定义一个名为pageSize的响应式数字，表示每页数据条数，默认为20

  aboutToAppear() {
    /*生命周期钩子函数，在即将出现时调用，createTable()函数会在组件即将展示时被调用，用于创建数据库表
    this 指向调用该方法的 User 结构体实例。
    User 实例作为参数传递给 getContext 函数，从而获取与该实例相关的上下文信息。 */
    createTable(getContext(this))
    this.addData()
    this.search(true)
    console.log("keyword = " + this.keyword)
    console.log("page = " + this.page)
    console.log("pageSize = " + this.pageSize)
    console.log("list = " + this.list)
  }

  // 定义一个插入的方法
  addData() {
    // 初始化一个空数组 array
    let array = [];
    // 循环生成 20 条数据并添加到 array 数组中
    for (let i = 0; i < 20; i++) {
      array.push({
        name: '机器人' + i,
        age: 1 + i,
        sex: 'men'
      });
    }
    // 调用 insertData 函数，并传入当前上下文和生成的数据数组
    insertData(getContext(this), array)
      .then(res => {
        // 处理 insertData 函数返回的结果
        if (res) {
          // 当操作成功时，设置 loading 为 false
          // this.loading = false;
          // 弹出提示框，显示“添加成功”
          // this.showDialog('添加成功');
          // 调用 search 方法，并传入参数 true,这是一个搜索的方法
          // this.search(true);
        }
      });
  }

  search(firstPage:boolean){  // 定义名为search的函数，接受一个布尔类型参数firstPage，表示是否为第一页
    if(firstPage){  // 如果是第一页
      this.page = 1  // 将当前页数设置为1
    }
    const params = {  // 定义一个名为params的常量，存储请求参数
      code: '%'+this.keyword+'%',  // 将搜索关键词包装成模糊匹配的形式
      page: this.page,  // 将当前页数作为请求参数
      pageSize: this.pageSize,  // 将每页数据条数作为请求参数
    }
    queryDataPage(getContext(this), params)  // 调用查询数据分页方法，传入上下文和请求参数
      .then(data=>{  // 异步处理返回的数据
        if(data){  // 如果返回了数据
          console.log('res',JSON.stringify(data));  // 在控制台打印返回的数据
          if(this.page == 1){  // 如果当前页数为1
            this.list = data  // 将返回的数据赋值给list
          } else {  // 如果当前页数不为1
            this.list = this.list.concat(data);  // 将返回的数据与已有数据合并，并更新list
          }
        }
      })
  }

  build(){

  }
}