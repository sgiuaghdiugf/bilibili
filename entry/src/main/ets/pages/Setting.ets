import reminderAgentManager from '@ohos.reminderAgentManager'
class message{
  title : string
  remark : string

  constructor(title : string , remark? :string) {
    this.title=title
    this.remark=remark
  }
}

@Entry
@Component
struct Setting {
  @State message: string = 'Hello World'

  build() {
   Column(){
     Row(){
       Image($r('app.media.back'))
         .height(20)
         .margin({left:20})
       Text('设置')
         .margin({left: 20})
         .fontSize(18)

     }
     .justifyContent(FlexAlign.Start)
     .alignItems(VerticalAlign.Center)
     .height(60)
     .width('100%')
     .backgroundColor('#FFFFFF')
     Divider()
     .color('#e0e0e0')
      this.part(new message('账号资料'))
   }
    .height('100%')
    .backgroundColor('#f0f1f3')
  }

  @Builder part(m:message){
    Row(){
      Text(m.title)
      Image($r('app.media.img'))
        .height(30)
    }
    .height(40)
  }

}