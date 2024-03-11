import router from '@ohos.router'

@Component
export struct BlobCardHeader {
  private image: ResourceStr
  private title: string
  private updateTime: string

  build() {
    Row() {
      Stack() {
        Image(this.image)
          .width(40)
          .borderRadius(20)
          .onClick(() => {
            router.pushUrl({ url: "pages/UserDynamicPage",
              params: { title: this.title }
            }, router.RouterMode.Single, (err) => {
              if (err) {
                console.log(err.message)
              }
            })
          })

        Image($r('app.media.float_image'))
          .width(15)
          .position({ x: 26, y: 26 })


      }

      Row() {
        Column() {
          Text(this.title)
            .fontSize(16)
            .fontColor($r('app.color.pink'))
            .fontWeight(FontWeight.Bold)
            .width('80%')
          Text(this.updateTime)
            .fontSize(14)
            .fontColor('#9399A0')
            .width('80%')
        }
      }
      .margin({ left: 15 })

      Image($r('app.media.dynamic_specific'))
        .width(20)
    }
    .margin({ bottom: 20 })
    .width('100%')
  }
}