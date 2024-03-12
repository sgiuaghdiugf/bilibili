import router from '@ohos.router'
@Component
export struct Setting_Top{
  str:string
  url:string
  build(){
    Column(){
      Row(){
        Image($r('app.media.back'))
          .height(20)
          .margin({left:20})
          .onClick(()=>{
            router.pushUrl({
              url:this.url
            })
          })
        Text(this.str)
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
    }
  }
}