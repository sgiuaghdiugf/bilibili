import { video } from './VideoInfo'
import {createTable, insertData, queryDataPage} from "../utils/VideoDb"

// export const videoObjects: video[] = [
//   new video(1, $r('app.media.video_5'), $r('app.media.video_avatar_1'), "2655", "40", "跨越世界的思念【Muv-Luv Alternative】第3期", "恶魔球卡燃", "42:17", '5小时前', "253", "52", "2024年3月10日", "26", 741, 124, 201, 18, "79"),
//   new video(2, $r('app.media.video_8'), $r('app.media.video_avatar_2'), "111.7万", "1171", "麻枝准最新力作《炽焰天穹》首曝PV、 「简中服特别寄语」首公开", "炽焰天穹_HBR", "02:22", "3小时前", "253", "52", "2024年1月20日", "12万", 235322, 12031, 205422, 10023, "23.4万"),
//   new video(3, $r('app.media.video_4'), $r('app.media.video_avatar_3'), "4.5万", "44", "【中日歌词/全曲/MyGO】輪符雨", "Mikoi_", "03:38", "1天前", "253", "52", "2023年12月19日", "26", 2342, 234, 34, 1, "102"),
//   new video(4, $r('app.media.video_7'), $r('app.media.video_avatar_4'), "9847", "53", "从galgame到手游，真的只有无奈与妥协吗[炽焰天穹/红烧天堂]", "放水之刃", "10:36", "3天前", "253", "52", "2022年1月12日", "2", 3423, 87, 201, 3453, "204"),
//   new video(5, $r('app.media.video_6'), $r('app.media.video_avatar_5'), "9683", "103", "那么，请和萤立下约定……请一定也要爱上下一个萤喔", "和纱に嘘をつけない", "03:36", "3月4日", "253", "52", "2024年3月10日", "3", 6546, 846, 201, 32, "103"),
//   new video(6, $r('app.media.video_2'), $r('app.media.video_avatar_6'), "6.4万", "213", "【碧蓝航线】3月14日帝国复刻，3~7月活动时间线梳理，帝国活动船强度分析，还值得抽吗？近半年建造船抽取优先级排序！", "猫姐姐nya", "03:47", "1月3日", "253", "52", "2024年3月1日 12:15", "26", 741, 124, 201, 18, "1万"),
//   new video(7, $r('app.media.video_3'), $r('app.media.video_avatar_7'), "39.4万", "129", "大型纪录片《女婿去丈母娘家》", "阿文纪录片", "01:13", "1周前", "253", "52", "2024年3月2日", "5", 56, 124, 345, 24, "7931"),
//   new video(8, $r('app.media.video_1'), $r('app.media.video_avatar_8'), "43.6万", "799", "广州番禺凌晨吃猪杂，店隔壁就是屠宰场，最新鲜猪杂吃了3斤", "肚子等待大嘴", "04:55", "5天前", "253", "52", "2024年2月27日", "5", 345, 124, 123, 63, "9001"),
// ]
// export let videoObjects: video[]
let videoInfos: video[] = [
  new video(1, 0, 0, "2655", "40", "跨越世界的思念【Muv-Luv Alternative】第3期", "恶魔球卡燃", "42:17", '5小时前', "253", "52", "2024年3月10日", "26", 741, 124, 201, 18, "79"),
  new video(2, 1, 1, "111.7万", "1171", "麻枝准最新力作《炽焰天穹》首曝PV、 「简中服特别寄语」首公开", "炽焰天穹_HBR", "02:22", "3小时前", "253", "52", "2024年1月20日", "12万", 235322, 12031, 205422, 10023, "23.4万"),
  new video(3, 2, 2, "4.5万", "44", "【中日歌词/全曲/MyGO】輪符雨", "Mikoi_", "03:38", "1天前", "253", "52", "2023年12月19日", "26", 2342, 234, 34, 1, "102"),
  new video(4, 3, 3, "9847", "53", "从galgame到手游，真的只有无奈与妥协吗[炽焰天穹/红烧天堂]", "放水之刃", "10:36", "3天前", "253", "52", "2022年1月12日", "2", 3423, 87, 201, 3453, "204"),
  new video(5, 4, 4, "9683", "103", "那么，请和萤立下约定……请一定也要爱上下一个萤喔", "和纱に嘘をつけない", "03:36", "3月4日", "253", "52", "2024年3月10日", "3", 6546, 846, 201, 32, "103"),
  new video(6, 5, 5, "6.4万", "213", "【碧蓝航线】3月14日帝国复刻，3~7月活动时间线梳理，帝国活动船强度分析，还值得抽吗？近半年建造船抽取优先级排序！", "猫姐姐nya", "03:47", "1月3日", "253", "52", "2024年3月1日 12:15", "26", 741, 124, 201, 18, "1万"),
  new video(7, 6, 6, "39.4万", "129", "大型纪录片《女婿去丈母娘家》", "阿文纪录片", "01:13", "1周前", "253", "52", "2024年3月2日", "5", 56, 124, 345, 24, "7931"),
  new video(8, 7, 7, "43.6万", "799", "广州番禺凌晨吃猪杂，店隔壁就是屠宰场，最新鲜猪杂吃了3斤", "肚子等待大嘴", "04:55", "5天前", "253", "52", "2024年2月27日", "5", 345, 124, 123, 63, "9001")
]

class VideoDB{
  videoObjects: video[] = videoInfos
  list:Array<any> = []  // 定义一个名为list的响应式数组，用于存储数据
  keyword:string = ""  // 定义一个名为keyword的响应式字符串，用于存储搜索关键词
  page:number = 1  // 定义一个名为page的响应式数字，表示当前页数，默认为1
  pageSize:number = 20  // 定义一个名为pageSize的响应式数字，表示每页数据条数，默认为20

  init(){
    createTable(getContext(this))
    insertData(getContext(this), videoInfos)
    this.search(true)
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
          // console.log('res',JSON.stringify(data));  // 在控制 台打印返回的数据
          if(this.page == 1){  // 如果当前页数为1
            this.list = data  // 将返回的数据赋值给list
          } else {  // 如果当前页数不为1
            this.list = this.list.concat(data);  // 将返回的数据与已有数据合并，并更新list
          }
          this.videoObjects = this.list
          for(let i = 0; i < this.videoObjects.length; i++){
            console.log(this.videoObjects[i].img.toString())
          }
        }
      })
  }
}

export let videoObject = new VideoDB()
export let videoCover = new VideoDB()
// export let videoObject = videoInfos
// export let videoCover = videoInfos

// @Component
// export struct VideoObject{
//   @State list:Array<any> = []  // 定义一个名为list的响应式数组，用于存储数据
//   @State keyword:string = ""  // 定义一个名为keyword的响应式字符串，用于存储搜索关键词
//   @State page:number = 1  // 定义一个名为page的响应式数字，表示当前页数，默认为1
//   @State pageSize:number = 20  // 定义一个名为pageSize的响应式数字，表示每页数据条数，默认为20
//
//   aboutToAppear(){
//     createTable(getContext(this))
//     // insertData(getContext(this), videoInfos)
//     this.search(true)
//     videoObjects = this.list
//     console.log(videoObjects.length.toString())
//     for(let i = 0; i < videoObjects.length; i++){
//       console.log(videoObjects[i].id.toString())
//     }
//   }
//
//   search(firstPage:boolean){  // 定义名为search的函数，接受一个布尔类型参数firstPage，表示是否为第一页
//     if(firstPage){  // 如果是第一页
//       this.page = 1  // 将当前页数设置为1
//     }
//     const params = {  // 定义一个名为params的常量，存储请求参数
//       code: '%'+this.keyword+'%',  // 将搜索关键词包装成模糊匹配的形式
//       page: this.page,  // 将当前页数作为请求参数
//       pageSize: this.pageSize,  // 将每页数据条数作为请求参数
//     }
//     queryDataPage(getContext(this), params)  // 调用查询数据分页方法，传入上下文和请求参数
//       .then(data=>{  // 异步处理返回的数据
//         if(data){  // 如果返回了数据
//           console.log('res',JSON.stringify(data));  // 在控制 台打印返回的数据
//           if(this.page == 1){  // 如果当前页数为1
//             this.list = data  // 将返回的数据赋值给list
//           } else {  // 如果当前页数不为1
//             this.list = this.list.concat(data);  // 将返回的数据与已有数据合并，并更新list
//           }
//         }
//       })
//   }
//
//
//   build(){}
// }
