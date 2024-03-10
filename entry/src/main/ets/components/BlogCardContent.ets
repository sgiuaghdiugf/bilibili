@Component
export struct BlogCardContent {
  private image: ResourceStr
  private content: ResourceStr

  build() {
    Column() {
      Text(this.content)
        .fontSize(20)
        .margin({ bottom: 15 })
      Image(this.image)
        .width(200)
    }
    .width('100%')
    .alignItems(HorizontalAlign.Start)
  }
}