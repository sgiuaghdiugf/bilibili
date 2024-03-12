import router from '@ohos.router'
import { Commodity } from '../Class/Commodity'

@Component
struct Tag {
  private title: string

  build() {
    Row() {
      Text(`${this.title}`)
        .fontSize(12)
        .fontColor($r('app.color.pink'))
    }
    .borderRadius(5)
    .border({ width: 1, color: '#000000' })
    .padding(5)
    .backgroundColor('#FFEEF4')

  }
}

@Entry
@Component
struct CommodityDetailPage {
  private commodity: Commodity = router.getParams()['commodity']

  build() {
    Column() {
      Stack() {
        Image(this.commodity.images[0])
          .width('100%')
        Row() {
          Row() {
            Image($r('app.media.commodity_left_arrow'))
              .width(25)
          }
          .borderRadius('50%')
          .backgroundColor("#fdfdfd")

          Row() {
            Image($r('app.media.commodity_repost'))
              .width(25)
          }
          .borderRadius('50%')
          .backgroundColor("#fdfdfd")

        }
        .opacity(0.8)
        .width('100%')
        .borderRadius('50%')
        .justifyContent(FlexAlign.SpaceBetween)
        .position({ x: 0, y: 10 })
        .padding({ left: 10, right: 10 })
      }

      Column({ space: 10 }) {
        Stack() {
          Row() {
            Column() {
              Row() {
                Text("定金￥")
                  .fontSize(14)
                  .fontColor($r('app.color.pink'))
                Text(`${this.commodity.price * 0.15}`)
                  .fontSize(20)
                  .fontColor($r('app.color.pink'))
              }
              .width('100%')

              Row() {
                Row() {
                  Text(`新人卷后￥${this.commodity.countPrice}`)
                    .fontSize(12)
                    .fontColor($r('app.color.pink'))
                  Image($r('app.media.right_arrow_2'))
                    .width(12)
                    .fillColor($r('app.color.pink'))
                }
                // .border({ width: 1, color: Color.Black })
                .backgroundColor('#FFEEF4')

                Text(`原价${this.commodity.price}`)
                  .fontSize(15)
                  .fontColor('#66686C')
                  .decoration({ type: TextDecorationType.LineThrough })
                  .margin({ left: 10 })
              }
              // .border({ width: 1, color: Color.Black })
              .width('100%')
            }
            .width('50%')

            Text("售完为止")
              .fontSize(16)
              .fontColor($r('app.color.pink'))


          }
          .height(70)
          .justifyContent(FlexAlign.SpaceBetween)
          .padding(10)
          .border({ width: 1, color: Color.Black })
          .width('100%')

          Image($r('app.media.BILIBILI'))
            .width(40)
            .position({ x: 200, y: 20 })
            .fillColor('#fff8d8df')
        }

        Row() {
          Row() {
            Tag({ title: "满89减7元" })
            Tag({ title: "满89减7元" })
              .margin({ left: 5, right: 5 })
            Tag({ title: "满89减7元" })
          }


          Row() {
            Text("    领卷")
              .fontSize(12)
              .fontWeight(FontWeight.Bold)
              .fontColor('#FFFFFF')
            Image($r('app.media.right_arrow_2'))
              .width(10)
              .fillColor('#FFFFFF')
          }
          .margin({ right: -20 })

          .width(80)
          .height(20)
          .borderRadius(10)
          .backgroundColor('#FF589A')
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .width('100%')

        Row() {
          Row() {
            Text(this.commodity.detailName)
              .fontSize(16)
              .fontWeight(FontWeight.Bold)

          }
          .width('80%')

          Row() {
            Column() {
              Image($r('app.media.love'))
                .width(30)
              Text("1231人想要")
                .fontSize(12)
            }
          }
          .width('100%')
        }
        .width('100%')


        Row() {
          Row() {
            Row() {
              Image($r('app.media.rank_list'))
                .width(20)
              Text("排行榜")
                .margin({ left: 5 })
                .fontSize(14)
                .fontWeight(FontWeight.Bold)
                .fontColor('#FF922D')
            }
            .backgroundColor('#FFF7E8')
            .borderRadius(10)
            .padding({ top: 5, bottom: 5, left: 10, right: 10 })

            Text(`${this.commodity.tagName}`)
              .fontSize(14)
          }

          Image($r('app.media.right_arrow_2'))
            .fillColor('#CCCCCC')
            .width(20)
        }
        .width('100%')
        .justifyContent(FlexAlign.SpaceBetween)

      }
      .width('100%')
      .padding(10)

    }
    .width('100%')
  }
}