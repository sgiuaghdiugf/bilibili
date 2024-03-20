import router from '@ohos.router'
import {BottomBar} from '../components/BottomBar'
import { HotPage } from '../components/HotPage'
import { LivePage } from '../components/LivePage'
import { Recommend } from '../components/Recommend'
import { VideoCover } from '../components/VideoCover'
import { videoObject } from '../videomodel/VideoObject'

@Entry
@Component
struct HomePage {
  titles: string[] = ['直播', '推荐', '热门', '追番', '影视', '游戏']
  @State ids: number = 1
  @State keyword: string = "我是神里绫华的狗"

  build() {
    Column() {
      Column(){
        Row({space: 15}){
          Image($r('app.media.natsume1'))
            .width(35)
            .border({radius: 20})
          Stack(){
            TextInput({placeholder: this.keyword})
              .backgroundColor(Color.White)
              .height(33)
              .placeholderColor('#ccc')
              .placeholderFont({size: 14})
              .padding({left: 35})
              .onChange(val => {
                this.keyword = val
              })
              .onSubmit(() => {
                // videoObject.search(true)
                router.pushUrl({
                  url: 'pages/SearchPage',
                  params: {
                    keyword: this.keyword
                  }
                }, router.RouterMode.Single)
              })
            Image($r('app.media.search'))
              .width(15)
              .position({x: 10, y: 8})
              .fillColor(Color.White)
          }
          .layoutWeight(1)
          Image($r('app.media.home_game'))
            .width(25)
          Image($r('app.media.mail'))
            .width(25)
        }


        List({space: 23}){
          ForEach(this.titles, (title, index) => {
            ListItem(){
              if(this.ids == index){
                Column(){
                  Text(title)
                    .fontSize(14)
                    .fontColor(Color.White)
                    .fontWeight(FontWeight.Bold)
                    .onClick(() => this.ids = index)
                  Divider()
                    .width(40)
                    .height(23)
                    .color(Color.White)
                    .strokeWidth(3)
                }
              }else{
                Text(title)
                  .fontSize(14)
                  .fontColor(Color.White)
                  .onClick(() => this.ids = index)
              }
            }
          })

          ListItem(){
            Image($r('app.media.home_sort'))
              .width(19)
              .margin({top: -3})
          }
        }
        .listDirection(Axis.Horizontal)
        .margin({top: 20})
        .height(30)
      }
      .width('100%')
      .height(120)
      .backgroundColor('#FC8BAB')
      .padding({left:10, right: 10})
      .alignItems(HorizontalAlign.Center)
      .justifyContent(FlexAlign.End)

      if (this.ids === 1) {
        Recommend({ keyword: this.keyword })
      } else if (this.ids === 2) {
        HotPage()
      } else if (this.ids === 0) {
        LivePage()
      } else {
        Recommend({ keyword: this.keyword })
      }
      BottomBar({page_index: 0})

    }
    .width('100%')
    .height('100%')
  }
}

