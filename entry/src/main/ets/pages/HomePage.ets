import {BottomBar} from '../components/BottomBar'
import { HotPage } from '../components/HotPage'
import { LivePage } from '../components/LivePage'
import { Recommend } from '../components/Recommend'


@Builder function Top(){
  Column(){
    Row({space: 15}){
      Image($r('app.media.natsume1'))
        .width(35)
        .border({radius: 20})
      Stack(){
        TextInput({placeholder: "我是神里绫华的狗"})
          .backgroundColor(Color.White)
          .height(27)
          .placeholderColor('#ccc')
          .placeholderFont({size: 14})
          .padding({left: 30})
        Image($r('app.media.search'))
          .width(15)
          .position({x: 10, y: 6})
          .fillColor(Color.White)
      }
      .layoutWeight(1)
      Image($r('app.media.home_game'))
        .width(25)
      Image($r('app.media.mail'))
        .width(25)
    }


    List({space: 25}){
      ForEach(this.titles, (title, index) => {
        ListItem(){
          if(this.ids == index){
            Column(){
              Text(title)
                .fontColor(Color.White)
                .fontWeight(FontWeight.Bold)
                .onClick(() => this.ids = index)
              Divider()
                .width(40)
                .height(15)
                .color(Color.White)
                .strokeWidth(5)
            }
          }else{
            Text(title)
              .fontColor(Color.White)
              .onClick(() => this.ids = index)
          }
        }
      })
    }
    .listDirection(Axis.Horizontal)
    .margin({top: 20})
    .height(28)
  }
  .width('100%')
  .height(120)
  .backgroundColor('#FC8BAB')
  .padding({left:10, right: 10})
  .alignItems(HorizontalAlign.Center)
  .justifyContent(FlexAlign.End)
}

@Entry
@Component
struct HomePage {
  titles: string[] = ['直播', '推荐', '热门', '追番', '影视', '游戏']
  @State ids: number = 1

  build() {
    Column() {
      Top()

      if (this.ids === 1) {
        Recommend()
      } else if (this.ids === 2) {
        HotPage()
      } else if (this.ids === 0) {
        LivePage()
      } else {
        Recommend()
      }

      BottomBar({page_index: 0})

    }
    .width('100%')
    .height('100%')
  }
}

