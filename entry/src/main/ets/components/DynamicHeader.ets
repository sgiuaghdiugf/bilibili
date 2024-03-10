@Component
export struct DynamicHeader {
  @State title: string = "关注"

  build() {
    Row() {
      Column()
      Text(this.title)
        .fontSize(22)
        .fontColor('#FFFFFF')
        .fontWeight(FontWeight.Bold)
        .margin({ left: 50 })

      Image($r('app.media.edit'))
        .width(20)
        .margin({ right: 20 })
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
    .height(60)
    .backgroundColor('#FC8BAB')
    .padding({ top: 20 })
  }
}