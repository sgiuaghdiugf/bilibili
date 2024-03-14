
import router from '@ohos.router'
@Entry
@Component
export struct my_space_head{
  build(){
    Column(){
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
        .margin({ top: -70 })
        .padding(20)
        .justifyContent(FlexAlign.SpaceBetween)
        .width('100%')

        Stack() {
          Image($r('app.media.photo'))
            .width(80)
            .borderRadius(40)
        }
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
                Text("编辑资料")
                  .fontColor('#df8aa7')
                  .fontSize(13)
              }
            }
            .borderColor('#cb809b')
            .borderWidth(1.5)
            .justifyContent(FlexAlign.Center)
            .borderRadius(5)
            .width(200)
            .height(27)
            .backgroundColor('#ffffff')
          }
          .margin({ top: 10 })
          .width('100%')
        }
      }
      .margin({ top: 10, left: '70%' })

      Row() {
        Text("飞翔的荷兰人")
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
    .backgroundColor('#ffffff')
    .width('100%')
    /*Row(){
      Row(){
        Image($r('app.media.sch_fanhui'))
          .width(20)
          .fillColor('#ffffff')

      }
      .margin({left:'2%'})
      .borderRadius(13)
      .justifyContent(FlexAlign.Center)
      .width(30)
      .height(30)
      .backgroundColor('#adb1b4')

      Blank()

      Row(){
        Image($r('app.media.sch_sousuo'))
          .width(20)
          .fillColor('#ffffff')
          .backgroundColor('#adb1b4')
      }
      .margin({right:'3%'})
      .borderRadius(13)
      .justifyContent(FlexAlign.Center)
      .width(30)
      .height(30)
      .backgroundColor('#adb1b4')


      Row(){
        Image($r('app.media.sch_gengduo'))
          .width(20)
          .fillColor('#ffffff')
          .backgroundColor('#adb1b4')
      }
      .margin({right:'3%'})
      .borderRadius(13)
      .justifyContent(FlexAlign.Center)
      .width(30)
      .height(30)
      .backgroundColor('#adb1b4')
    }
    .width('100%')*/
  }
}