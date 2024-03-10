// export class BlogCarHEader {
//   image: ResourceStr
//   title: string
//   updateTime: string
//
//   constructor(image: ResourceStr, title: string, updateTime: string) {
//     this.image = image, this.title = title, this.updateTime = updateTime
//   }
// }

@Component
export struct BlobCardHeader {
  private image: ResourceStr
  private title: string
  private updateTime: string

  build() {
    Row() {
      Image(this.image)
        .width(36)
        .borderRadius(18)

      Row() {
        Column() {
          Text(this.title)
            .fontSize(20)
            .fontColor('#FC8BAB')
            .fontWeight(FontWeight.Bold)
            .width('80%')
          Text(this.updateTime)
            .fontSize(14)
            .fontColor('#9399A0')
            .width('80%')
        }
      }
      .margin({ left: 15})

      Image($r('app.media.dynamic_specific'))
        .width(20)
    }
    .margin({bottom:20})
    .width('100%')
  }
}