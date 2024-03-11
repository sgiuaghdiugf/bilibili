import router from '@ohos.router'

@Entry
@Component
struct UserDynamicPage {
  // private title: string = router.getParams()['title']

  build() {
    Column() {
      Stack() {
        Image($r('app.media.user_space'))
          .width('100%')
          .height('20%')

        Row() {
          Stack() {
            Row() {
            }
            .width(30)
            .height(30)
            .opacity(0.6)
            .backgroundColor('#ff656e72')
            .borderRadius(15)

            Image($r('app.media.IconamoonArrowLeft2Light'))
              .width(25)
          }

          Row() {
            Stack() {
              Row() {
              }
              .width(30)
              .height(30)
              .opacity(0.6)
              .backgroundColor('#ff656e72')
              .borderRadius(15)

              Image($r('app.media.IconamoonCommentDotsThin'))
                .width(25)
            }

            Stack() {
              Row() {
              }
              .width(30)
              .height(30)
              .opacity(0.6)
              .backgroundColor('#ff656e72')
              .borderRadius(15)

              Image($r('app.media.IonSearchOutline'))
                .width(25)
            }
            .margin({ left: 20, right: 20 })

            Stack() {
              Row() {
              }
              .width(30)
              .height(30)
              .opacity(0.6)
              .backgroundColor('#ff656e72')
              .borderRadius(15)

              Image($r('app.media.space_more'))
                .width(25)
            }
          }
          .justifyContent(FlexAlign.SpaceBetween)

        }
        .margin({ top: -30 })
        .padding(20)
        .justifyContent(FlexAlign.SpaceBetween)
        .width('100%')

        Image($r('app.media.bilibili_record'))
          .width(80)
          .borderRadius(40)
          .position({ x: 30, y: 120 })

      }

      Row() {
        Column() {
          Row() {
            Column() {
              Text("858.6万")
                .fontSize(16)
              Text("粉丝")
                .fontSize(14)
                .fontColor('#ABB0B5')
                .margin({ top: 2 })
            }

            Image($r('app.media.space_divider_vertical'))
              .width(20)

            Column() {

              Text("120")
                .fontSize(16)

              Text("关注")
                .fontSize(14)
                .fontColor('#ABB0B5')
                .margin({ top: 2 })
            }

            Image($r('app.media.space_divider_vertical'))
              .width(20)

            Column() {
              Text("7994.3万")
                .fontSize(16)
              Text("获赞")
                .fontSize(14)
                .fontColor('#ABB0B5')
                .margin({ top: 2 })
            }
          }
          .width('100%')

          Row() {
            Row() {
              Row() {
                Image($r('app.media.FluentLineHorizontal320Regular'))
                  .width(14)
                Text("已关注")
                  .fontColor('#B2B8BC')
                  .fontSize(14)
              }
            }
            .justifyContent(FlexAlign.Center)
            .borderRadius(5)
            .width(150)
            .height(30)
            .backgroundColor('#E3E5E7')

            Row() {
              Image($r('app.media.OcticonChevronDown24'))
                .width(30)
            }
            .backgroundColor('#E3E5E7')
            .borderRadius(5)
            .margin({ left: 10 })

          }
          .margin({ top: 10 })
          .width('100%')
        }

        .margin({ top: 10, left: 150 })
      }

    }
  }
}