import router from '@ohos.router'

@Component
export struct UserDynamicHeader {
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
              .onClick(() => {
                router.back()
              })
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

        Stack() {
          Image($r('app.media.bilibili_record'))
            .width(80)
            .borderRadius(40)
          Image($r('app.media.charge'))
            .width(25)
            .borderRadius(40)
            .position({ x: 57, y: 57 })
            .border({ width: 2, color: Color.White })
        }
        .position({ x: 30, y: 120 })

      }

      Column() {
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
            .justifyContent(FlexAlign.End)
            .margin({ right: '10%' })
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
            .justifyContent(FlexAlign.End)
            .margin({ top: 10, right:'10%' })
            .width('100%')
          }
          .margin({ top: 10})
          .width('100%')
        }
        .width('100%')

        Row() {
          Text("哔哩哔哩纪录片")
            .fontSize(16)
            .fontColor('#FF5B9A')
          Image($r('app.media.lv_6'))
            .width(20)
            .fillColor('#FF0000')

          Image($r('app.media.member_ten'))
            .width(100)
          Row() {

          }.width('25%')
        }
        .justifyContent(FlexAlign.SpaceEvenly)
        .width('100%')
        .padding(10)

        Row() {
          Row() {
            Image($r('app.media.charge'))
              .width(20)
              .borderRadius(40)
            Text("bilibili机构认证：哔哩哔哩官方账号")
              .fontSize(12)
              .fontColor('#60666B')
              .margin({ left: 5 })
          }

          Text("详情")
            .fontColor('#0088BF')
            .fontSize(14)
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({ left: 10, right: 20 })
        .margin({ left: 10 })

        Row() {
          Text("莫得感情偶尔咕咕的纪录片")
            .fontSize(12)
            .fontColor('#60666B')
        }
        .width('100%')
        .padding(15)

        Row() {
          Image($r('app.media.ip'))
            .width(15)
            .margin({ right: 2 })
          Text("IP 属地：上海")
            .fontSize(12)
            .fontColor('#60666B')
        }
        .padding({ left: 15 })
        .width('100%')

      }
      .width('100%')

      Row() {
        Row() {
          Text("主页")
            .fontSize(16)
        }
        .padding(10)

        Row() {
          Text("动态")
            .fontSize(16)
            .fontColor($r('app.color.pink'))
        }
        .border({ width: 2, color: $r('app.color.pink') })
        .borderWidth({ left: 0, right: 0, top: 0 })
        .padding(10)

        Row() {
          Text("投稿")
            .fontSize(16)
            .padding(10)
        }
      }
      .height(40)
      .width('100%')
      .justifyContent(FlexAlign.SpaceAround)
      .margin({ top: 20 })
      .border({ width: 1, color: '#E4E5E6' })

    }
    .width('100%')
  }
}