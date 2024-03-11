@CustomDialog
struct CustomDialogExample {
  controller: CustomDialogController
  @Link dialogImage: ResourceStr

  build() {
    Column() {
      Image(this.dialogImage)
        .onClick(() => {
          this.controller.close()
        })

    }
  }
}

@Component
export struct BlogCardContent {
  @State image: ResourceStr = $r('app.media.01')
  private content: ResourceStr
  dialogController: CustomDialogController = new CustomDialogController({
    builder: CustomDialogExample({
      dialogImage: $image
    }),
  })

  build() {
    Column() {
      Text(this.content)
        .fontSize(20)
        .margin({ bottom: 15 })
      Image(this.image)
        .width(200)
        .onClick(() => {
          this.dialogController.open()

        })

    }
    .width('100%')
    .alignItems(HorizontalAlign.Start)
  }
}