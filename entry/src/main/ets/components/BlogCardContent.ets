import router from '@ohos.router'

@Component
export struct BlogCardContent {
  private image: ResourceStr = $r('app.media.01')
  private content: ResourceStr

  build() {
    Column() {
      Text(this.content)
        .fontSize(18)
        .margin({ bottom: 15 })
      Image(this.image)
        .width(200)
        .onClick(() => {
          router.pushUrl({
            url: "pages/ShowImagePage",
            params: { image: this.image }
          }, router.RouterMode.Single, (err) => {
            console.log(err.message)
            return
          })
        })

    }
    .width('100%')
    .alignItems(HorizontalAlign.Start)
  }
}