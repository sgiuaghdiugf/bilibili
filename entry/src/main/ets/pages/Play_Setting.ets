import { message } from './Setting'
import { Setting_Top } from './Setting_Top'
@Entry
@Component
struct Express_Message {
  @State List_Message:message[]=[
    new message('自动播放设置'),
    new message('竖屏模式设置'),
    new message('小窗播放/后台播放设置'),
    new message('弹幕设置'),
    new message('其他播放设置'),
  ]

  build() {
    Column(){
      Setting_Top({str:'播放设置'})

      ForEach(this.List_Message,(item:message,index)=>{
        Column() {
          if (index == 0) {
            Row() {
            }
            .width('100%')
            .height(20)
            .backgroundColor('#f0f1f3')
          }
          this.part(item)
        }
      })

    }
    .height('100%')
    .backgroundColor('#f0f1f3')
  }

  @Builder part(m :message){
    Column(){
      Row(){
        Column(){
          Text(m.title)
            .fontSize(15)
        }
        .height('100%')
        .alignItems(HorizontalAlign.Center)
        .justifyContent(FlexAlign.Center)
        Column(){
          Image($r('app.media.right_arrow'))
            .height(10)
        }
      }
      .height(50)
      .width('100%')
      .padding({left:20,right:20})
      .justifyContent(FlexAlign.SpaceBetween)
      .backgroundColor('#FFFFFF')

      Divider()
        .padding({left:20})
        .strokeWidth(1)
        .opacity(0.4)
    }
  }

}

