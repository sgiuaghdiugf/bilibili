// @CustomDialog
// struct CustomDialogExample {
//   controller: CustomDialogController
//   @Link dialogImage: ResourceStr
//
//   build() {
//     Column() {
//       Image(this.dialogImage)
//         .width('100%')
//         .onClick(() => {
//           this.controller.close()
//         })
//
//     }
//     .height('100%')
//     .width('100%')
//     .justifyContent(FlexAlign.Center)
//     .backgroundColor('#000000')
//   }
// }

@Component
export struct BlogCardContent {
  // @State image: ResourceStr = $r('app.media.01')
  private image: ResourceStr = $r('app.media.01')
  private content: ResourceStr
  // dialogController: CustomDialogController = new CustomDialogController({
  //   builder: CustomDialogExample({
  //     dialogImage: $image
  //   }),
  // })

  build() {
    Column() {
      Text(this.content)
        .fontSize(20)
        .margin({ bottom: 15 })
      Image(this.image)
        .width(200)
        .onClick(() => {
          // this.dialogController.open()

        })

    }
    .width('100%')
    .alignItems(HorizontalAlign.Start)
  }
}