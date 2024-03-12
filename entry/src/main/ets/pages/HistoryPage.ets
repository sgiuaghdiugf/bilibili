import { VideoCover } from '../components/VideoCover'
@Builder function Top(){
  Row(){
    Row(){
      Image($r('app.media.history_back'))
        .width(16)
        .margin({right: 20})
      Text('历史记录')
        .fontSize(14)
        .fontColor('#252527')
        .fontWeight(FontWeight.Bold)
    }
    Row(){
      Image($r('app.media.history_search'))
        .width(20)
        .margin({right: 20})
       Text('管理')
         .fontSize(12)
         .fontColor('#9a9ba0')
    }
  }
  .width('100%')
  .justifyContent(FlexAlign.SpaceBetween)
  .padding({top: 30, bottom: 15, left: 20, right: 20})
}

@Entry
@Component
struct HistoryPage {
  titles: string[] = [
    "全部", "视频", "直播" ,"专栏", "游戏", "商品", "展演"
  ]

  build() {
    Column() {
      Top()

      Divider()
        .strokeWidth(2)
        .color('#efefef')

      List(){
        ForEach(this.titles, (title: string, index) => {
          ListItem(){
            if(index == 0){
              Row() {
                Text(title)
                  .fontColor('#eda3be')
                  .fontSize(12)
              }
              .border({radius: 5})
              .padding({ top: 5, bottom: 5, left: 8, right: 8 })
              .backgroundColor('#f1f2f4')
            }else {
              Row() {
                Text(title)
                  .fontSize(12)
              }
              .padding({ top: 5, bottom: 5, left: 8, right: 8 })
            }
          }
        })
      }
      .width('100%')
      .height(50)
      .padding(10)
      .listDirection(Axis.Horizontal)

      List(){
        ListItem(){
          Column(){
            Row(){
              Text('今天')
                .fontSize(12)
                .fontColor('#5a5b5d')
            }
            .width('100%')
            .margin({left: 20})

            VideoCover()
          }
        }
      }
      .layoutWeight(1)

    }
    .height('100%')
    .width('100%')
  }
}