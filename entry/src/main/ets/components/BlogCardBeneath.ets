@Component
export struct BlogCardBeneath {
  private likes: number
  private comments: number
  private reposts: number

  build() {
    Row() {
      Row() {
        Image($r('app.media.repost'))
          .width(25)
          .margin({ right: 5 })
        Text(this.reposts.toString())
          .fontSize(16)
          .fontColor('#60666C')
      }

      Row() {
        Image($r('app.media.comment'))
          .width(25)
          .margin({ right: 5 })
        Text(this.comments.toString())
          .fontSize(16)
          .fontColor('#60666C')
      }

      Row() {
        Image($r('app.media.like'))
          .width(25)
          .margin({ right: 5 })
        Text(this.likes.toString())
          .fontSize(16)
          .fontColor('#60666C')
      }

    }
    .width('100%')
    .margin({ top: 10 })
    .justifyContent(FlexAlign.SpaceAround)
  }
}
