import router from '@ohos.router'
import { VideoCover } from '../components/SearchVideoCover'
import { video } from '../videomodel/VideoInfo'
import { VideoDB } from '../videomodel/VideoObject'
import {queryDataPage} from '../utils/VideoDb'

let imgs: ResourceStr[] = [$r('app.media.video_1'), $r('app.media.video_2'), $r('app.media.video_3'), $r('app.media.video_4'), $r('app.media.video_5'), $r('app.media.video_6'), $r('app.media.video_7'), $r('app.media.video_8')]



@Entry
@Component
struct HomePage {
  @State keyword: string = router.getParams()?.['keyword']
  // videoObjects: video[]
  // list:Array<any> = []  // 定义一个名为list的响应式数组，用于存储数据
  // page:number = 1  // 定义一个名为page的响应式数字，表示当前页数，默认为1
  // pageSize:number = 20  // 定义一个名为pageSize的响应式数字，表示每页数据条数，默认为20
  @State videoDb: VideoDB = new VideoDB()

  aboutToAppear(){
    this.videoDb.keyword = router.getParams()['keyword']
    console.log("***" + this.keyword)
    this.search(true)
  }

  build() {
    Column() {
      Column(){
        Row({space: 15}){
          Image($r('app.media.search_back'))
            .width(30)
            .onClick(() => {
              router.back()
            })
          Stack(){
            TextInput({text: this.videoDb.keyword})
              .backgroundColor(Color.White)
              .height(33)
              .fontColor('#000')
              .fontSize(14)
              .padding({left: 35})
              .onChange(val => {
                this.keyword = val
                this.videoDb.keyword = val
              })
              .onSubmit(() => {
                this.search(true)
              })
            Image($r('app.media.search'))
              .width(15)
              .position({x: 10, y: 8})
              .fillColor(Color.White)
          }
          .layoutWeight(1)
          Text("搜索")
            .fontColor(Color.White)
            .fontSize(16)
            .onClick(() => {
              this.search(true)
            })
        }
      }
      .width('100%')
      .height(50)
      .backgroundColor('#FC8BAB')
      .padding({left:10, right: 10})
      .alignItems(HorizontalAlign.Center)
      .justifyContent(FlexAlign.Center)

      List(){
        ForEach(this.videoDb.videoObjects, (video: video, index) => {
          ListItem(){
            Column(){
              Row(){
                Image(imgs[Number(video.img)])
                  .height(100)
                  .border({radius: 5})
                  .margin({right: 5})

                Column(){
                  Text(video.title)
                    .fontSize(14)
                    .maxLines(2)
                    .textOverflow({overflow: TextOverflow.Ellipsis})
                    .margin({bottom: 5})

                  Row(){
                    if(index % 3 == 0){
                      Text('很多人点赞')
                        .fontSize(12)
                        .fontColor('#ff7244')
                    }else if(index % 3 == 1){
                      Text('很多人分享')
                        .fontSize(12)
                        .fontColor('#ff7244')
                    }
                  }
                  .backgroundColor('#fff1ee')
                  .padding(3)

                  Column(){

                    Row(){
                      Image($r('app.media.video_up_gray'))
                        .width(15)
                        .margin({right: 5})
                      Text(video.up)
                        .fontSize(12)
                        .fontColor('#989da3')
                    }
                    .width('100%')

                    Row(){
                      Row(){
                        Image($r('app.media.video_play_gray'))
                          .width(15)
                          .margin({right: 5})
                        Text(`${video.play}观看·${video.publish}`)
                          .fontSize(12)
                          .fontColor('#989da3')
                      }
                      Image($r('app.media.video_more'))
                        .width(15)
                    }
                    .width('100%')
                    .justifyContent(FlexAlign.SpaceBetween)
                  }
                  .position({y: 60})
                }
                .width('52%')
                .height(90)
                .alignItems(HorizontalAlign.Start)
              }
              .width('100%')
              .margin({top: 10})
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/VideoPage',
                  params: {
                    id: video.id - 1
                  }
                }, router.RouterMode.Standard)
              })

              Divider()
                .opacity(0.3)
                .margin({top: 10})

            }
            .padding({left: 10, right: 10})
          }
        })
      }
      .layoutWeight(1)
    }
    .width('100%')
    .height('100%')
  }

  search(firstPage:boolean){
    // 定义名为search的函数，接受一个布尔类型参数firstPage，表示是否为第一页
    // if(firstPage){  // 如果是第一页
    //   this.page = 1  // 将当前页数设置为1
    // }
    const params = {  // 定义一个名为params的常量，存储请求参数
      code: '%'+this.keyword+'%',  // 将搜索关键词包装成模糊匹配的形式
      // page: this.page,  // 将当前页数作为请求参数
      // pageSize: this.pageSize,  // 将每页数据条数作为请求参数
    }
    queryDataPage(getContext(this), params)  // 调用查询数据分页方法，传入上下文和请求参数
      .then(data=>{  // 异步处理返回的数据
        console.log(data)
        if(data){  // 如果返回了数据
          // console.log('res',JSON.stringify(data));  // 在控制 台打印返回的数据
          // if(this.page == 1){  // 如果当前页数为1
          //   this.list = data  // 将返回的数据赋值给list
          // } else {  // 如果当前页数不为1
          //   this.list = this.list.concat(data);  // 将返回的数据与已有数据合并，并更新list
          // }

          this.videoDb.videoObjects = data
          console.log("12356789  " + this.videoDb.videoObjects.length.toString())
        }
      })
  }
}

